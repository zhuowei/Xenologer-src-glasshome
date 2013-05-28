package com.google.glass.home.timeline;

import android.content.Context;
import android.content.CursorLoader;
import android.content.Loader;
import android.content.Loader.OnLoadCompleteListener;
import android.database.Cursor;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassActivity;
import com.google.glass.home.R.id;
import com.google.glass.home.timeline.database.ItemViewBinder;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.Assert;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.widget.SliderView;
import com.google.googlex.glass.common.proto.MenuItem;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem.SyncProtocol;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

public class BundleTimelineView extends TimelineView
{
  private static final int MAX_BUNDLE_ITEMS = 100;
  private static final int NUM_VIEWS_FOR_READ_MORE = 32;
  private static final String TAG = BundleTimelineView.class.getSimpleName();
  private boolean isReadMore;
  private Map<String, TimelineItem> parentItemMap;
  private final TimelineHelper timelineHelper = new TimelineHelper();
  private Set<Integer> viewedPositions = new HashSet();

  public BundleTimelineView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public BundleTimelineView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public BundleTimelineView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void appendRemainingText(final List<TimelineItem> paramList, final TimelineItemLoader paramTimelineItemLoader, TimelineItemAdapter paramTimelineItemAdapter, final Map<String, TimelineItem> paramMap, final SliderView paramSliderView)
  {
    Assert.assertUiThread();
    paramTimelineItemAdapter.setRemainingTextListener(new TimelineItemAdapter.RemainingTextListener()
    {
      public void onRemainingText(TimelineItemId paramAnonymousTimelineItemId, String paramAnonymousString)
      {
        Assert.assertUiThread();
        TimelineItem localTimelineItem = (TimelineItem)paramMap.get(paramAnonymousTimelineItemId.getItemId());
        String str = paramAnonymousTimelineItemId.getItemId() + ":cont";
        int i;
        if (paramMap.put(str, localTimelineItem) != null)
          i = 1;
        while (i == 0)
        {
          TimelineItem.Builder localBuilder = TimelineItem.newBuilder();
          localBuilder.setId(str);
          localBuilder.setText(paramAnonymousString);
          localBuilder.setCloudSyncProtocol(TimelineItem.SyncProtocol.NEVER);
          Iterator localIterator = localTimelineItem.getMenuItemList().iterator();
          while (true)
            if (localIterator.hasNext())
            {
              localBuilder.addMenuItem((MenuItem)localIterator.next());
              continue;
              i = 0;
              break;
            }
          int j = 1 + paramTimelineItemLoader.find(paramAnonymousTimelineItemId);
          paramList.add(j, localBuilder.build());
          paramSliderView.setCount(paramList.size());
          BundleTimelineView.this.updateViews(true);
        }
      }
    });
  }

  private void applyNewData(TimelineItemAdapter paramTimelineItemAdapter, final TimelineItemLoader paramTimelineItemLoader, Map<String, TimelineItem> paramMap, SliderView paramSliderView)
  {
    Assert.assertUiThread();
    this.parentItemMap = paramMap;
    paramSliderView.setCount(paramTimelineItemLoader.getCount());
    TimelineView.AdapterWrapper[] arrayOfAdapterWrapper = new TimelineView.AdapterWrapper[1];
    arrayOfAdapterWrapper[0] = new TimelineView.AdapterWrapper(paramTimelineItemAdapter)
    {
      int findIdPosition(TimelineItemId paramAnonymousTimelineItemId)
      {
        return paramTimelineItemLoader.find(paramAnonymousTimelineItemId);
      }

      boolean matches(TimelineItemId paramAnonymousTimelineItemId)
      {
        return true;
      }

      void rebind(int paramAnonymousInt, View paramAnonymousView)
      {
        ((TimelineItemAdapter)this.adapter).rebind(paramAnonymousInt, paramAnonymousView);
      }
    };
    setAdapters(arrayOfAdapterWrapper);
    updateViews(true);
  }

  private boolean isCursorEmpty(Cursor paramCursor)
  {
    return (paramCursor == null) || (paramCursor.isClosed()) || (paramCursor.getCount() == 0);
  }

