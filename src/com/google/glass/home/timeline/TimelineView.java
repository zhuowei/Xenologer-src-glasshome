package com.google.glass.home.timeline;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Adapter;
import android.widget.BaseAdapter;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.horizontalscroll.BaseHorizontalScrollView;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.Assert;
import com.google.glass.util.CompositeAdapter;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class TimelineView extends BaseHorizontalScrollView<TimelineItemId, TimelineItem>
{
  private static final String TAG = TimelineView.class.getSimpleName();
  protected static final AtomicInteger nextLoaderId = new AtomicInteger();
  private final DataSetObserver adapterObserver = new DataSetObserver()
  {
    public void onChanged()
    {
      Log.d(TimelineView.TAG, "onChanged");
      TimelineView.this.updateViews(true);
    }

    public void onInvalidated()
    {
      Log.d(TimelineView.TAG, "onInvalidated");
      TimelineView.this.updateViews(true);
    }
  };
  private UiPerformanceLog uiPerformanceLog;
  private List<AdapterWrapper<?>> wrappers;

  public TimelineView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public TimelineView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public TimelineView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, true);
    setWillNotDraw(false);
  }

  public void draw(Canvas paramCanvas)
  {
    if (this.uiPerformanceLog != null)
      this.uiPerformanceLog.onRenderStart();
    super.draw(paramCanvas);
    if (this.uiPerformanceLog != null)
      this.uiPerformanceLog.onRenderEnd();
  }

  public int findIdPosition(TimelineItemId paramTimelineItemId)
  {
    int i = 0;
    int j = -1;
    int k = 0;
    int m = this.wrappers.size();
    if (k < m)
    {
      AdapterWrapper localAdapterWrapper = (AdapterWrapper)this.wrappers.get(k);
      if (i != 0)
        Assert.assertFalse(localAdapterWrapper.matches(paramTimelineItemId));
      while (true)
      {
        k++;
        break;
        if (localAdapterWrapper.matches(paramTimelineItemId))
        {
          i = 1;
          j = localAdapterWrapper.findIdPosition(paramTimelineItemId);
          if (j >= 0)
            j += getAdapterOffset(localAdapterWrapper);
        }
      }
    }
    return j;
  }

  public int findItemPosition(TimelineItem paramTimelineItem)
  {
    return findIdPosition(new TimelineItemId(paramTimelineItem));
  }

  @VisibleForTesting
  int getAdapterOffset(AdapterWrapper<?> paramAdapterWrapper)
  {
    int i = 0;
    int j = 0;
    int k = this.wrappers.size();
    while (j < k)
    {
      AdapterWrapper localAdapterWrapper = (AdapterWrapper)this.wrappers.get(j);
      if (localAdapterWrapper == paramAdapterWrapper)
        return i;
      i += localAdapterWrapper.getAdapter().getCount();
      j++;
    }
    throw new IllegalStateException("Not our adapter.");
  }

  protected long getMaxItemTimestamp(boolean paramBoolean)
  {
    if (paramBoolean)
      return System.currentTimeMillis() + TimeUnit.DAYS.toMillis(30L);
    return 10000L + System.currentTimeMillis();
  }

  public View getViewForPosition(int paramInt)
  {
    return getAdapter().getView(paramInt, null, this);
  }

  public void rebindView(int paramInt, View paramView)
  {
    int i = 0;
    int j = this.wrappers.size();
    while (i < j)
    {
      AdapterWrapper localAdapterWrapper = (AdapterWrapper)this.wrappers.get(i);
      int k = localAdapterWrapper.getAdapter().getCount();
      if (paramInt < k)
      {
        localAdapterWrapper.rebind(paramInt, paramView);
        return;
      }
      paramInt -= k;
      i++;
    }
    throw new IllegalStateException("Illegal position: " + paramInt);
  }

  public void setAdapter(Adapter paramAdapter)
  {
    if (getAdapter() != null)
      getAdapter().unregisterDataSetObserver(this.adapterObserver);
    super.setAdapter(paramAdapter);
    if (paramAdapter != null)
      paramAdapter.registerDataSetObserver(this.adapterObserver);
  }

  @VisibleForTesting
  void setAdapters(AdapterWrapper<?>[] paramArrayOfAdapterWrapper)
  {
    this.wrappers = new ArrayList();
    if (paramArrayOfAdapterWrapper.length == 0)
      setAdapter(null);
    while (true)
    {
      return;
      if (paramArrayOfAdapterWrapper.length == 1)
      {
        this.wrappers.add(paramArrayOfAdapterWrapper[0]);
        setAdapter(paramArrayOfAdapterWrapper[0].getAdapter());
        return;
      }
      Adapter localAdapter = paramArrayOfAdapterWrapper[(-1 + paramArrayOfAdapterWrapper.length)].getAdapter();
      CompositeAdapter localCompositeAdapter = new CompositeAdapter(paramArrayOfAdapterWrapper[(-2 + paramArrayOfAdapterWrapper.length)].getAdapter(), localAdapter);
      for (int i = -3 + paramArrayOfAdapterWrapper.length; i >= 0; i--)
        localCompositeAdapter = new CompositeAdapter(paramArrayOfAdapterWrapper[i].getAdapter(), localCompositeAdapter);
      setAdapter(localCompositeAdapter);
      int j = paramArrayOfAdapterWrapper.length;
      for (int k = 0; k < j; k++)
      {
        AdapterWrapper<?> localAdapterWrapper = paramArrayOfAdapterWrapper[k];
        this.wrappers.add(localAdapterWrapper);
      }
    }
  }

  public void setUiPerformanceLog(UiPerformanceLog paramUiPerformanceLog)
  {
    this.uiPerformanceLog = paramUiPerformanceLog;
  }

  public void updateQueryParameters()
  {
    int i = 0;
    int j = this.wrappers.size();
    while (i < j)
    {
      ((AdapterWrapper)this.wrappers.get(i)).updateQueryParameters();
      i++;
    }
  }

  public void waitForLoad(TimelineItemId paramTimelineItemId, Runnable paramRunnable)
  {
    int i = 0;
    int j = 0;
    int k = this.wrappers.size();
    if (j < k)
    {
      AdapterWrapper localAdapterWrapper = (AdapterWrapper)this.wrappers.get(j);
      if (i != 0)
        Assert.assertFalse(localAdapterWrapper.matches(paramTimelineItemId));
      while (true)
      {
        j++;
        break;
        if (localAdapterWrapper.matches(paramTimelineItemId))
        {
          i = 1;
          localAdapterWrapper.waitForLoad(paramRunnable);
        }
      }
    }
  }

  @VisibleForTesting
  static abstract class AdapterWrapper<T extends Adapter>
  {
    final T adapter;

    AdapterWrapper(T paramT)
    {
      this.adapter = paramT;
    }

    abstract int findIdPosition(TimelineItemId paramTimelineItemId);

    T getAdapter()
    {
      return this.adapter;
    }

    abstract boolean matches(TimelineItemId paramTimelineItemId);

    void rebind(int paramInt, View paramView)
    {
    }

    void updateQueryParameters()
    {
    }

    void waitForLoad(Runnable paramRunnable)
    {
      paramRunnable.run();
    }
  }

  protected static class CompositeAdapterWrapper extends TimelineView.AdapterWrapper<BaseAdapter>
  {
    final TimelineView.AdapterWrapper<?> first;
    final TimelineView.AdapterWrapper<?> second;

    CompositeAdapterWrapper(TimelineView.AdapterWrapper<?> paramAdapterWrapper1, TimelineView.AdapterWrapper<?> paramAdapterWrapper2)
    {
      super();
      this.first = paramAdapterWrapper1;
      this.second = paramAdapterWrapper2;
    }

    int findIdPosition(TimelineItemId paramTimelineItemId)
    {
      int i;
      if (this.first.matches(paramTimelineItemId))
        i = this.first.findIdPosition(paramTimelineItemId);
      do
      {
        return i;
        if (!this.second.matches(paramTimelineItemId))
          break;
        i = this.second.findIdPosition(paramTimelineItemId);
      }
      while (i < 0);
      return i + this.first.getAdapter().getCount();
      return -1;
    }

    boolean matches(TimelineItemId paramTimelineItemId)
    {
      return (this.first.matches(paramTimelineItemId)) || (this.second.matches(paramTimelineItemId));
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.TimelineView
 * JD-Core Version:    0.6.2
 */