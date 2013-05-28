package com.google.glass.home.timeline;

import android.app.Activity;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Loader;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Adapter;
import com.google.glass.home.R.id;
import com.google.glass.home.timeline.active.ActiveItemAdapter;
import com.google.glass.home.timeline.active.SettingsItemAdapter;
import com.google.glass.home.timeline.database.TimelineCursorManager;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.timeline.active.ActiveItemApi;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.SettingsHelper;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class UserTimelineView extends MainTimelineView
{
  private static final long MIN_QUERY_PARAM_TIME_DELTA = TimeUnit.SECONDS.toMillis(1L);

  public UserTimelineView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public UserTimelineView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public UserTimelineView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected TimelineView.AdapterWrapper<ActiveItemAdapter> createActiveItemAdapter(Activity paramActivity)
  {
    return new TimelineView.AdapterWrapper(new ActiveItemAdapter(paramActivity, false))
    {
      public int findIdPosition(TimelineItemId paramAnonymousTimelineItemId)
      {
        return ((ActiveItemAdapter)getAdapter()).getPositionForItemId(paramAnonymousTimelineItemId.getItemId());
      }

      public boolean matches(TimelineItemId paramAnonymousTimelineItemId)
      {
        return ActiveItemApi.isActiveItemId(paramAnonymousTimelineItemId.getItemId());
      }
    };
  }

  protected TimelineView.AdapterWrapper<?> createSettingsAdapter(final Activity paramActivity)
  {
    return new TimelineView.AdapterWrapper(new SettingsItemAdapter(paramActivity))
    {
      final SettingsHelper helper = new SettingsHelper(paramActivity);

      public int findIdPosition(TimelineItemId paramAnonymousTimelineItemId)
      {
        return this.helper.getSettingsItemPosition(paramAnonymousTimelineItemId.getItemId());
      }

      public boolean matches(TimelineItemId paramAnonymousTimelineItemId)
      {
        return this.helper.isSettingsItemId(paramAnonymousTimelineItemId.getItemId());
      }
    };
  }

  protected TimelineView.AdapterWrapper<?> createTimelineItemAdapter(Activity paramActivity, CachedBitmapFactory paramCachedBitmapFactory, final boolean paramBoolean1, boolean paramBoolean2, List<Loader<Cursor>> paramList)
  {
    final CursorLoader localCursorLoader = TimelineHelper.createItemLoaderForTimeline(paramActivity, getMaxItemTimestamp(paramBoolean1), paramBoolean1, paramBoolean2);
    paramList.add(localCursorLoader);
    final ArrayList localArrayList = new ArrayList();
    final TimelineCursorManager local3 = new TimelineCursorManager(paramBoolean2)
    {
      public void onLoadComplete(Loader<Cursor> paramAnonymousLoader, Cursor paramAnonymousCursor)
      {
        super.onLoadComplete(paramAnonymousLoader, paramAnonymousCursor);
        Log.d(MainTimelineView.TAG, "New timeline database content loaded; updating views.");
        UserTimelineView.this.updateViews(true);
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
          ((Runnable)localIterator.next()).run();
        localArrayList.clear();
      }
    };
    localCursorLoader.registerListener(nextLoaderId.incrementAndGet(), local3);
    TimelineItemAdapter localTimelineItemAdapter = new TimelineItemAdapter(paramActivity, paramCachedBitmapFactory, local3, false, false);
    localTimelineItemAdapter.setRemainingTextListener(new TimelineItemAdapter.RemainingTextListener()
    {
      public void onRemainingText(TimelineItemId paramAnonymousTimelineItemId, String paramAnonymousString)
      {
        Assert.assertUiThread();
        int i = 0;
        int j = UserTimelineView.this.getChildCount();
        while (true)
        {
          if (i < j)
          {
            View localView = UserTimelineView.this.getCard(i);
            TimelineItem localTimelineItem = (TimelineItem)localView.getTag(R.id.tag_horizontal_scroll_item);
            if ((localTimelineItem != null) && (localTimelineItem.getId().equals(paramAnonymousTimelineItemId.getItemId())))
              localView.setTag(R.id.tag_item_read_more, Boolean.TRUE);
          }
          else
          {
            return;
          }
          i++;
        }
      }
    });
    return new TimelineView.AdapterWrapper(localTimelineItemAdapter)
    {
      long lastMaxItemTimestamp;

      public int findIdPosition(TimelineItemId paramAnonymousTimelineItemId)
      {
        return local3.find(paramAnonymousTimelineItemId);
      }

      public boolean matches(TimelineItemId paramAnonymousTimelineItemId)
      {
        if (paramAnonymousTimelineItemId.getItemId().startsWith("com.google.glass.non-database-item-id-prefix"));
        while (paramAnonymousTimelineItemId.isPinned() != paramBoolean1)
          return false;
        return true;
      }

      void rebind(int paramAnonymousInt, View paramAnonymousView)
      {
        ((TimelineItemAdapter)this.adapter).rebind(paramAnonymousInt, paramAnonymousView);
      }

      void updateQueryParameters()
      {
        long l = UserTimelineView.this.getMaxItemTimestamp(paramBoolean1);
        if (Math.abs(l - this.lastMaxItemTimestamp) > UserTimelineView.MIN_QUERY_PARAM_TIME_DELTA)
        {
          this.lastMaxItemTimestamp = l;
          String[] arrayOfString = TimelineHelper.getItemLoaderSelectArgs(l);
          Log.d(MainTimelineView.TAG, "Updating cursor select args: [" + TextUtils.join(",", arrayOfString) + "]");
          localCursorLoader.setSelectionArgs(arrayOfString);
          localCursorLoader.forceLoad();
        }
      }

      void waitForLoad(Runnable paramAnonymousRunnable)
      {
        localArrayList.add(paramAnonymousRunnable);
      }
    };
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.UserTimelineView
 * JD-Core Version:    0.6.2
 */