  private List<TimelineItem> loadItems(Cursor paramCursor)
  {
    Assert.assertNotUiThread();
    int i = paramCursor.getCount();
    if (i > 100)
    {
      Log.d(TAG, "There are " + i + " items in this bundle; truncating to " + 100);
      i = 100;
    }
    ArrayList localArrayList = new ArrayList(i);
    for (int j = 0; j < i; j++)
    {
      paramCursor.moveToPosition(j);
      localArrayList.add(TimelineHelper.fromCursor(paramCursor));
    }
    return localArrayList;
  }

  private void markItemAsReadMore(TimelineItemId paramTimelineItemId)
  {
    Assert.assertUiThread();
    int i = 0;
    int j = getChildCount();
    while (true)
    {
      if (i < j)
      {
        View localView = getCard(i);
        TimelineItem localTimelineItem = (TimelineItem)localView.getTag(R.id.tag_horizontal_scroll_item);
        if ((localTimelineItem != null) && (localTimelineItem.getId().equals(paramTimelineItemId.getItemId())))
          localView.setTag(R.id.tag_item_read_more, Boolean.TRUE);
      }
      else
      {
        return;
      }
      i++;
    }
  }

  public int getHomePosition()
  {
    return 0;
  }

  protected int getNumViewsToLoad()
  {
    if (this.isReadMore)
      return 32;
    return super.getNumViewsToLoad();
  }

  public TimelineItem getSelectedItemParent()
  {
    TimelineItem localTimelineItem = (TimelineItem)super.getSelectedItemParent();
    if ((this.parentItemMap != null) && (localTimelineItem != null))
      return (TimelineItem)this.parentItemMap.get(localTimelineItem.getId());
    return null;
  }

  public Set<Integer> getViewedPositions()
  {
    return this.viewedPositions;
  }

