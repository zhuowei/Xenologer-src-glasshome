package com.google.glass.home.timeline.active;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.app.GlassActivity;
import com.google.glass.bluetooth.BluetoothHeadset;
import com.google.glass.entity.EntityHelper;
import com.google.glass.entity.MatchEntity;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.ongoing.OngoingActivityManager.ActivityType;
import com.google.glass.phone.PhoneCall;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.timeline.active.ActiveItemView;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.IconProvider;
import com.google.glass.util.ImageProxyBitmapLoadingTask;
import com.google.glass.util.MicrophoneHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.ImageDownloadRequest.CropType;
import com.google.googlex.glass.common.proto.MenuItem.Action;
import com.google.googlex.glass.common.proto.MenuItem.Builder;
import com.google.googlex.glass.common.proto.MenuValue.Builder;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;

public class CallItemView extends ActiveItemView
{
  private static final long CALL_TIMER_CONNECTING_DELAY_MS = 100L;
  private static final long CALL_TIMER_DELAY_MS = 1000L;
  private static final String TAG = CallItemView.class.getSimpleName();
  private long callStartTimeMillis;
  private TextView callStatus;
  private final Handler callTimeHandler = new Handler();
  private Entity callerIdMatch;
  private ImageView callerPhoto;
  private boolean isPhoneNumberLookUpStarted;
  private boolean isSettled;
  private final SafeBroadcastReceiver stateChangeReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return CallItemView.TAG + "/stateChangeReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      String str = paramAnonymousIntent.getAction();
      Log.d(getTag(), "Action received: " + str);
      if ("com.google.glass.action.CALLER_IDENTITY".equals(str))
        CallItemView.this.updateCallerPhoto();
      do
      {
        return;
        if ("com.google.glass.action.REJECT_CALL".equals(str))
        {
          CallItemView.this.stopCallTimer();
          CallItemView.this.callStatus.setText(R.string.phone_call_hanging_up);
          CallItemView.access$302(CallItemView.this, true);
          return;
        }
      }
      while (!"com.google.glass.action.MICROPHONE_STATE_CHANGED".equals(str));
      CallItemView.this.updateMuteUI();
    }
  };
  private final Runnable updateCallTimeRunnable = new Runnable()
  {
    public void run()
    {
      CallItemView.this.updateCallTimer();
    }
  };
  private boolean wasHangUpRequested;

  public CallItemView(Context paramContext)
  {
    super(paramContext, OngoingActivityManager.ActivityType.PHONE_CALL);
  }

  private long calculateElapsedTime()
  {
    return calculateElapsedTime(SystemClock.uptimeMillis());
  }

  private long calculateElapsedTime(long paramLong)
  {
    if (this.callStartTimeMillis <= 0L)
      updateCallStartTime();
    return paramLong - this.callStartTimeMillis;
  }

  private String getFormattedElapsedTime()
  {
    return DateUtils.formatElapsedTime(calculateElapsedTime() / 1000L);
  }

  private void registerStateChangeReceiver()
  {
    this.stateChangeReceiver.register(getContext(), new String[] { "com.google.glass.action.CALLER_IDENTITY", "com.google.glass.action.REJECT_CALL", "com.google.glass.action.MICROPHONE_STATE_CHANGED" });
  }

  private void stopCallTimer()
  {
    this.callTimeHandler.removeCallbacks(this.updateCallTimeRunnable);
  }

  private void unregisterStateChangeReceiver()
  {
    this.stateChangeReceiver.unregister(getContext());
  }

  private void updateCallStartTime()
  {
    this.callStartTimeMillis = BluetoothHeadset.getCallStartTime(getContext());
  }

  private void updateCallTimer()
  {
    long l = 1000L;
    int i = BluetoothHeadset.getCallSetupState(getContext());
    if ((BluetoothHeadset.isInCall(getContext())) || (i == 1))
      this.callStatus.setText(getFormattedElapsedTime());
    while (true)
    {
      this.callTimeHandler.postDelayed(this.updateCallTimeRunnable, l);
      return;
      if ((i == 2) || (i == 3))
      {
        l = 100L;
        this.callStatus.setText(R.string.phone_call_calling);
      }
    }
  }

  private void updateCallerPhoto()
  {
    if (this.isPhoneNumberLookUpStarted);
    String str;
    do
    {
      return;
      str = BluetoothHeadset.getCallerId(getContext());
    }
    while (TextUtils.isEmpty(str));
    this.isPhoneNumberLookUpStarted = true;
    new MatchEntity()
    {
      public void onEntityMatched(Entity paramAnonymousEntity)
      {
        CallItemView.access$802(CallItemView.this, paramAnonymousEntity);
        String str = EntityHelper.getFirstImageUrl(CallItemView.this.callerIdMatch);
        if (!TextUtils.isEmpty(str))
        {
          Log.d(CallItemView.TAG, "Loading user's image.");
          DisplayMetrics localDisplayMetrics = CallItemView.this.getContext().getResources().getDisplayMetrics();
          ImageProxyBitmapLoadingTask local1 = new ImageProxyBitmapLoadingTask(CallItemView.this.getContext(), str, localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels, ImageDownloadRequest.CropType.SMART_CROP)
          {
            protected void bindContent(Bitmap paramAnonymous2Bitmap)
            {
              if (paramAnonymous2Bitmap != null)
              {
                CallItemView.this.callerPhoto.setImageBitmap(paramAnonymous2Bitmap);
                showView(CallItemView.this.callerPhoto, true);
              }
            }

            protected void prepareContent()
            {
              hideView(CallItemView.this.callerPhoto, false, true);
            }
          };
          DeferredContentLoader.loadForScrollItemSubview(jdField_this, local1);
        }
        CallItemView.this.callerPhoto.setVisibility(8);
      }

      public void onNoMatchFound()
      {
        CallItemView.this.callerPhoto.setVisibility(8);
      }
    }
    .addPhoneNumber(str).execute(new Void[0]);
  }

  private void updateMuteUI()
  {
    ImageView localImageView = (ImageView)findViewById(R.id.phone_call_current_action);
    boolean bool = MicrophoneHelper.isMuted(getContext());
    Log.d(TAG, "Updating Mute UI, is muted? " + bool);
    if (bool)
    {
      localImageView.setImageResource(R.drawable.ic_microphone_off_medium);
      return;
    }
    localImageView.setImageResource(R.drawable.ic_phone_in_medium);
  }

  protected void addMenuItems(TimelineItem.Builder paramBuilder)
  {
    super.addMenuItems(paramBuilder);
    paramBuilder.addMenuItemBuilder().setAction(MenuItem.Action.BROADCAST).setBroadcastAction("com.google.glass.action.REJECT_CALL").addValueBuilder().setDisplayName(getContext().getString(R.string.phone_call_menu_end)).setIconUrl(IconProvider.buildDrawableUri(getContext(), R.drawable.ic_phone_hang_medium));
    paramBuilder.addMenuItemBuilder().setAction(MenuItem.Action.MUTE_MIC);
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    if (this.wasHangUpRequested)
    {
      paramGlassActivity.getSoundManager().playSound(SoundManager.SoundId.DISALLOWED_ACTION);
      return true;
    }
    return false;
  }

  public void onLoad()
  {
    registerStateChangeReceiver();
    updateCallTimer();
    updateCallerPhoto();
    updateMuteUI();
  }

  protected void onParametersChanged(Bundle paramBundle)
  {
    Log.d(TAG, "onParametersChanged=" + paramBundle);
    PhoneCall localPhoneCall = PhoneCall.fromBundle(paramBundle);
    if (localPhoneCall != null)
    {
      Log.d(TAG, "Parsing the phone call.");
      if (localPhoneCall.hasError())
      {
        Log.d(TAG, "Call has an error.");
        stopCallTimer();
        this.callStatus.setText(R.string.phone_call_failed);
      }
    }
  }

  public void onRemove()
  {
    super.onRemove();
    Log.d(TAG, "onRemove");
    if (this.isSettled)
    {
      Log.d(TAG, "Phone call is settled, putting screen to sleep.");
      new PowerHelper(getContext()).goToSleep();
    }
    this.callerIdMatch = null;
    this.isPhoneNumberLookUpStarted = false;
  }

  public void onSettled()
  {
    this.isSettled = true;
  }

  public void onUnload()
  {
    stopCallTimer();
    unregisterStateChangeReceiver();
  }

  public void onUnsettled()
  {
    this.isSettled = false;
  }

  protected void onViewInflated()
  {
    this.callStatus = ((TextView)findViewById(R.id.phone_call_status));
    this.callerPhoto = ((ImageView)findViewById(R.id.phone_call_caller_profile_picture));
  }

  public int provideContentView()
  {
    return R.layout.call_item;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.active.CallItemView
 * JD-Core Version:    0.6.2
 */