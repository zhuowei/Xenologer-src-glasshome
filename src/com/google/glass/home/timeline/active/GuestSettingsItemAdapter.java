package com.google.glass.home.timeline.active;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.glass.home.R.id;
import com.google.glass.home.settings.GuestSettingsItemView;
import com.google.glass.horizontalscroll.ViewRecycler;
import com.google.glass.util.SettingsHelper;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;

public class GuestSettingsItemAdapter extends BaseAdapter
  implements ViewRecycler
{
  public static final int GUEST_MODE_INDEX = 0;
  private static final int NUMBER_OF_ITEMS = 1;
  private final TimelineItem item;
  private final GuestSettingsItemView view;

  public GuestSettingsItemAdapter(Activity paramActivity)
  {
    String str = new SettingsHelper(paramActivity).createSettingsItemId(0);
    this.item = TimelineItem.newBuilder().setId(str).build();
    this.view = new GuestSettingsItemView(paramActivity);
    this.view.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
    this.view.setTag(R.id.tag_horizontal_scroll_item, this.item);
  }

  public int getCount()
  {
    return 1;
  }

  public Object getItem(int paramInt)
  {
    return this.item;
  }

  public long getItemId(int paramInt)
  {
    return 0L;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return this.view;
  }

  public boolean isEmpty()
  {
    return false;
  }

  public void recycleView(View paramView)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.active.GuestSettingsItemAdapter
 * JD-Core Version:    0.6.2
 */