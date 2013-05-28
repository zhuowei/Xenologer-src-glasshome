package com.google.glass.home.timeline;

import android.content.CursorLoader;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Adapter;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.SwipeDirection;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.voice.NotificationVoiceCommandHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.widget.SliderView;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.Set;

public class BundleTimelineActivity extends TimelineActivity
{
  private CursorLoader cursorLoader;
  private boolean isNotification;
  private boolean isReadMore;
  private NotificationVoiceCommandHelper notificationVoiceHelper;
  private Intent onResumeTask;
  private BundleTimelineView timelineView;

  private void handleIntent(Intent paramIntent)
  {
    if (this.onResumeTask != null);
    while (paramIntent == null)
      return;
    this.onResumeTask = new Intent(paramIntent);
  }

  public VoiceConfig getInitialVoiceConfig()
  {
    if (this.isNotification)
      return this.notificationVoiceHelper.getInitialVoiceConfig();
    return super.getInitialVoiceConfig();
  }

  protected TimelineView getTimelineView()
  {
    return this.timelineView;
  }

  public boolean onConfirm()
  {
    this.isNotification = false;
    if (getTimelineView().onConfirm(this, false))
      return true;
    return super.onConfirm();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.timelineView = ((BundleTimelineView)findViewById(R.id.timeline));
    this.notificationVoiceHelper = new NotificationVoiceCommandHelper(this, getTimelineOptionsHelper());
    handleIntent(getIntent());
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.cursorLoader != null)
    {
      this.cursorLoader.reset();
      this.cursorLoader = null;
    }
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    Set localSet = this.timelineView.getViewedPositions();
    if (localSet.size() > 0)
    {
      int i = this.timelineView.getAdapter().getCount();
      int j = localSet.size();
      UserEventHelper localUserEventHelper = new UserEventHelper(this);
      UserEventAction localUserEventAction = UserEventAction.VIEWED_BUNDLE;
      Integer localInteger = Integer.valueOf(i);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = "v";
      arrayOfObject[1] = Integer.valueOf(j);
      localUserEventHelper.log(localUserEventAction, UserEventHelper.createEventTuple("n", localInteger, arrayOfObject));
    }
    return super.onDismiss(paramDismissAction);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    handleIntent(paramIntent);
  }

  protected void onPause()
  {
    super.onPause();
    if (this.cursorLoader != null)
      this.cursorLoader.stopLoading();
  }

  protected void onResume()
  {
    super.onResume();
    if (this.onResumeTask != null)
    {
      Intent localIntent = this.onResumeTask;
      this.onResumeTask = null;
      if (this.cursorLoader != null)
      {
        this.cursorLoader.reset();
        this.cursorLoader = null;
      }
      TimelineItemId localTimelineItemId = (TimelineItemId)localIntent.getSerializableExtra("item_id");
      this.isReadMore = localIntent.getBooleanExtra("read_more", false);
      this.isNotification = localIntent.getBooleanExtra("is_notification", false);
      SliderView localSliderView = (SliderView)findViewById(R.id.slider);
      localSliderView.setScrollView(this.timelineView);
      this.cursorLoader = this.timelineView.init(this, localSliderView, HomeApplication.from(this).getBitmapFactory(), localTimelineItemId, this.isReadMore);
    }
    if (this.cursorLoader != null)
      this.cursorLoader.startLoading();
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    switch (1.$SwitchMap$com$google$glass$input$SwipeDirection[paramSwipeDirection.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return super.onSwipe(paramInt, paramSwipeDirection);
      this.isNotification = false;
    }
  }

  public boolean onVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    if (this.isNotification)
      return this.notificationVoiceHelper.onVoiceCommand(paramVoiceCommand, (TimelineItem)getTimelineView().getSelectedItem());
    return super.onVoiceCommand(paramVoiceCommand);
  }

  protected int provideContentView()
  {
    return R.layout.bundle_activity;
  }

  public boolean shouldStopSpeakingOnUserAction()
  {
    return !this.isReadMore;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.BundleTimelineActivity
 * JD-Core Version:    0.6.2
 */