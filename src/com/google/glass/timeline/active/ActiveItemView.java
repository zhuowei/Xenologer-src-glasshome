package com.google.glass.timeline.active;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.google.glass.app.GlassActivity;
import com.google.glass.horizontalscroll.HorizontalScrollItem;
import com.google.glass.ongoing.OngoingActivityManager.ActivityType;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.SettingsSecure;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem.SyncProtocol;

public abstract class ActiveItemView extends LinearLayout
  implements HorizontalScrollItem
{
  private static final String TAG = ActiveItemView.class.getSimpleName();
  private final OngoingActivityManager.ActivityType activityType;
  private TimelineItem item;
  private Bundle parameters;

  public ActiveItemView(Context paramContext, OngoingActivityManager.ActivityType paramActivityType)
  {
    super(paramContext);
    this.activityType = paramActivityType;
    init();
  }

  private static TimelineItem.Builder createTimelineItemBuilderForType(Context paramContext, OngoingActivityManager.ActivityType paramActivityType)
  {
    String str = ActiveItemApi.createActiveItemId(paramActivityType);
    TimelineItem.Builder localBuilder = new TimelineHelper().createTimelineItemBuilder(paramContext, new SettingsSecure(paramContext.getContentResolver()));
    localBuilder.setId(str);
    localBuilder.setCloudSyncProtocol(TimelineItem.SyncProtocol.NEVER);
    localBuilder.setDisplayTime(System.currentTimeMillis());
    localBuilder.setModifiedTime(System.currentTimeMillis());
    return localBuilder;
  }

  private final void init()
  {
    Log.d(TAG, "Inflating custom view.");
    TimelineItem.Builder localBuilder = createTimelineItemBuilderForType(getContext(), this.activityType);
    addMenuItems(localBuilder);
    this.item = localBuilder.build();
    LayoutInflater.from(getContext()).inflate(provideContentView(), this);
    onViewInflated();
  }

  protected void addMenuItems(TimelineItem.Builder paramBuilder)
  {
  }

  public OngoingActivityManager.ActivityType getActivityType()
  {
    return this.activityType;
  }

  public TimelineItemId getBundleId()
  {
    return null;
  }

  protected Bundle getParameters()
  {
    return this.parameters;
  }

  public TimelineItem getTimelineItem()
  {
    return this.item;
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    return false;
  }

  public boolean onDoubleTap(GlassActivity paramGlassActivity)
  {
    return false;
  }

  public void onFocus()
  {
  }

  public void onLoad()
  {
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    return false;
  }

  protected void onParametersChanged(Bundle paramBundle)
  {
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    return false;
  }

  public void onRemove()
  {
  }

  public void onSettled()
  {
  }

  public void onUnfocus()
  {
  }

  public void onUnload()
  {
  }

  public void onUnsettled()
  {
  }

  protected void onViewInflated()
  {
  }

  protected abstract int provideContentView();

  public final void setParameters(Bundle paramBundle)
  {
    this.parameters = paramBundle;
    onParametersChanged(this.parameters);
  }

  public boolean shouldSuppressSingleTapSound()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.active.ActiveItemView
 * JD-Core Version:    0.6.2
 */