package com.google.glass.home.timeline.guest;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.home.timeline.TimelineItemContainerView;
import com.google.glass.home.timeline.VideoItemView;
import com.google.glass.horizontalscroll.HorizontalScrollImageView;
import com.google.glass.horizontalscroll.ViewRecycler;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.CustomItemIdGenerator;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.Attachment.Builder;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public class GuestTimelineItemAdapter extends BaseAdapter
  implements ViewRecycler
{
  private static final String GUEST_VID_PATH = "/system/media/guest_mode_video.mp4";
  private final CustomItemIdGenerator idGenerator;
  private final List<TimelineItem> items = new ArrayList();
  private final List<View> views = new ArrayList();

  public GuestTimelineItemAdapter(Context paramContext, CachedBitmapFactory paramCachedBitmapFactory, boolean paramBoolean)
  {
    int j;
    int k;
    label59: Item localItem;
    int m;
    if (paramBoolean)
    {
      this.idGenerator = new CustomItemIdGenerator("guest-pinned");
      Item[] arrayOfItem = Item.values();
      int i = arrayOfItem.length;
      j = 0;
      k = 0;
      if (j >= i)
        break label217;
      localItem = arrayOfItem[j];
      if (localItem.pinned != paramBoolean)
        break label218;
      if (Item.VID != localItem)
        break label180;
      m = k + 1;
      addView(k, createVideoView(paramContext, localItem, "/system/media/guest_mode_video.mp4", paramCachedBitmapFactory));
      label112: String str = paramContext.getString(localItem.timeResource);
      ((View)this.views.get(-1 + this.views.size())).setTag(R.id.tag_item_time_label_text, str);
    }
    while (true)
    {
      j++;
      k = m;
      break label59;
      this.idGenerator = new CustomItemIdGenerator("guest-historical");
      break;
      label180: HorizontalScrollImageView localHorizontalScrollImageView = new HorizontalScrollImageView(paramContext);
      localHorizontalScrollImageView.setImageResource(localItem.imageResource);
      m = k + 1;
      addView(k, localHorizontalScrollImageView);
      break label112;
      label217: return;
      label218: m = k;
    }
  }

  private void addView(int paramInt, View paramView)
  {
    TimelineItem localTimelineItem = TimelineItem.newBuilder().setId(this.idGenerator.createId(paramInt)).build();
    paramView.setTag(R.id.tag_horizontal_scroll_item, localTimelineItem);
    this.items.add(localTimelineItem);
    this.views.add(paramView);
  }

  private View createVideoView(Context paramContext, Item paramItem, String paramString, CachedBitmapFactory paramCachedBitmapFactory)
  {
    TimelineItemContainerView localTimelineItemContainerView = new TimelineItemContainerView(paramContext);
    VideoItemView localVideoItemView = (VideoItemView)LayoutInflater.from(paramContext).inflate(R.layout.timeline_item_video, localTimelineItemContainerView, false);
    localTimelineItemContainerView.addView(localVideoItemView);
    localTimelineItemContainerView.setScrollItem(localVideoItemView);
    localVideoItemView.setVideoAttachment(Attachment.newBuilder().setId("guest_vid_attachment").setClientCachePath(paramString).build(), paramCachedBitmapFactory);
    ImageView localImageView = (ImageView)localVideoItemView.findViewById(R.id.thumbnail);
    localImageView.setImageResource(paramItem.imageResource);
    localImageView.setVisibility(0);
    return localTimelineItemContainerView;
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

  public int getPosition(TimelineItemId paramTimelineItemId)
  {
    return this.idGenerator.getPosition(paramTimelineItemId.getItemId());
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

  public boolean matches(TimelineItemId paramTimelineItemId)
  {
    return this.idGenerator.isId(paramTimelineItemId.getItemId());
  }

  public void recycleView(View paramView)
  {
  }

  private static enum Item
  {
    final int imageResource;
    final boolean pinned;
    final int timeResource;

    static
    {
      MONTEREY_WEATHER = new Item("MONTEREY_WEATHER", 3, true, R.drawable.guest_weather_mon, R.string.guest_timeline_time_weather_mon);
      SEARCH_01 = new Item("SEARCH_01", 4, false, R.drawable.guest_search_01, R.string.guest_timeline_time_search_01);
      PIC_01 = new Item("PIC_01", 5, false, R.drawable.guest_pic_01, R.string.guest_timeline_time_pic_01);
      VID = new Item("VID", 6, false, R.drawable.guest_vid, R.string.guest_timeline_time_vid);
      SMS = new Item("SMS", 7, false, R.drawable.guest_sms, R.string.guest_timeline_time_sms);
      PIC_02 = new Item("PIC_02", 8, false, R.drawable.guest_pic_02, R.string.guest_timeline_time_pic_02);
      SEARCH_02 = new Item("SEARCH_02", 9, false, R.drawable.guest_search_02, R.string.guest_timeline_time_search_02);
      EMAIL = new Item("EMAIL", 10, false, R.drawable.guest_email, R.string.guest_timeline_time_email);
      Item[] arrayOfItem = new Item[11];
      arrayOfItem[0] = SFO_JFK_FLIGHT;
      arrayOfItem[1] = SFO_TRAFFIC;
      arrayOfItem[2] = SF_WEATHER;
      arrayOfItem[3] = MONTEREY_WEATHER;
      arrayOfItem[4] = SEARCH_01;
      arrayOfItem[5] = PIC_01;
      arrayOfItem[6] = VID;
      arrayOfItem[7] = SMS;
      arrayOfItem[8] = PIC_02;
      arrayOfItem[9] = SEARCH_02;
      arrayOfItem[10] = EMAIL;
    }

    private Item(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      this.pinned = paramBoolean;
      this.imageResource = paramInt1;
      this.timeResource = paramInt2;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.guest.GuestTimelineItemAdapter
 * JD-Core Version:    0.6.2
 */