  public CursorLoader init(final GlassActivity paramGlassActivity, final SliderView paramSliderView, final CachedBitmapFactory paramCachedBitmapFactory, final TimelineItemId paramTimelineItemId, final boolean paramBoolean)
  {
    if (!paramTimelineItemId.isPinned());
    for (boolean bool = true; ; bool = false)
    {
      this.isReadMore = paramBoolean;
      this.viewedPositions.clear();
      long l = getMaxItemTimestamp(paramTimelineItemId.isPinned());
      CursorLoader localCursorLoader = TimelineHelper.createItemLoaderForBundleTimeline(paramGlassActivity, paramTimelineItemId.getItemId(), paramTimelineItemId.getBundleId(), l, bool, paramTimelineItemId.isPinned());
      Loader.OnLoadCompleteListener local1 = new Loader.OnLoadCompleteListener()
      {
        boolean isFirstCursor = true;
        TimelineItem readMoreItem;

        public void onLoadComplete(Loader<Cursor> paramAnonymousLoader, final Cursor paramAnonymousCursor)
        {
          Assert.assertUiThread();
          if (BundleTimelineView.this.isCursorEmpty(paramAnonymousCursor))
          {
            Log.d(BundleTimelineView.TAG, "Bundle is empty; dismissing self.");
            paramGlassActivity.onDismiss(InputListener.DismissAction.OPTION_ITEM);
          }
          do
          {
            return;
            if ((this.isFirstCursor) || (!paramBoolean))
              break;
          }
          while (TimelineHelper.linearSearch(this.readMoreItem.getId(), paramAnonymousCursor, 100) != -1);
          Log.d(BundleTimelineView.TAG, "Item we are looking at has been deleted; dismissing self.");
          paramGlassActivity.onDismiss(InputListener.DismissAction.OPTION_ITEM);
          return;
          AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
          {
            public void run()
            {
              if (BundleTimelineView.this.isCursorEmpty(paramAnonymousCursor))
              {
                Log.d(BundleTimelineView.TAG, "Bundle cursor is closed.");
                return;
              }
              Object localObject;
              if (BundleTimelineView.1.this.val$isReadMore)
              {
                localObject = new ArrayList();
                BundleTimelineView.1.this.readMoreItem = BundleTimelineView.this.timelineHelper.queryTimelineItem(BundleTimelineView.1.this.val$activity.getContentResolver(), BundleTimelineView.1.this.val$id.getItemId());
                ((List)localObject).add(BundleTimelineView.1.this.readMoreItem);
              }
              while (true)
              {
                final HashMap localHashMap = new HashMap();
                Pair localPair = BundleTimelineView.this.splitItems((List)localObject, localHashMap, BundleTimelineView.1.this.val$isReadMore);
                final List localList = (List)localPair.first;
                final TimelineItemLoader localTimelineItemLoader = (TimelineItemLoader)localPair.second;
                final TimelineItemAdapter localTimelineItemAdapter = new TimelineItemAdapter(BundleTimelineView.1.this.val$activity, BundleTimelineView.1.this.val$bitmapFactory, localTimelineItemLoader, true, BundleTimelineView.1.this.val$isReadMore);
                MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
                {
                  public void run()
                  {
                    BundleTimelineView.this.applyNewData(localTimelineItemAdapter, localTimelineItemLoader, localHashMap, BundleTimelineView.1.this.val$sliderView);
                    if (BundleTimelineView.1.this.val$isReadMore)
                      BundleTimelineView.this.appendRemainingText(localList, localTimelineItemLoader, localTimelineItemAdapter, localHashMap, BundleTimelineView.1.this.val$sliderView);
                    while (true)
                    {
                      if (BundleTimelineView.1.this.isFirstCursor)
                      {
                        int i = BundleTimelineView.this.findIdPosition(BundleTimelineView.1.this.val$id);
                        if (i == -1)
                          i = 0;
                        BundleTimelineView.this.setSelection(i, false);
                        BundleTimelineView.this.viewedPositions.add(Integer.valueOf(BundleTimelineView.this.getSelectedItemPosition()));
                        BundleTimelineView.1.this.val$sliderView.setProportionalIndex(i);
                      }
                      BundleTimelineView.1.this.isFirstCursor = false;
                      return;
                      localTimelineItemAdapter.setRemainingTextListener(new TimelineItemAdapter.RemainingTextListener()
                      {
                        public void onRemainingText(TimelineItemId paramAnonymous4TimelineItemId, String paramAnonymous4String)
                        {
                          BundleTimelineView.this.markItemAsReadMore(paramAnonymous4TimelineItemId);
                        }
                      });
                    }
                  }
                });
                return;
                localObject = BundleTimelineView.this.loadItems(paramAnonymousCursor);
              }
            }
          });
        }
      };
      localCursorLoader.registerListener(nextLoaderId.incrementAndGet(), local1);
      return localCursorLoader;
    }
  }

  protected void onFocused(int paramInt)
  {
    super.onFocused(paramInt);
    this.viewedPositions.add(Integer.valueOf(paramInt));
  }

  @VisibleForTesting
  Pair<List<TimelineItem>, TimelineItemLoader> splitItems(List<TimelineItem> paramList, Map<String, TimelineItem> paramMap, boolean paramBoolean)
  {
    final ArrayList localArrayList1 = new ArrayList();
    for (int i = 0; i < paramList.size(); i++)
    {
      TimelineItem localTimelineItem = (TimelineItem)paramList.get(i);
      ArrayList localArrayList2 = new ArrayList();
      TimelineItemAdapter.getBinder(TimelineItemAdapter.getViewType(localTimelineItem), paramBoolean).splitBundle(localTimelineItem, localArrayList2);
      Iterator localIterator = localArrayList2.iterator();
      while (localIterator.hasNext())
        paramMap.put(((TimelineItem)localIterator.next()).getId(), localTimelineItem);
      localArrayList1.addAll(localArrayList2);
    }
    return Pair.create(localArrayList1, new TimelineItemLoader()
    {
      public void asyncRead(int paramAnonymousInt, TimelineItemLoader.ReadCallback paramAnonymousReadCallback)
      {
        paramAnonymousReadCallback.onItemRead(new TimelineItemLoader.ReadResult((TimelineItem)localArrayList1.get(paramAnonymousInt), 0, null));
      }

      public int find(TimelineItemId paramAnonymousTimelineItemId)
      {
        String str = paramAnonymousTimelineItemId.getItemId();
        int i = 0;
        int j = localArrayList1.size();
        while (i < j)
        {
          if (str.equals(((TimelineItem)localArrayList1.get(i)).getId()))
            return i;
          i++;
        }
        return -1;
      }

      public int getCount()
      {
        return localArrayList1.size();
      }
    });
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.BundleTimelineView
 * JD-Core Version:    0.6.2
 */