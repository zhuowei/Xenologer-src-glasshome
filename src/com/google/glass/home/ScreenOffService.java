package com.google.glass.home;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.speech.tts.UtteranceProgressListener;
import android.util.Log;
import com.google.glass.app.GlassApplication;
import com.google.glass.gesture.HeadGestureUtils;
import com.google.glass.gesture.HeadGestureUtils.HeadGesture;
import com.google.glass.hidden.DonState;
import com.google.glass.home.search.VoiceSearchActivity;
import com.google.glass.home.timeline.ReadTimelineItemAloud;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.ScreenOffGesture;
import com.google.glass.util.SettingsHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.VoiceService;
import com.google.glass.voice.VoiceService.VoiceServiceBinder;
import com.google.glass.voice.VoiceServiceListener;

public class ScreenOffService extends Service
{
  private static final int MSG_END_NOTIFICATION_WINDOW_DETECTOR = 0;
  private static final long NOTIFYING_SOUND_THRESHOLD_MS = 2000L;
  private static final long STANDARD_NOTIFICATION_WINDOW_MS = 5000L;
  private static final String TAG = ScreenOffService.class.getSimpleName();
  private final SafeBroadcastReceiver donStateReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return ScreenOffService.TAG + "/donStateReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      String str = paramAnonymousIntent.getAction();
      if ("com.google.glass.action.DON_STATE".equals(str))
      {
        if ((!DonState.isDonned(paramAnonymousIntent)) && (ScreenOffService.this.isInNotificationWindow))
        {
          Log.d(ScreenOffService.TAG, "DonState switched to doffed inside notification window.  Closing window.");
          ScreenOffService.this.closeNotificationWindow(true);
        }
        return;
      }
      Log.d(ScreenOffService.TAG, "Unknown action received: " + str);
    }
  };
  private boolean isInNotificationWindow;
  private boolean isRegisteredForRLU;
  private boolean isStarted;
  private long lastNotifyingSoundTime = 0L;
  private final Handler notificationWindowHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (paramAnonymousMessage.what == 0)
      {
        Log.d(ScreenOffService.TAG, "Handler is closing notification window.");
        ScreenOffService.this.closeNotificationWindow(true);
      }
    }
  };
  private PowerHelper powerHelper;
  private final SafeBroadcastReceiver screenOffInputReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return ScreenOffService.TAG + "/screenOffInputReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      Log.v(getTag(), "Intent received: " + paramAnonymousIntent);
      String str = paramAnonymousIntent.getAction();
      if ("android.intent.action.ACTION_POWER_CONNECTED".equals(str))
        ScreenOffService.this.soundManager.playSound(SoundManager.SoundId.POWER_CONNECTED);
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if (!DonState.isDonned(ScreenOffService.this.getApplicationContext()))
              {
                Log.d(ScreenOffService.TAG, "Device was not donned, dropping screen off input.");
                return;
              }
              if (!"com.google.glass.LOG_HEAD_GESTURE".equals(str))
                break;
              HeadGestureUtils.HeadGesture localHeadGesture = HeadGestureUtils.getHeadGesture(paramAnonymousIntent);
              Log.d(ScreenOffService.TAG, localHeadGesture.toString() + " was received...");
              switch (ScreenOffService.7.$SwitchMap$com$google$glass$gesture$HeadGestureUtils$HeadGesture[localHeadGesture.ordinal()])
              {
              default:
                Log.d(ScreenOffService.TAG, "... is not handled.");
                return;
              case 1:
                Log.d(ScreenOffService.TAG, "... taking no action.");
                ScreenOffService.this.logScreenOn("7");
                return;
              case 2:
              }
              Log.d(ScreenOffService.TAG, "... checking if we should show notification.");
            }
            while (!ScreenOffService.this.showNotificationIfNeeded("10"));
            ScreenOffService.this.logScreenOn("10");
            return;
          }
          while (!"com.google.glass.action.TOUCH_GESTURE".equals(str));
          switch (ScreenOffService.7.$SwitchMap$com$google$glass$util$ScreenOffGesture[ScreenOffGesture.fromIntent(paramAnonymousIntent).ordinal()])
          {
          default:
            return;
          case 1:
            Log.d(getTag(), "Screen off TAP gesture received.");
            ScreenOffService.this.logScreenOn("9");
          case 2:
          }
        }
        while (!ScreenOffService.this.showNotificationIfNeeded("9"));
        Log.d(getTag(), "We are showing the notification, as such consuming the broadcast!");
        setResultCode(-1);
        abortBroadcast();
        return;
        Log.d(getTag(), "Screen off LONG_TAP gesture received.");
        ScreenOffService.this.logScreenOn("1");
      }
      while ((!Labs.isEnabled(Labs.Feature.LONG_TAP_TO_SEARCH)) || (!LongTapReceiver.maySearchOnLongTap(paramAnonymousContext)));
      Intent localIntent = new Intent(ScreenOffService.this, VoiceSearchActivity.class).putExtra("called_by_press_to_search", false).putExtra("should_play_initial_sound", true).putExtra("trigger_method", 4);
      ScreenOffService.this.startActivity(localIntent);
      setResultCode(-1);
      abortBroadcast();
    }
  };
  private SoundManager soundManager;
  private long timelineItemNotifyTime = 0L;
  private TimelineItemId timelineNotificationBundleItemId = null;
  private TimelineItemId timelineNotificationItemId = null;
  private final SafeBroadcastReceiver timelineUpdatedReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return ScreenOffService.TAG + "/timelineUpdatedReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (!DonState.isDonned(ScreenOffService.this.getApplicationContext()))
      {
        Log.d(ScreenOffService.TAG, "Device was not donned, dropping notification.");
        return;
      }
      if (new SettingsHelper(paramAnonymousContext).isGuestModeEnabled())
      {
        Log.d(ScreenOffService.TAG, "Device is in guest mode. Dropping notification.");
        return;
      }
      if (2000L + ScreenOffService.this.lastNotifyingSoundTime < System.currentTimeMillis())
      {
        if (paramAnonymousIntent.getIntExtra("numNotifications", 1) <= 1)
          break label170;
        Log.d(ScreenOffService.TAG, "Playing multiple notification sound.");
      }
      for (SoundManager.SoundId localSoundId = SoundManager.SoundId.NOTIFICATION_MULTIPLE; ; localSoundId = SoundManager.SoundId.NOTIFICATION)
      {
        ScreenOffService.this.soundManager.playSound(localSoundId);
        ScreenOffService.access$602(ScreenOffService.this, System.currentTimeMillis());
        if (ScreenOffService.this.powerHelper.isScreenOn())
          break;
        Log.d(ScreenOffService.TAG, "Screen is off, checking if we are in a notification window already.");
        TimelineItemId localTimelineItemId1 = (TimelineItemId)paramAnonymousIntent.getSerializableExtra("item_id");
        TimelineItemId localTimelineItemId2 = (TimelineItemId)paramAnonymousIntent.getSerializableExtra("bundle_item_id");
        ScreenOffService.this.openNotificationWindow(localTimelineItemId1, localTimelineItemId2);
        return;
        label170: Log.d(ScreenOffService.TAG, "Playing single notification sound.");
      }
      Log.d(ScreenOffService.TAG, "Screen is on, drop the notification.");
      ScreenOffService.access$902(ScreenOffService.this, 0L);
      ScreenOffService.this.sendBroadcast(new Intent("com.google.glass.ACTION_NOTIFICATION_RECEIVED"));
    }
  };
  private VoiceService.VoiceServiceBinder voiceServiceBinder;
  private final ServiceConnection voiceServiceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      Log.d(ScreenOffService.TAG, "Voice service connected");
      ScreenOffService.access$1102(ScreenOffService.this, (VoiceService.VoiceServiceBinder)paramAnonymousIBinder);
      ScreenOffService.this.voiceServiceListener.onVoiceServiceConnected();
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      Log.d(ScreenOffService.TAG, "Voice service disconnected");
      ScreenOffService.this.voiceServiceListener.onVoiceServiceDisconnected();
      ScreenOffService.this.voiceServiceBinder.setListener(null);
      ScreenOffService.access$1102(ScreenOffService.this, null);
    }
  };
  private final VoiceServiceListener voiceServiceListener = new VoiceServiceListener()
  {
    public void onAudioData(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
    {
    }

    public void onResampledAudioData(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
    {
    }

    public void onVoiceAmplitudeChanged(double paramAnonymousDouble)
    {
    }

    public void onVoiceCommand(VoiceCommand paramAnonymousVoiceCommand)
    {
      Log.d(ScreenOffService.TAG, "Recognized voice command while screen off: " + paramAnonymousVoiceCommand);
      if (paramAnonymousVoiceCommand == VoiceCommand.OK_GLASS)
      {
        HomeApplication.from(ScreenOffService.this).stopSpeaking();
        ScreenOffService.this.scheduleWindowClose(5000L);
        ScreenOffService.this.soundManager.playSound(SoundManager.SoundId.VOICE_PENDING);
        ScreenOffService.this.voiceServiceBinder.setConfig(VoiceConfig.NOTIFICATION, true);
        ScreenOffService.this.logVoiceCommand("1");
        return;
      }
      if (paramAnonymousVoiceCommand == VoiceCommand.READ_ALOUD)
      {
        ScreenOffService.this.notificationWindowHandler.removeMessages(0);
        ScreenOffService.this.voiceServiceBinder.setConfig(VoiceConfig.GUARD, true);
        ScreenOffService.this.logVoiceCommand("9");
        ScreenOffService.this.soundManager.playSound(SoundManager.SoundId.VOICE_COMPLETED);
        UtteranceProgressListener local1 = new UtteranceProgressListener()
        {
          public void onDone(String paramAnonymous2String)
          {
            Log.d(ScreenOffService.TAG, "TTS playback completed, scheduling listening window to close shortly");
            ScreenOffService.this.scheduleWindowClose(5000L);
          }

          public void onError(String paramAnonymous2String)
          {
            Log.d(ScreenOffService.TAG, "Error playing TTS, closing listening window immediately");
            ScreenOffService.this.closeNotificationWindow(true);
          }

          public void onStart(String paramAnonymous2String)
          {
          }
        };
        if (ScreenOffService.this.timelineNotificationBundleItemId != null)
        {
          ReadTimelineItemAloud localReadTimelineItemAloud1 = new ReadTimelineItemAloud(ScreenOffService.this, local1);
          TimelineItemId[] arrayOfTimelineItemId1 = new TimelineItemId[1];
          arrayOfTimelineItemId1[0] = ScreenOffService.this.timelineNotificationBundleItemId;
          localReadTimelineItemAloud1.execute(arrayOfTimelineItemId1);
          return;
        }
        ReadTimelineItemAloud localReadTimelineItemAloud2 = new ReadTimelineItemAloud(ScreenOffService.this, local1);
        TimelineItemId[] arrayOfTimelineItemId2 = new TimelineItemId[1];
        arrayOfTimelineItemId2[0] = ScreenOffService.this.timelineNotificationItemId;
        localReadTimelineItemAloud2.execute(arrayOfTimelineItemId2);
        return;
      }
      if (paramAnonymousVoiceCommand == VoiceCommand.REPLY)
      {
        ScreenOffService.this.notificationWindowHandler.removeMessages(0);
        ScreenOffService.this.voiceServiceBinder.setConfig(VoiceConfig.OFF, true);
        ScreenOffService.this.logVoiceCommand("10");
        ScreenOffService.this.soundManager.playSound(SoundManager.SoundId.VOICE_PENDING);
        Intent localIntent = new Intent("com.google.glass.ACTION_SEND_VOICE_MESSAGE");
        localIntent.putExtra("REPLY_TO_ID", ScreenOffService.this.timelineNotificationItemId.getItemId());
        localIntent.putExtra("should_finish_turn_screen_off", true);
        ScreenOffService.this.startActivity(localIntent);
        return;
      }
      Log.d(ScreenOffService.TAG, "Unknown voice command: " + paramAnonymousVoiceCommand);
    }

    public void onVoiceServiceConnected()
    {
    }

    public void onVoiceServiceDisconnected()
    {
    }
  };

  private void closeNotificationWindow(boolean paramBoolean)
  {
    Log.d(TAG, "Closing notification window.");
    this.isInNotificationWindow = false;
    this.notificationWindowHandler.removeMessages(0);
    setRelativeLookUp(false);
    stopListeningForVoiceCommand(paramBoolean);
  }

  public static void initialize(Context paramContext)
  {
    Log.d(TAG, "Initializing...");
    paramContext.getApplicationContext().startService(new Intent(paramContext, ScreenOffService.class));
  }

  private void logScreenOn(String paramString)
  {
    GlassApplication.from(this).getUserEventHelper().log(UserEventAction.USER_INITIATED_SCREEN_ON, paramString);
  }

  private void logVoiceCommand(String paramString)
  {
    GlassApplication.from(this).getUserEventHelper().log(UserEventAction.VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF, paramString);
  }

  private void openNotificationWindow(TimelineItemId paramTimelineItemId1, TimelineItemId paramTimelineItemId2)
  {
    if (!this.isInNotificationWindow)
      Log.d(TAG, "We are not in an existing notification window, openning a new one.");
    for (boolean bool = true; ; bool = false)
    {
      this.timelineNotificationItemId = paramTimelineItemId1;
      this.timelineNotificationBundleItemId = paramTimelineItemId2;
      this.timelineItemNotifyTime = System.currentTimeMillis();
      setRelativeLookUp(true);
      startListeningForVoiceCommand(bool);
      scheduleWindowClose(5000L);
      this.isInNotificationWindow = true;
      return;
      Log.d(TAG, "We are in an existing notification window, extending the current one.");
    }
  }

  private void scheduleWindowClose(long paramLong)
  {
    this.notificationWindowHandler.removeMessages(0);
    this.notificationWindowHandler.sendEmptyMessageDelayed(0, paramLong);
  }

  private void setRelativeLookUp(boolean paramBoolean)
  {
    if (paramBoolean == this.isRegisteredForRLU)
    {
      String str1 = TAG;
      StringBuilder localStringBuilder = new StringBuilder().append("RLU is already ");
      if (paramBoolean);
      for (String str2 = "enabled"; ; str2 = "disabled")
      {
        Log.w(str1, str2 + ", not sending request to platform.");
        return;
      }
    }
    this.isRegisteredForRLU = paramBoolean;
    HiddenApiHelper.enableHeadGesture(this, HeadGestureUtils.HeadGesture.RELATIVE_LOOK_UP.toString(), paramBoolean);
  }

  private boolean shouldNotify()
  {
    if ((this.timelineNotificationItemId != null) && (5000L + this.timelineItemNotifyTime > System.currentTimeMillis()));
    for (boolean bool = true; ; bool = false)
    {
      Log.d(TAG, "Should Notify: " + bool);
      return bool;
    }
  }

  private boolean showNotificationIfNeeded(String paramString)
  {
    boolean bool1 = shouldNotify();
    boolean bool2 = false;
    if (bool1)
    {
      Log.d(TAG, "Starting TimelineActivity.");
      bool2 = true;
      Bundle localBundle = new Bundle();
      localBundle.putSerializable("item_id", this.timelineNotificationItemId);
      if (this.timelineNotificationBundleItemId != null)
        localBundle.putSerializable("bundle_item_id", this.timelineNotificationBundleItemId);
      localBundle.putBoolean("from_screen_off_notification", true);
      TimelineHelper.goToTimelineWithExtras(this, localBundle);
      closeNotificationWindow(false);
      GlassApplication.from(this).getUserEventHelper().log(UserEventAction.HOME_ACTIVATED, paramString);
    }
    this.timelineNotificationItemId = null;
    this.timelineItemNotifyTime = 0L;
    return bool2;
  }

  private void startListeningForVoiceCommand(boolean paramBoolean)
  {
    Log.d(TAG, "Starting to listen for voice command, resetting config? " + paramBoolean);
    if (this.voiceServiceBinder != null)
    {
      this.voiceServiceBinder.setListener(this.voiceServiceListener);
      if (paramBoolean)
        this.voiceServiceBinder.setConfig(VoiceConfig.NOTIFICATION_GUARD, true);
      return;
    }
    Log.w(TAG, "VoiceServiceBinder was null, cannot start listening for voice commands.");
  }

  private void stopListeningForVoiceCommand(boolean paramBoolean)
  {
    Log.d(TAG, "Stopping listening for voice command, resetting config? " + paramBoolean);
    if (this.voiceServiceBinder != null)
    {
      if (paramBoolean)
        this.voiceServiceBinder.setConfig(VoiceConfig.OFF, true);
      this.voiceServiceBinder.setListener(null);
      return;
    }
    Log.w(TAG, "VoiceServiceBinder was null, cannot stop listening for voice commands.");
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onDestroy()
  {
    Log.d(TAG, "onDestroy called, this should only happen if the system is coming down.");
    this.timelineUpdatedReceiver.unregister(this);
    this.screenOffInputReceiver.unregister(this);
    this.donStateReceiver.unregister(this);
    unbindService(this.voiceServiceConnection);
    super.onDestroy();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (!this.isStarted)
    {
      this.isStarted = true;
      Log.d(TAG, "Starting up.");
      this.powerHelper = new PowerHelper(getApplicationContext());
      this.soundManager = GlassApplication.from(this).getSoundManager();
      this.screenOffInputReceiver.register(this, new String[] { "com.google.glass.LOG_HEAD_GESTURE", "android.intent.action.ACTION_POWER_CONNECTED", "com.google.glass.action.TOUCH_GESTURE" });
      this.timelineUpdatedReceiver.register(this, new String[] { "com.google.glass.action.NOTIFY_TIMELINE_ITEM" });
      this.donStateReceiver.register(this, new String[] { "com.google.glass.action.DON_STATE" });
      Intent localIntent = new Intent(this, VoiceService.class);
      startService(localIntent);
      bindService(localIntent, this.voiceServiceConnection, 1);
      return 1;
    }
    Log.d(TAG, "Already started, ignoring onStartCommand call.");
    return 1;
  }

  public void startActivity(Intent paramIntent)
  {
    paramIntent.addFlags(268435456);
    super.startActivity(paramIntent);
    this.powerHelper.wakeUp();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.ScreenOffService
 * JD-Core Version:    0.6.2
 */