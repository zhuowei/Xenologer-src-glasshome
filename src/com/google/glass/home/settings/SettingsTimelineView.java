package com.google.glass.home.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Adapter;
import com.google.glass.horizontalscroll.BaseHorizontalScrollView;
import com.google.glass.util.SettingsHelper;
import com.google.googlex.glass.common.proto.TimelineItem;

public class SettingsTimelineView extends BaseHorizontalScrollView<Integer, TimelineItem>
{
  private final SettingsHelper helper;

  public SettingsTimelineView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public SettingsTimelineView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SettingsTimelineView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, true);
    this.helper = new SettingsHelper(paramContext);
  }

  public int findIdPosition(Integer paramInteger)
  {
    return paramInteger.intValue();
  }

  public int findItemPosition(TimelineItem paramTimelineItem)
  {
    return this.helper.getSettingsItemPosition(paramTimelineItem.getId());
  }

  public int getHomePosition()
  {
    return 0;
  }

  public View getViewForPosition(int paramInt)
  {
    return getAdapter().getView(paramInt, null, this);
  }

  public void rebindView(int paramInt, View paramView)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.SettingsTimelineView
 * JD-Core Version:    0.6.2
 */