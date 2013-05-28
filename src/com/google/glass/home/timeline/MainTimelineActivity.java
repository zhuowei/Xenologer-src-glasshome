package com.google.glass.home.timeline;

import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import com.google.glass.hidden.BatteryIndicator;
import com.google.glass.hidden.HiddenPowerManager;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.integer;
import com.google.glass.home.R.layout;
import com.google.glass.horizontalscroll.BaseHorizontalScrollView.PositionListener;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.SwipeDirection;
import com.google.glass.logging.UserEventAction;
import com.google.glass.maps.NavigationLauncher;
import com.google.glass.ongoing.OngoingActivityManager.ActivityType;
import com.google.glass.ongoing.OngoingActivityService;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.ScreenOffGesture;
import com.google.glass.util.SettingsHelper;
import com.google.glass.voice.NotificationVoiceCommandHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.FutureTask;

public class MainTimelineActivity extends TimelineActivity
{
  private static final long NO_WAKE_UP_TIME = -1L;
  private final SafeBroadcastReceiver guestModeReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return MainTimelineActivity.this.getTag() + "/guestModeReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if ("com.google.glass.ACTION_GUEST_MODE".equals(paramAnonymousIntent.getAction()))
      {
        boolean bool = paramAnonymousIntent.getBooleanExtra("com.google.glass.EXTRA_GUEST_MODE_ENABLED", false);
        MainTimelineActivity.this.initTimelineView(bool);
      }
    }
  };
  private boolean isBatteryIndicatorShowing;
  private boolean isFromScreenOffNotification = false;
  private boolean isGuestModeEnabled;
  private final SafeBroadcastReceiver notificationReceivedReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return MainTimelineActivity.this.getTag() + "/notificationReceivedReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if ("com.google.glass.ACTION_NOTIFICATION_RECEIVED".equals(paramAnonymousIntent.getAction()))
      {
        Log.d(getTag(), "A notification has been received; updating query parameters.");
        MainTimelineActivity.this.timelineView.updateQueryParameters();
      }
    }
  };
  private NotificationVoiceCommandHelper notificationVoiceHelper;
  private Intent onResumeTask;
  private FutureTask<Void> onTimelineLoadRunnable;
  private PowerHelper power;
  private List<Loader<Cursor>> timelineLoaders;
  private TimelineOverlayView timelineOverlayView;
  private MainTimelineView timelineView;
  private UiPerformanceLog uiPerformanceLog;
  private long wakeUpTimeMillis = -1L;

  private void cancelOnTimelineLoadRunnable()
  {
    if (this.onTimelineLoadRunnable != null)
    {
      if (this.onTimelineLoadRunnable.cancel(false))
        Log.d(getTag(), "Execution of post-load task has been canceled.");
      this.onTimelineLoadRunnable = null;
    }
  }

  private void goToTimeline(Intent paramIntent)
  {
    if (!isFromScreenOffNotification())
    {
      Log.d(getTag(), "isFromScreenOffNotification was false, stopping speaking");
      HomeApplication.from(this).stopSpeaking();
    }
    if ((paramIntent != null) && (paramIntent.hasExtra("item_id")))
    {
      final TimelineItemId localTimelineItemId1;
      if ((paramIntent != null) && (paramIntent.hasExtra("bundle_item_id")))
      {
        localTimelineItemId1 = (TimelineItemId)paramIntent.getSerializableExtra("bundle_item_id");
        if (localTimelineItemId1 != null)
          break label182;
        showTimeline();
      }
      final TimelineItemId localTimelineItemId2;
      while (true)
      {
        localTimelineItemId2 = (TimelineItemId)paramIntent.getSerializableExtra("item_id");
        Log.d(getTag(), "Will try to start at notification: " + localTimelineItemId2);
        if (!this.timelineView.setSelection(localTimelineItemId2, false))
          break label189;
        Log.d(getTag(), "Found the target item.");
        if (localTimelineItemId1 != null)
        {
          Log.d(getTag(), "Opening bundle for item: " + localTimelineItemId1);
          TimelineHelper.goToBundle(this, localTimelineItemId1, isFromScreenOffNotification());
        }
        return;
        localTimelineItemId1 = null;
        break;
        label182: hideTimeline();
      }
      label189: Log.d(getTag(), "Item not yet loaded; will wait for: " + localTimelineItemId2);
      if (localTimelineItemId1 == null)
        hideTimeline();
      cancelOnTimelineLoadRunnable();
      this.onTimelineLoadRunnable = new FutureTask(new Runnable()
      {
        public void run()
        {
          if (localTimelineItemId1 == null)
            MainTimelineActivity.this.showTimeline();
          Log.d(MainTimelineActivity.this.getTag(), "Have new data; will try again to start at notification: " + localTimelineItemId2);
          if (MainTimelineActivity.this.timelineView.setSelection(localTimelineItemId2, false))
            Log.d(MainTimelineActivity.this.getTag(), "Found the target item.");
          while (true)
          {
            if (localTimelineItemId1 != null)
            {
              Log.d(MainTimelineActivity.this.getTag(), "Opening bundle for item: " + localTimelineItemId1);
              TimelineHelper.goToBundle(MainTimelineActivity.this, localTimelineItemId1, MainTimelineActivity.this.isFromScreenOffNotification());
            }
            return;
            Log.e(MainTimelineActivity.this.getTag(), "Notification item not found, going to active item.");
            MainTimelineActivity.this.timelineView.setSelection(MainTimelineActivity.this.timelineView.getMostRelevantActiveItemPosition(), false);
          }
        }
      }
      , null);
      this.timelineView.waitForLoad(localTimelineItemId2, this.onTimelineLoadRunnable);
      return;
    }
    showTimeline();
    ScreenOffGesture localScreenOffGesture = null;
    if (paramIntent != null)
    {
      boolean bool = ScreenOffGesture.hasScreenOffGesture(paramIntent);
      localScreenOffGesture = null;
      if (bool)
      {
        localScreenOffGesture = ScreenOffGesture.fromIntent(paramIntent);
        ScreenOffGesture.clearScreenOffGesture(paramIntent);
      }
    }
    if (OngoingActivityService.isActivityOngoing(OngoingActivityManager.ActivityType.NAVIGATION))
    {
      if (localScreenOffGesture == ScreenOffGesture.SWIPE_LEFT)
      {
        logScreenOnViaSwipe();
        Log.d(getTag(), "Showing first future item after screen-off swipe left during nav.");
        this.timelineView.setSelection(this.timelineView.getFirstFutureItemPosition(), false);
        return;
      }
      if (localScreenOffGesture == ScreenOffGesture.SWIPE_RIGHT)
      {
        logScreenOnViaSwipe();
        Log.d(getTag(), "Showing home screen after screen-off swipe right during nav.");
        this.timelineView.setSelection(this.timelineView.getHomePosition(), false);
        return;
      }
      Log.d(getTag(), "Showing navigation after wake during nav.");
      NavigationLauncher.bringNavigationToForeground(this);
      hideTimeline();
      return;
    }
    if (localScreenOffGesture == ScreenOffGesture.SWIPE_LEFT)
    {
      logScreenOnViaSwipe();
      Log.d(getTag(), "Showing first future item after screen-off swipe left.");
      this.timelineView.setSelection(this.timelineView.getFirstFutureItemPosition(), false);
      return;
    }
    if (localScreenOffGesture == ScreenOffGesture.SWIPE_RIGHT)
    {
      logScreenOnViaSwipe();
      Log.d(getTag(), "Showing first history item after screen-off swipe right.");
      this.timelineView.setSelection(this.timelineView.getFirstHistoryItemPosition(), false);
      return;
    }
    Log.d(getTag(), "Showing most relevant active item after wake.");
    this.timelineView.setSelection(this.timelineView.getMostRelevantActiveItemPosition(), false);
  }

  private void handleIntent(Intent paramIntent)
  {
    if (this.onResumeTask != null)
    {
      Log.w(getTag(), "Saved intent is not null, what the what?");
      return;
    }
    if (paramIntent == null)
    {
      Log.w(getTag(), "Incoming intent was null, what the what?");
      return;
    }
    this.onResumeTask = new Intent(paramIntent);
    cancelOnTimelineLoadRunnable();
  }

  private void hideTimeline()
  {
    this.timelineView.setVisibility(4);
  }

  private void initTimelineView(boolean paramBoolean)
  {
    if ((this.timelineView != null) && (this.isGuestModeEnabled == paramBoolean))
      Log.d(getTag(), "Already in guest mode state: " + paramBoolean);
    boolean bool;
    do
    {
      return;
      this.isGuestModeEnabled = paramBoolean;
      MainTimelineView localMainTimelineView = this.timelineView;
      bool = false;
      if (localMainTimelineView != null)
      {
        bool = this.timelineView.isActivated();
        if (bool)
          this.timelineView.deactivate();
        this.timelineView.setUiPerformanceLog(null);
        this.timelineView.setPositionListener(null);
        this.timelineView.clear();
        this.timelineView = null;
        this.timelineOverlayView = null;
      }
      FrameLayout localFrameLayout = (FrameLayout)getContentView();
      localFrameLayout.removeAllViews();
      stopTimelineLoaders();
      if (paramBoolean)
        Log.d(getTag(), "Showing guest timeline.");
      for (this.timelineView = new GuestTimelineView(getApplicationContext()); ; this.timelineView = new UserTimelineView(getApplicationContext()))
      {
        localFrameLayout.addView(this.timelineView);
        this.timelineOverlayView = new TimelineOverlayView(getApplicationContext(), this.timelineView);
        localFrameLayout.addView(this.timelineOverlayView);
        this.timelineLoaders = this.timelineView.init(this, HomeApplication.from(this).getBitmapFactory());
        this.timelineView.setUiPerformanceLog(this.uiPerformanceLog);
        this.timelineView.setPositionListener(new BaseHorizontalScrollView.PositionListener()
        {
          public void onFocused(int paramAnonymousInt)
          {
          }

          public void onScaleChanged(float paramAnonymousFloat)
          {
            if (MainTimelineActivity.this.timelineOverlayView != null)
              MainTimelineActivity.this.timelineOverlayView.onScaleChanged(paramAnonymousFloat);
          }

          public void onScrollPositionChanged(float paramAnonymousFloat)
          {
            if (MainTimelineActivity.this.timelineOverlayView != null)
              MainTimelineActivity.this.timelineOverlayView.onScrollPositionChanged(paramAnonymousFloat);
          }

          public void onSettled(int paramAnonymousInt)
          {
            if (Labs.isEnabled(Labs.Feature.OK_GLASS_EVERYWHERE))
            {
              MainTimelineActivity.this.setVoiceConfig(VoiceConfig.GUARD);
              return;
            }
            if (!MainTimelineActivity.this.isFromScreenOffNotification())
              MainTimelineActivity.this.setVoiceConfig(MainTimelineActivity.this.timelineView.getCurrentVoiceConfig());
            MainTimelineActivity.this.uiPerformanceLog.stopPerformanceMeasure();
          }

          public void onUnsettled(int paramAnonymousInt)
          {
            MainTimelineActivity.this.setVoiceConfig(VoiceConfig.OFF);
            MainTimelineActivity.this.uiPerformanceLog.startPerformanceMeasure();
          }
        });
        Log.d(getTag(), "Starting " + this.timelineLoaders.size() + " timeline loaders.");
        Iterator localIterator = this.timelineLoaders.iterator();
        while (localIterator.hasNext())
          ((Loader)localIterator.next()).startLoading();
        Log.d(getTag(), "Showing user timeline.");
      }
    }
    while (!bool);
    this.timelineView.activate();
    this.timelineView.setSelection(this.timelineView.getHomePosition(), false);
    showTimeline();
  }

  private boolean isFromScreenOffNotification()
  {
    return this.isFromScreenOffNotification;
  }

  private boolean isLoadingTimeline()
  {
    return (this.onTimelineLoadRunnable != null) && (!this.onTimelineLoadRunnable.isDone());
  }

  private void logScreenOnViaSwipe()
  {
    logUserEvent(UserEventAction.USER_INITIATED_SCREEN_ON, "2");
  }

  private void logWakeUpDelay(long paramLong)
  {
    if (this.wakeUpTimeMillis != -1L)
    {
      long l = paramLong - this.wakeUpTimeMillis;
      logUserEvent(UserEventAction.WAKE_UP_DELAY, Long.toString(l));
      this.wakeUpTimeMillis = -1L;
      return;
    }
    Log.w(getTag(), "No wake up time known.");
  }

  private void setFromScreenOffNotification(boolean paramBoolean)
  {
    Log.d(getTag(), "Setting isFromScreenOffNotification: " + paramBoolean);
    this.isFromScreenOffNotification = paramBoolean;
  }

  private void setWakeUpTime(long paramLong)
  {
    this.wakeUpTimeMillis = paramLong;
  }

  private void showBatteryIndicator(boolean paramBoolean)
  {
    if (paramBoolean != this.isBatteryIndicatorShowing)
    {
      BatteryIndicator.show(this, paramBoolean);
      this.isBatteryIndicatorShowing = paramBoolean;
    }
  }

  private void showTimeline()
  {
    this.timelineView.setAlpha(0.0F);
    this.timelineView.setVisibility(0);
    this.timelineView.animate().alpha(1.0F).setDuration(getResources().getInteger(R.integer.show_timeline_fade_duration_ms)).start();
    logWakeUpDelay(SystemClock.uptimeMillis());
  }

  private void stopTimelineLoaders()
  {
    if (this.timelineLoaders != null)
    {
      Iterator localIterator = this.timelineLoaders.iterator();
      while (localIterator.hasNext())
        ((Loader)localIterator.next()).reset();
      this.timelineLoaders = null;
    }
  }

  public void finish()
  {
  }

  public VoiceConfig getInitialVoiceConfig()
  {
    if (Labs.isEnabled(Labs.Feature.OK_GLASS_EVERYWHERE))
      return VoiceConfig.GUARD;
    if (isFromScreenOffNotification())
      return this.notificationVoiceHelper.getInitialVoiceConfig();
    Log.d(getTag(), "getting config from timelineView");
    return this.timelineView.getCurrentVoiceConfig();
  }

  protected TimelineView getTimelineView()
  {
    return this.timelineView;
  }

  public boolean onConfirm()
  {
    setFromScreenOffNotification(false);
    if ((getTimelineView().onConfirm(this, true)) || (getTimelineView().shouldSuppressSingleTapSound()))
      return true;
    return super.onConfirm();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.power = new PowerHelper(this);
    this.uiPerformanceLog = new UiPerformanceLog(this);
    this.notificationVoiceHelper = new NotificationVoiceCommandHelper(this, getTimelineOptionsHelper());
    initTimelineView(new SettingsHelper(this).isGuestModeEnabled());
    this.guestModeReceiver.register(this, new String[] { "com.google.glass.ACTION_GUEST_MODE" });
    this.notificationReceivedReceiver.register(this, new String[] { "com.google.glass.ACTION_NOTIFICATION_RECEIVED" });
    handleIntent(getIntent());
  }

  protected void onDestroy()
  {
    stopTimelineLoaders();
    this.guestModeReceiver.unregister(this);
    this.notificationReceivedReceiver.unregister(this);
    super.onDestroy();
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    if (paramDismissAction == InputListener.DismissAction.SWIPE_DOWN)
      logUserEvent(UserEventAction.HOME_DISMISSED, "1");
    return super.onDismiss(paramDismissAction);
  }

  public boolean onDoubleTap()
  {
    if (getTimelineView().onDoubleTap(this))
      return true;
    return super.onDoubleTap();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    handleIntent(paramIntent);
  }

  public void onPause()
  {
    this.uiPerformanceLog.stopPerformanceMeasure();
    this.uiPerformanceLog.stopPerformanceLogging();
    showBatteryIndicator(false);
    super.onPause();
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    showBatteryIndicator(false);
    return super.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
  }

  public void onResume()
  {
    initTimelineView(new SettingsHelper(this).isGuestModeEnabled());
    super.onResume();
    this.timelineView.updateQueryParameters();
    int i;
    if (this.onResumeTask != null)
    {
      Intent localIntent = new Intent(this.onResumeTask);
      this.onResumeTask = null;
      setFromScreenOffNotification(localIntent.getBooleanExtra("from_screen_off_notification", false));
      setWakeUpTime(localIntent.getLongExtra("wake_up_time", -1L));
      if (!isLoadingTimeline())
      {
        Log.d(getTag(), "No pending intent, going to the timeline.");
        goToTimeline(localIntent);
      }
      if ((localIntent != null) && (localIntent.getBooleanExtra("screen_turned_on", false)))
      {
        i = 1;
        if (i != 0)
        {
          Log.d(getTag(), "Now turning the screen on.");
          HiddenPowerManager.preventScreenOn(this, false);
          localIntent.removeExtra("screen_turned_on");
        }
      }
    }
    while (true)
    {
      showBatteryIndicator(true);
      this.uiPerformanceLog.startPerformanceLogging();
      return;
      i = 0;
      break;
      Log.d(getTag(), "There is no pending task, checking for pending runnable.");
      setWakeUpTime(-1L);
      if (!isLoadingTimeline())
      {
        Log.d(getTag(), "No pending intent, showing the timeline.");
        showTimeline();
        setFromScreenOffNotification(false);
      }
    }
  }

  public void onStop()
  {
    cancelOnTimelineLoadRunnable();
    hideTimeline();
    super.onStop();
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    switch (5.$SwitchMap$com$google$glass$input$SwipeDirection[paramSwipeDirection.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return super.onSwipe(paramInt, paramSwipeDirection);
      setFromScreenOffNotification(false);
    }
  }

  public boolean onVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    this.power.userActivity();
    if (isFromScreenOffNotification())
      return this.notificationVoiceHelper.onVoiceCommand(paramVoiceCommand, (TimelineItem)getTimelineView().getSelectedItem());
    return super.onVoiceCommand(paramVoiceCommand);
  }

  protected int provideContentView()
  {
    return R.layout.timeline_activity;
  }

  protected boolean shouldFinishTurnScreenOff()
  {
    return true;
  }

  protected boolean shouldScreenOffFinish()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.MainTimelineActivity
 * JD-Core Version:    0.6.2
 */