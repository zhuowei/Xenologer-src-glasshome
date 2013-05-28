package com.google.glass.home.timeline;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.timeline.database.CallItemViewBinder;
import com.google.glass.home.timeline.database.HangoutItemViewBinder;
import com.google.glass.home.timeline.database.HtmlItemViewBinder;
import com.google.glass.home.timeline.database.ImageItemViewBinder;
import com.google.glass.home.timeline.database.ItemViewBinder;
import com.google.glass.home.timeline.database.MessageItemViewBinder;
import com.google.glass.home.timeline.database.ReadMoreMessageItemViewBinder;
import com.google.glass.home.timeline.database.SearchItemViewBinder;
import com.google.glass.home.timeline.database.TextItemViewBinder;
import com.google.glass.home.timeline.database.VideoItemViewBinder;
import com.google.glass.horizontalscroll.HorizontalScrollItem;
import com.google.glass.horizontalscroll.ViewRecycler;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.Assert;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.widget.DynamicSizeTextView.TextClipListener;
import com.google.googlex.glass.common.proto.MenuItem.Action;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;

public class TimelineItemAdapter extends BaseAdapter
  implements ViewRecycler
{
  private static final int CONTAINER_CACHE_CAPACITY = 10;
  private static final int VIEW_CACHE_CAPACITY = 10;
  private final CachedBitmapFactory bitmapFactory;
  private final Drawable bundleCornerDrawable;
  private final Drawable bundleSheenDrawable;
  private final LinkedBlockingQueue<TimelineItemContainerView> containerCache = new LinkedBlockingQueue(10);
  private final Context context;
  private final boolean inBundle;
  private final boolean isReadMore;
  private RemainingTextListener remainingTextListener;
  private final TimelineItemLoader timelineItemLoader;
  private final SparseArray<LinkedBlockingQueue<View>> viewCache = new SparseArray();

  public TimelineItemAdapter(final Context paramContext, CachedBitmapFactory paramCachedBitmapFactory, TimelineItemLoader paramTimelineItemLoader, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.context = paramContext;
    this.bitmapFactory = paramCachedBitmapFactory;
    this.timelineItemLoader = paramTimelineItemLoader;
    this.inBundle = paramBoolean1;
    this.isReadMore = paramBoolean2;
    if (!paramBoolean1)
      for (ViewType localViewType : ViewType.values())
      {
        final LinkedBlockingQueue localLinkedBlockingQueue = new LinkedBlockingQueue(10);
        final ItemViewBinder localItemViewBinder = getBinder(localViewType, paramBoolean2);
        this.viewCache.put(localItemViewBinder.getLayout(), localLinkedBlockingQueue);
        AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
        {
          public void run()
          {
            LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
            TimelineItemContainerView localTimelineItemContainerView = new TimelineItemContainerView(paramContext);
            for (int i = 0; i < 10; i++)
              localLinkedBlockingQueue.offer(localLayoutInflater.inflate(localItemViewBinder.getLayout(), localTimelineItemContainerView, false));
          }
        });
      }
    this.bundleCornerDrawable = paramContext.getResources().getDrawable(R.drawable.bundle_corner);
    this.bundleSheenDrawable = paramContext.getResources().getDrawable(R.drawable.bundle_sheen);
  }

  private View addViewToContainer(TimelineItemContainerView paramTimelineItemContainerView, ViewType paramViewType, ItemViewBinder paramItemViewBinder)
  {
    int i = paramItemViewBinder.getLayout();
    LinkedBlockingQueue localLinkedBlockingQueue = (LinkedBlockingQueue)this.viewCache.get(i);
    View localView = null;
    if (localLinkedBlockingQueue != null)
      localView = (View)localLinkedBlockingQueue.poll();
    if (localView == null)
      localView = LayoutInflater.from(this.context).inflate(i, paramTimelineItemContainerView, false);
    paramTimelineItemContainerView.addView(localView);
    localView.setTag(R.id.tag_horizontal_scroll_item_view_type, paramViewType);
    localView.setTag(R.id.tag_horizontal_scroll_item_view_binder, paramItemViewBinder);
    paramTimelineItemContainerView.setTag(R.id.tag_horizontal_scroll_bound_view, localView);
    return localView;
  }

  private void bind(int paramInt, final TimelineItemContainerView paramTimelineItemContainerView)
  {
    Assert.assertUiThread();
    TimelineItemLoader.ReadCallback local2 = new TimelineItemLoader.ReadCallback()
    {
      public void onItemRead(TimelineItemLoader.ReadResult paramAnonymousReadResult)
      {
        Assert.assertUiThread();
        final TimelineItem localTimelineItem1 = paramAnonymousReadResult.getItem();
        int i = paramAnonymousReadResult.getBundleCoverStatus();
        Long localLong1 = paramAnonymousReadResult.getCrc32();
        TimelineItem localTimelineItem2 = (TimelineItem)paramTimelineItemContainerView.getTag(R.id.tag_horizontal_scroll_item);
        Long localLong2 = (Long)paramTimelineItemContainerView.getTag(R.id.tag_item_crc32);
        TimelineItemAdapter.ViewType localViewType;
        boolean bool2;
        View localView;
        ItemViewBinder localItemViewBinder;
        label160: boolean bool1;
        if ((localTimelineItem2 == null) || (!TimelineItemAdapter.isSameItem(localTimelineItem1, localLong1, localTimelineItem2, localLong2)))
        {
          paramTimelineItemContainerView.removeScrollItem();
          localViewType = TimelineItemAdapter.getViewType(localTimelineItem1);
          if (localViewType != TimelineItemAdapter.this.getBoundViewType(paramTimelineItemContainerView))
            break label428;
          if ((localTimelineItem2 == null) || (!localTimelineItem1.getId().equals(localTimelineItem2.getId())))
            break label422;
          bool2 = true;
          TimelineItemAdapter.this.clearDataFromContainer(paramTimelineItemContainerView, bool2);
          localView = (View)paramTimelineItemContainerView.getTag(R.id.tag_horizontal_scroll_bound_view);
          localItemViewBinder = (ItemViewBinder)localView.getTag(R.id.tag_horizontal_scroll_item_view_binder);
          paramTimelineItemContainerView.setTag(R.id.tag_horizontal_scroll_item, localTimelineItem1);
          paramTimelineItemContainerView.setTag(R.id.tag_item_crc32, localLong1);
          DynamicSizeTextView.TextClipListener local1 = new DynamicSizeTextView.TextClipListener()
          {
            public void onTextClipped(String paramAnonymous2String)
            {
              if (TimelineItemAdapter.this.remainingTextListener != null)
                TimelineItemAdapter.this.remainingTextListener.onRemainingText(new TimelineItemId(localTimelineItem1), paramAnonymous2String);
            }
          };
          bool1 = localItemViewBinder.bind(TimelineItemAdapter.this.context, localTimelineItem1, TimelineItemAdapter.this.inBundle, TimelineItemAdapter.this.isReadMore, localView, TimelineItemAdapter.this.bitmapFactory, local1);
          if ((localView instanceof HorizontalScrollItem))
            paramTimelineItemContainerView.setScrollItem((HorizontalScrollItem)localView);
          if ((!localTimelineItem1.hasBundleId()) || (TextUtils.isEmpty(localTimelineItem1.getBundleId())))
            break label473;
        }
        label422: label428: label473: for (int j = 1; ; j = 0)
        {
          if ((!TimelineItemAdapter.this.inBundle) && ((bool1) || (j != 0)) && (i != 3))
          {
            paramTimelineItemContainerView.setBundleId(new TimelineItemId(localTimelineItem1));
            ImageView localImageView = new ImageView(TimelineItemAdapter.this.context);
            localImageView.setImageDrawable(TimelineItemAdapter.this.bundleCornerDrawable);
            paramTimelineItemContainerView.addView(localImageView, TimelineItemAdapter.this.getBundleLayoutParams());
            ((ImageView)paramTimelineItemContainerView.getTag(R.id.tag_horizontal_scroll_card_sheen)).setImageDrawable(TimelineItemAdapter.this.bundleSheenDrawable);
          }
          Runnable localRunnable = (Runnable)paramTimelineItemContainerView.getTag(R.id.tag_timeline_database_adapter_load_runnable);
          if (localRunnable != null)
          {
            localRunnable.run();
            paramTimelineItemContainerView.setTag(R.id.tag_timeline_database_adapter_load_runnable, null);
          }
          return;
          bool2 = false;
          break;
          TimelineItemAdapter.this.destroyContainer(paramTimelineItemContainerView);
          localItemViewBinder = TimelineItemAdapter.getBinder(localViewType, TimelineItemAdapter.this.isReadMore);
          localView = TimelineItemAdapter.this.addViewToContainer(paramTimelineItemContainerView, localViewType, localItemViewBinder);
          break label160;
        }
      }
    };
    paramTimelineItemContainerView.setTag(R.id.tag_timeline_database_adapter_read_callback, local2);
    this.timelineItemLoader.asyncRead(paramInt, local2);
    paramTimelineItemContainerView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
  }

  private void cancelReadCallback(TimelineItemContainerView paramTimelineItemContainerView)
  {
    TimelineItemLoader.ReadCallback localReadCallback = (TimelineItemLoader.ReadCallback)paramTimelineItemContainerView.getTag(R.id.tag_timeline_database_adapter_read_callback);
    Assert.assertNotNull(localReadCallback);
    localReadCallback.cancel();
    paramTimelineItemContainerView.setTag(R.id.tag_timeline_database_adapter_read_callback, null);
    paramTimelineItemContainerView.setTag(R.id.tag_timeline_database_adapter_load_runnable, null);
  }

  private void clearDataFromContainer(TimelineItemContainerView paramTimelineItemContainerView, boolean paramBoolean)
  {
    paramTimelineItemContainerView.setBundleId(null);
    View localView1 = (View)paramTimelineItemContainerView.getTag(R.id.tag_horizontal_scroll_bound_view);
    if (localView1 != null)
    {
      ((ItemViewBinder)localView1.getTag(R.id.tag_horizontal_scroll_item_view_binder)).clear(localView1, paramBoolean);
      View localView2 = paramTimelineItemContainerView.getChildAt(0);
      boolean bool = false;
      if (localView1 == localView2)
        bool = true;
      Assert.assertTrue(bool);
      while (paramTimelineItemContainerView.getChildCount() > 1)
        paramTimelineItemContainerView.removeViewsInLayout(1, -1 + paramTimelineItemContainerView.getChildCount());
    }
    clearItemTags(paramTimelineItemContainerView);
  }

  private void clearItemTags(TimelineItemContainerView paramTimelineItemContainerView)
  {
    paramTimelineItemContainerView.setTag(R.id.tag_horizontal_scroll_item, null);
    paramTimelineItemContainerView.setTag(R.id.tag_item_crc32, null);
    paramTimelineItemContainerView.setTag(R.id.tag_item_read_more, null);
    paramTimelineItemContainerView.setTag(R.id.tag_item_time_label_text, null);
  }

  private void destroyContainer(TimelineItemContainerView paramTimelineItemContainerView)
  {
    paramTimelineItemContainerView.setBundleId(null);
    View localView = (View)paramTimelineItemContainerView.getTag(R.id.tag_horizontal_scroll_bound_view);
    if (localView != null)
    {
      paramTimelineItemContainerView.setTag(R.id.tag_horizontal_scroll_bound_view, null);
      ItemViewBinder localItemViewBinder = (ItemViewBinder)localView.getTag(R.id.tag_horizontal_scroll_item_view_binder);
      localView.setTag(R.id.tag_horizontal_scroll_item_view_binder, null);
      localItemViewBinder.clear(localView, false);
      paramTimelineItemContainerView.removeAllViews();
      paramTimelineItemContainerView.removeScrollItem();
      int i = localItemViewBinder.getLayout();
      LinkedBlockingQueue localLinkedBlockingQueue = (LinkedBlockingQueue)this.viewCache.get(i);
      if (localLinkedBlockingQueue == null)
      {
        localLinkedBlockingQueue = new LinkedBlockingQueue(10);
        this.viewCache.put(i, localLinkedBlockingQueue);
      }
      localLinkedBlockingQueue.offer(localView);
    }
    clearItemTags(paramTimelineItemContainerView);
  }

  static ItemViewBinder getBinder(ViewType paramViewType, boolean paramBoolean)
  {
    switch (3.$SwitchMap$com$google$glass$home$timeline$TimelineItemAdapter$ViewType[paramViewType.ordinal()])
    {
    default:
      return new TextItemViewBinder();
    case 1:
      return new HtmlItemViewBinder();
    case 2:
      if (paramBoolean)
        return new ReadMoreMessageItemViewBinder();
      return new MessageItemViewBinder();
    case 3:
      return new ImageItemViewBinder();
    case 4:
      return new VideoItemViewBinder();
    case 5:
      return new SearchItemViewBinder();
    case 6:
      return new CallItemViewBinder();
    case 7:
    }
    return new HangoutItemViewBinder();
  }

  private ViewType getBoundViewType(TimelineItemContainerView paramTimelineItemContainerView)
  {
    View localView = (View)paramTimelineItemContainerView.getTag(R.id.tag_horizontal_scroll_bound_view);
    if (localView != null)
      return (ViewType)localView.getTag(R.id.tag_horizontal_scroll_item_view_type);
    return null;
  }

  private FrameLayout.LayoutParams getBundleLayoutParams()
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 53;
    return localLayoutParams;
  }

  public static ViewType getViewType(TimelineItem paramTimelineItem)
  {
    if (paramTimelineItem.getId().endsWith(":cont"))
      return ViewType.TEXT;
    if (paramTimelineItem.hasHtml())
      return ViewType.HTML;
    if (TimelineHelper.hasAttachmentOfTypes(paramTimelineItem, new String[] { "proto/search" }))
      return ViewType.SEARCH;
    if (TimelineHelper.hasAttachmentOfTypes(paramTimelineItem, TimelineHelper.SUPPORTED_VIDEO_MIME_TYPES))
      return ViewType.VIDEO;
    if (TimelineHelper.hasAttachmentOfTypes(paramTimelineItem, TimelineHelper.SUPPORTED_IMAGE_MIME_TYPES))
      return ViewType.IMAGE;
    if ((TimelineHelper.canSyncToCompanion(paramTimelineItem)) || (TimelineHelper.isCompanionSms(paramTimelineItem)))
      return ViewType.MESSAGE;
    MenuItem.Action[] arrayOfAction1 = new MenuItem.Action[1];
    arrayOfAction1[0] = MenuItem.Action.HANGOUT;
    if (TimelineHelper.hasMenuItemActionOfTypes(paramTimelineItem, arrayOfAction1))
      return ViewType.HANGOUT;
    MenuItem.Action[] arrayOfAction2 = new MenuItem.Action[1];
    arrayOfAction2[0] = MenuItem.Action.VOICE_CALL;
    if (TimelineHelper.hasMenuItemActionOfTypes(paramTimelineItem, arrayOfAction2))
      return ViewType.CALL;
    MenuItem.Action[] arrayOfAction3 = new MenuItem.Action[2];
    arrayOfAction3[0] = MenuItem.Action.REPLY;
    arrayOfAction3[1] = MenuItem.Action.REPLY_ALL;
    if (TimelineHelper.hasMenuItemActionOfTypes(paramTimelineItem, arrayOfAction3))
      return ViewType.MESSAGE;
    return ViewType.TEXT;
  }

  @VisibleForTesting
  static boolean isSameItem(TimelineItem paramTimelineItem1, Long paramLong1, TimelineItem paramTimelineItem2, Long paramLong2)
  {
    if ((paramLong1 != null) && (paramLong2 != null))
      return paramLong1.equals(paramLong2);
    return paramTimelineItem1.equals(paramTimelineItem2);
  }

  public int getCount()
  {
    return this.timelineItemLoader.getCount();
  }

  public Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    TimelineItemContainerView localTimelineItemContainerView1 = (TimelineItemContainerView)this.containerCache.poll();
    if (localTimelineItemContainerView1 != null);
    for (TimelineItemContainerView localTimelineItemContainerView2 = localTimelineItemContainerView1; ; localTimelineItemContainerView2 = new TimelineItemContainerView(this.context))
    {
      bind(paramInt, localTimelineItemContainerView2);
      return localTimelineItemContainerView2;
    }
  }

  public boolean hasStableIds()
  {
    return true;
  }

  public void rebind(int paramInt, View paramView)
  {
    TimelineItemContainerView localTimelineItemContainerView = (TimelineItemContainerView)paramView;
    cancelReadCallback(localTimelineItemContainerView);
    bind(paramInt, localTimelineItemContainerView);
  }

  public void recycleView(View paramView)
  {
    TimelineItemContainerView localTimelineItemContainerView = (TimelineItemContainerView)paramView;
    cancelReadCallback(localTimelineItemContainerView);
    destroyContainer(localTimelineItemContainerView);
    this.containerCache.offer(localTimelineItemContainerView);
  }

  public void setRemainingTextListener(RemainingTextListener paramRemainingTextListener)
  {
    this.remainingTextListener = paramRemainingTextListener;
  }

  public static abstract interface RemainingTextListener
  {
    public abstract void onRemainingText(TimelineItemId paramTimelineItemId, String paramString);
  }

  public static enum ViewType
  {
    static
    {
      MESSAGE = new ViewType("MESSAGE", 1);
      IMAGE = new ViewType("IMAGE", 2);
      VIDEO = new ViewType("VIDEO", 3);
      HTML = new ViewType("HTML", 4);
      SEARCH = new ViewType("SEARCH", 5);
      CALL = new ViewType("CALL", 6);
      HANGOUT = new ViewType("HANGOUT", 7);
      ViewType[] arrayOfViewType = new ViewType[8];
      arrayOfViewType[0] = TEXT;
      arrayOfViewType[1] = MESSAGE;
      arrayOfViewType[2] = IMAGE;
      arrayOfViewType[3] = VIDEO;
      arrayOfViewType[4] = HTML;
      arrayOfViewType[5] = SEARCH;
      arrayOfViewType[6] = CALL;
      arrayOfViewType[7] = HANGOUT;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.TimelineItemAdapter
 * JD-Core Version:    0.6.2
 */