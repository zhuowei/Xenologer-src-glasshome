package com.google.glass.home.timeline;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.glass.app.GlassActivity;
import com.google.glass.horizontalscroll.HorizontalScrollItem;
import com.google.glass.horizontalscroll.HorizontalScrollItem.State;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;

public class TimelineItemContainerView extends FrameLayout
  implements HorizontalScrollItem
{
  private TimelineItemId bundleId;
  private HorizontalScrollItem scrollItem;
  private HorizontalScrollItem.State state = HorizontalScrollItem.State.UNLOADED;

  public TimelineItemContainerView(Context paramContext)
  {
    this(paramContext, null);
  }

  public TimelineItemContainerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public TimelineItemContainerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public TimelineItemId getBundleId()
  {
    return this.bundleId;
  }

  public boolean onConfirm(GlassActivity paramGlassActivity)
  {
    if (this.scrollItem != null)
      return this.scrollItem.onConfirm(paramGlassActivity);
    return false;
  }

  public boolean onDoubleTap(GlassActivity paramGlassActivity)
  {
    if (this.scrollItem != null)
      return this.scrollItem.onDoubleTap(paramGlassActivity);
    return false;
  }

  public void onFocus()
  {
    this.state = HorizontalScrollItem.State.FOCUSED;
    if (this.scrollItem != null)
      this.scrollItem.onFocus();
  }

  public void onLoad()
  {
    this.state = HorizontalScrollItem.State.LOADED;
    if (this.scrollItem != null)
      this.scrollItem.onLoad();
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    if (this.scrollItem != null)
      return this.scrollItem.onOptionsItemSelected(paramItem);
    return false;
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    if (this.scrollItem != null)
      return this.scrollItem.onPrepareOptionsMenu(paramOptionMenu);
    return false;
  }

  public void onSettled()
  {
    this.state = HorizontalScrollItem.State.SETTLED;
    if (this.scrollItem != null)
      this.scrollItem.onSettled();
  }

  public void onUnfocus()
  {
    this.state = HorizontalScrollItem.State.LOADED;
    if (this.scrollItem != null)
      this.scrollItem.onUnfocus();
  }

  public void onUnload()
  {
    this.state = HorizontalScrollItem.State.UNLOADED;
    if (this.scrollItem != null)
      this.scrollItem.onUnload();
  }

  public void onUnsettled()
  {
    this.state = HorizontalScrollItem.State.FOCUSED;
    if (this.scrollItem != null)
      this.scrollItem.onUnsettled();
  }

  public void removeScrollItem()
  {
    setScrollItem(null);
  }

  public void setBundleId(TimelineItemId paramTimelineItemId)
  {
    this.bundleId = paramTimelineItemId;
  }

  public void setScrollItem(HorizontalScrollItem paramHorizontalScrollItem)
  {
    if (this.scrollItem != paramHorizontalScrollItem)
    {
      if (this.scrollItem != null);
      switch (1.$SwitchMap$com$google$glass$horizontalscroll$HorizontalScrollItem$State[this.state.ordinal()])
      {
      case 1:
      default:
        if (paramHorizontalScrollItem != null)
          switch (1.$SwitchMap$com$google$glass$horizontalscroll$HorizontalScrollItem$State[this.state.ordinal()])
          {
          case 1:
          default:
          case 2:
          case 3:
          case 4:
          }
        break;
      case 2:
      case 3:
      case 4:
      }
    }
    while (true)
    {
      this.scrollItem = paramHorizontalScrollItem;
      return;
      this.scrollItem.onUnload();
      break;
      this.scrollItem.onUnfocus();
      this.scrollItem.onUnload();
      break;
      this.scrollItem.onUnsettled();
      this.scrollItem.onUnfocus();
      this.scrollItem.onUnload();
      break;
      paramHorizontalScrollItem.onLoad();
      continue;
      paramHorizontalScrollItem.onLoad();
      paramHorizontalScrollItem.onFocus();
      continue;
      paramHorizontalScrollItem.onLoad();
      paramHorizontalScrollItem.onFocus();
      paramHorizontalScrollItem.onSettled();
    }
  }

  public boolean shouldSuppressSingleTapSound()
  {
    if (this.scrollItem != null)
      return this.scrollItem.shouldSuppressSingleTapSound();
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.TimelineItemContainerView
 * JD-Core Version:    0.6.2
 */