package com.google.glass.home;

import android.accounts.Account;
import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gcm.GCMRegistrar;
import com.google.glass.app.GlassApplication;
import com.google.glass.companion.Proto.Envelope;
import com.google.glass.home.companion.CompanionService;
import com.google.glass.home.companion.CompanionService.CompanionBinder;
import com.google.glass.home.companion.CompanionService.CompanionListener;
import com.google.glass.home.companion.CompanionService.SimpleCompanionListener;
import com.google.glass.home.companion.CompanionState;
import com.google.glass.home.companion.MessageHandler;
import com.google.glass.home.timeline.TimelineNotificationManager;
import com.google.glass.home.timeline.html.HtmlRenderer;
import com.google.glass.location.GpsBackgroundService;
import com.google.glass.location.LocationService;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.net.SimpleProtoResponseHandler;
import com.google.glass.sync.SyncHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.AuthUtils;
import com.google.glass.util.InetConnectionState;
import com.google.glass.util.InetConnectionState.Listener;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.StorageHelper;
import com.google.glass.util.TimeZoneUtil;
import com.google.googlex.glass.common.proto.C2DMRegistrationResponse;
import com.google.googlex.glass.common.proto.C2DMRegistrationResponse.ResponseCode;
import com.google.googlex.glass.common.proto.ResponseWrapper.ErrorCode;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public class HomeApplication extends GlassApplication
{
  private static final long DEFAULT_RETRY_TIME_MS = TimeUnit.SECONDS.toMillis(5L);
  private static final long MAX_RETRY_DELAY_MS = TimeUnit.MINUTES.toMillis(10L);
  private static final String TAG = HomeApplication.class.getSimpleName();
  private CompanionService companionService;
  private CompanionState companionState = new CompanionState();
  private final CompanionService.CompanionListener locationCompanionListener = new CompanionService.SimpleCompanionListener()
  {
    public void onCompanionConnected(BluetoothDevice paramAnonymousBluetoothDevice)
    {
      if (HomeApplication.this.locationService != null)
        HomeApplication.this.locationService.onCompanionConnected();
      SyncHelper.triggerSync(HomeApplication.this, "com.google.glass.location");
    }

    public void onCompanionDisconnected()
    {
      if (HomeApplication.this.locationService != null)
        HomeApplication.this.locationService.onCompanionDisconnected();
    }
  };
  private LocationService locationService;
  private final SafeBroadcastReceiver retryGcmRegistrationReceiver = new SafeBroadcastReceiver()
  {
    private Handler handler = new Handler(Looper.getMainLooper());
    private Runnable registerGcmRunnable = new Runnable()
    {
      public void run()
      {
        HomeApplication.this.registerGcm();
      }
    };
    private long retryDelayMs = HomeApplication.DEFAULT_RETRY_TIME_MS;

    protected String getTag()
    {
      return HomeApplication.TAG + "/retryGcmRegistrationReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      Log.d(getTag(), "Received intent: " + paramAnonymousIntent);
      if ("retry_gcm_register".equals(paramAnonymousIntent.getAction()))
      {
        if (this.retryDelayMs > HomeApplication.MAX_RETRY_DELAY_MS)
          Log.d(getTag(), "Cancelling GCM retry as we've gone past time limit of " + HomeApplication.MAX_RETRY_DELAY_MS + "ms.");
      }
      else
        return;
      this.handler.removeCallbacks(this.registerGcmRunnable);
      this.handler.postDelayed(this.registerGcmRunnable, this.retryDelayMs);
      this.retryDelayMs = (2L * this.retryDelayMs);
    }
  };
  private final SafeBroadcastReceiver screenOnOffReceiver = new SafeBroadcastReceiver()
  {
    private long lastScreenOnTime = 0L;

    protected String getTag()
    {
      return HomeApplication.TAG + "/screenOnOffReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      Log.d(getTag(), "Received intent: " + paramAnonymousIntent);
      if ("android.intent.action.SCREEN_ON".equals(paramAnonymousIntent.getAction()))
      {
        this.lastScreenOnTime = SystemClock.uptimeMillis();
        HomeApplication.this.getUserEventHelper().log(UserEventAction.SCREEN_ON, null);
      }
      while ((!"android.intent.action.SCREEN_OFF".equals(paramAnonymousIntent.getAction())) || (this.lastScreenOnTime == 0L))
        return;
      long l = SystemClock.uptimeMillis() - this.lastScreenOnTime;
      this.lastScreenOnTime = 0L;
      HomeApplication.this.getUserEventHelper().log(UserEventAction.SCREEN_ON_DURATION, Long.toString(l));
    }
  };
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      Log.d(HomeApplication.TAG, "Connected to " + paramAnonymousComponentName.getShortClassName());
      if (paramAnonymousComponentName.getClassName().equals(LocationService.class.getName()))
        HomeApplication.access$002(HomeApplication.this, LocationService.getRunningInstance());
      while (true)
      {
        HomeApplication.this.onServiceConnected();
        return;
        if (paramAnonymousComponentName.getClassName().equals(CompanionService.class.getName()))
        {
          HomeApplication.access$202(HomeApplication.this, ((CompanionService.CompanionBinder)paramAnonymousIBinder).getService());
          HomeApplication.this.companionState.update(HomeApplication.this.companionService);
        }
      }
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      Log.d(HomeApplication.TAG, "Disconnected from " + paramAnonymousComponentName.getShortClassName());
      if (paramAnonymousComponentName.getClassName().equals(LocationService.class.getName()))
        HomeApplication.access$002(HomeApplication.this, null);
      while (!paramAnonymousComponentName.getClassName().equals(CompanionService.class.getName()))
        return;
      HomeApplication.access$202(HomeApplication.this, null);
      HomeApplication.this.companionState.update(HomeApplication.this.companionService);
    }
  };
  private final SafeBroadcastReceiver setupCompleteReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return HomeApplication.TAG + "/setupCompleteReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      Log.d(getTag(), "Received intent: " + paramAnonymousIntent);
      if ("com.google.glass.setup.ACTION_SETUP_COMPLETE".equals(paramAnonymousIntent.getAction()))
      {
        Account localAccount = new AuthUtils(HomeApplication.this.getApplicationContext()).getGoogleAccount();
        if (localAccount != null)
          HomeApplication.this.onAccountReady(localAccount);
      }
      else
      {
        return;
      }
      Log.w(getTag(), "Received signal that setup was complete, but have no account.");
    }
  };

  private void disableLockscreen()
  {
    try
    {
      Settings.Secure.putLong(getContentResolver(), "lockscreen.disabled", 1L);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      Log.e(TAG, localSecurityException.getMessage(), localSecurityException);
    }
  }

  private void enableConnectivityEstablishedSync(final Account paramAccount)
  {
    getConnectionState().addListener(new InetConnectionState.Listener()
    {
      public void onConnectivityChanged(boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          Log.v(HomeApplication.TAG, "Connectivity established. Requesting sync.");
          Bundle localBundle = new Bundle();
          localBundle.putBoolean("com.google.glass.sync.CONNECTIVITY_ESTABLISHED_SYNC", true);
          SyncHelper.triggerSync(paramAccount, "com.google.glass.timeline", localBundle);
          SyncHelper.triggerSync(paramAccount, "com.google.glass.entity", localBundle);
        }
      }
    });
  }

  private void enablePowerConnectedSync(final Account paramAccount)
  {
    registerReceiver(new SafeBroadcastReceiver()
    {
      protected String getTag()
      {
        return HomeApplication.TAG + "/powerConnectedReceiver";
      }

      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        Log.v(getTag(), "Power connected. Requesting sync.");
        Bundle localBundle = new Bundle();
        localBundle.putBoolean("com.google.glass.sync.POWER_CONNECTED_SYNC", true);
        SyncHelper.triggerSync(paramAccount, "com.google.glass.timeline", localBundle);
        SyncHelper.triggerSync(paramAccount, "com.google.glass.entity", localBundle);
      }
    }
    , new IntentFilter("android.intent.action.ACTION_POWER_CONNECTED"));
  }

  public static HomeApplication from(Context paramContext)
  {
    Context localContext = paramContext.getApplicationContext();
    if ((localContext instanceof HomeApplication))
      return (HomeApplication)localContext;
    throw new IllegalArgumentException("The context must be a child of the HomeApplication context.");
  }

  private void onAccountReady(final Account paramAccount)
  {
    Assert.assertNotNull(paramAccount);
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        Log.v(HomeApplication.TAG, "Enabling sync.");
        SyncHelper.enableSync(paramAccount, "com.google.glass.timeline");
        SyncHelper.enableSync(paramAccount, "com.google.glass.entity");
        SyncHelper.enableSync(paramAccount, "com.google.glass.location");
        SyncHelper.enableSync(paramAccount, "com.google.glass.savedaudio");
        HomeApplication.this.enablePowerConnectedSync(paramAccount);
        HomeApplication.this.enableConnectivityEstablishedSync(paramAccount);
        SyncHelper.triggerSync(HomeApplication.this, "com.google.glass.location");
        SyncHelper.triggerSync(HomeApplication.this, "com.google.glass.entity");
        Log.v(HomeApplication.TAG, "Registering for GCM.");
        HomeApplication.this.retryGcmRegistrationReceiver.register(HomeApplication.this.getApplicationContext(), new String[] { "retry_gcm_register" });
        HomeApplication.this.registerGcm();
      }
    });
  }

  private void onServiceConnected()
  {
    if ((this.companionService != null) && (this.locationService != null))
    {
      this.companionService.addCompanionListener(this.locationCompanionListener);
      this.locationService.setLocationProxy(this.companionService);
    }
  }

  private void registerGcm()
  {
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        Context localContext = HomeApplication.this.getApplicationContext();
        GCMRegistrar.checkDevice(localContext);
        GCMRegistrar.checkManifest(localContext);
        final String str = GCMRegistrar.getRegistrationId(localContext);
        if (TextUtils.isEmpty(str))
        {
          Log.v(HomeApplication.TAG, "Registering for GCM ...");
          GCMRegistrar.register(localContext, new String[] { "229668747847" });
          return;
        }
        Log.v(HomeApplication.TAG, "Already registered for GCM.");
        GCMIntentService.isRegisteredWithGlassServer(HomeApplication.this.getRequestDispatcher(), str, new SimpleProtoResponseHandler()
        {
          public void onError(ResponseWrapper.ErrorCode paramAnonymous2ErrorCode)
          {
            GCMIntentService.registerWithGlassServer(HomeApplication.this, str);
          }

          public void onSuccess(C2DMRegistrationResponse paramAnonymous2C2DMRegistrationResponse)
          {
            if (!C2DMRegistrationResponse.ResponseCode.SUCCESS.equals(paramAnonymous2C2DMRegistrationResponse.getResponseCode()))
              GCMIntentService.registerWithGlassServer(HomeApplication.this, str);
          }
        });
      }
    });
  }

  public CompanionService getCompanionService()
  {
    return this.companionService;
  }

  public CompanionState getCompanionState()
  {
    return this.companionState;
  }

  public boolean isNavigationAllowed()
  {
    return (this.companionState.isConnected()) || (Labs.isEnabled(Labs.Feature.NAV_NO_COMPANION));
  }

  public void onCreate()
  {
    super.onCreate();
    TimeZoneUtil.updateTimeZone(this);
    disableLockscreen();
    AuthUtils localAuthUtils = new AuthUtils(this);
    Account localAccount = localAuthUtils.getGoogleAccount();
    if (localAccount == null)
    {
      Log.w(TAG, "No Google account available. Reverting to setup, NOT rebooting.");
      localAuthUtils.restartSetupProcess(false);
    }
    while (true)
    {
      this.setupCompleteReceiver.register(this, new IntentFilter("com.google.glass.setup.ACTION_SETUP_COMPLETE"));
      if (Labs.isEnabled(Labs.Feature.GPS_IN_BACKGROUND))
        startService(new Intent(this, GpsBackgroundService.class));
      bindService(new Intent(this, LocationService.class), this.serviceConnection, 1);
      bindService(new Intent(this, CompanionService.class), this.serviceConnection, 1);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.SCREEN_ON");
      localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
      this.screenOnOffReceiver.register(this, localIntentFilter);
      TimelineNotificationManager.initialize(this);
      ScreenOffService.initialize(this);
      HtmlRenderer.initialize(this, getBitmapFactory());
      StorageHelper.initializeThresholds(this);
      return;
      onAccountReady(localAccount);
    }
  }

  public boolean registerCompanionHandler(long paramLong, MessageHandler paramMessageHandler)
  {
    CompanionService localCompanionService = this.companionService;
    if (localCompanionService != null)
    {
      localCompanionService.registerCompanionHandler(paramLong, paramMessageHandler);
      return true;
    }
    return false;
  }

  public boolean sendCompanionMessage(Proto.Envelope paramEnvelope)
  {
    CompanionService localCompanionService = this.companionService;
    if (localCompanionService != null)
      return localCompanionService.sendEnvelope(paramEnvelope);
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.HomeApplication
 * JD-Core Version:    0.6.2
 */