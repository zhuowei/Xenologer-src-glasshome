package com.google.glass.home.settings;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.glass.home.R.id;
import com.google.glass.horizontalscroll.ViewRecycler;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.util.SettingsHelper;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public class SettingsAdapter extends BaseAdapter
  implements ViewRecycler
{
  private final Activity context;
  private final SettingsHelper helper;
  private List<TimelineItem> items;
  private List<SettingsItemView> views;

  public SettingsAdapter(Activity paramActivity)
  {
    this.context = paramActivity;
    this.helper = new SettingsHelper(this.context);
    this.views = new ArrayList();
    this.items = new ArrayList();
    addView(0, new WifiSettingsItemView(paramActivity));
    addView(1, new BluetoothSettingsItemView(paramActivity));
    addView(2, new DeviceInfoSettingsItemView(paramActivity));
    addView(3, new HeadWakeSettingsItemView(paramActivity));
    if (Labs.isEnabled(Labs.Feature.WINK))
      addView(4, new WinkSettingsItemView(paramActivity));
    addView(5, new DonDoffSettingsItemView(paramActivity));
    if (Labs.isEnabled(Labs.Feature.GPS_DEBUG_CARD))
      addView(6, new GpsDebugSettingsItemView(paramActivity));
    addView(7, new GuestSettingsItemView(paramActivity));
  }

  private void addView(int paramInt, SettingsItemView paramSettingsItemView)
  {
    TimelineItem localTimelineItem = TimelineItem.newBuilder().setId(this.helper.createSettingsItemId(paramInt)).build();
    paramSettingsItemView.setTag(R.id.tag_horizontal_scroll_item, localTimelineItem);
    this.items.add(localTimelineItem);
    this.views.add(paramSettingsItemView);
  }

  public static void forceLoad(Runnable paramRunnable)
  {
    if (paramRunnable != null)
      MainThreadExecutorManager.getMainThreadExecutor().execute(paramRunnable);
  }

  public int getCount()
  {
    return this.views.size();
  }

  public Object getItem(int paramInt)
  {
    return this.items.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = (View)this.views.get(paramInt);
    localView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
    return localView;
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
 * Qualified Name:     com.google.glass.home.settings.SettingsAdapter
 * JD-Core Version:    0.6.2
 */