package com.google.glass.home.timeline;

import android.app.Activity;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Loader;
import android.database.Cursor;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Adapter;
import android.widget.BaseAdapter;
import com.google.glass.home.timeline.active.ActiveItemAdapter;
import com.google.glass.home.timeline.active.GuestSettingsItemAdapter;
import com.google.glass.home.timeline.database.TimelineCursorManager;
import com.google.glass.home.timeline.guest.GuestTimelineItemAdapter;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.timeline.active.ActiveItemApi;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.SettingsHelper;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class GuestTimelineView extends MainTimelineView
{
  public GuestTimelineView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public GuestTimelineView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public GuestTimelineView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private TimelineView.AdapterWrapper<?> createDatabaseAdapter(Activity paramActivity, CachedBitmapFactory paramCachedBitmapFactory, final boolean paramBoolean1, boolean paramBoolean2, List<Loader<Cursor>> paramList)
  {
    CursorLoader localCursorLoader = TimelineHelper.createItemLoaderForGuestTimeline(paramActivity, paramBoolean1, paramBoolean2, new SettingsHelper(paramActivity).getGuestModeToggleTime());
    paramList.add(localCursorLoader);
    final TimelineCursorManager local4 = new TimelineCursorManager(paramBoolean2)
    {
      public void onLoadComplete(Loader<Cursor> paramAnonymousLoader, Cursor paramAnonymousCursor)
      {
        super.onLoadComplete(paramAnonymousLoader, paramAnonymousCursor);
        Log.d(MainTimelineView.TAG, "New timeline database content loaded; updating views.");
        GuestTimelineView.this.updateViews(true);
      }
    };
    localCursorLoader.registerListener(nextLoaderId.incrementAndGet(), local4);
    return new TimelineView.AdapterWrapper(new TimelineItemAdapter(paramActivity, paramCachedBitmapFactory, local4, false, false))
    {
      public int findIdPosition(TimelineItemId paramAnonymousTimelineItemId)
      {
        return local4.find(paramAnonymousTimelineItemId);
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

      void waitForLoad(Runnable paramAnonymousRunnable)
      {
        paramAnonymousRunnable.run();
      }
    };
  }

  protected TimelineView.AdapterWrapper<ActiveItemAdapter> createActiveItemAdapter(Activity paramActivity)
  {
    return new TimelineView.AdapterWrapper(new ActiveItemAdapter(paramActivity, true))
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
    return new TimelineView.AdapterWrapper(new GuestSettingsItemAdapter(paramActivity))
    {
      final SettingsHelper settingsHelper = new SettingsHelper(paramActivity);

      int findIdPosition(TimelineItemId paramAnonymousTimelineItemId)
      {
        return this.settingsHelper.getSettingsItemPosition(paramAnonymousTimelineItemId.getItemId());
      }

      boolean matches(TimelineItemId paramAnonymousTimelineItemId)
      {
        return this.settingsHelper.isSettingsItemId(paramAnonymousTimelineItemId.getItemId());
      }
    };
  }

  protected TimelineView.AdapterWrapper<?> createTimelineItemAdapter(Activity paramActivity, CachedBitmapFactory paramCachedBitmapFactory, boolean paramBoolean1, boolean paramBoolean2, List<Loader<Cursor>> paramList)
  {
    TimelineView.AdapterWrapper local3 = new TimelineView.AdapterWrapper(new GuestTimelineItemAdapter(paramActivity, paramCachedBitmapFactory, paramBoolean1))
    {
      int findIdPosition(TimelineItemId paramAnonymousTimelineItemId)
      {
        return ((GuestTimelineItemAdapter)getAdapter()).getPosition(paramAnonymousTimelineItemId);
      }

      boolean matches(TimelineItemId paramAnonymousTimelineItemId)
      {
        return ((GuestTimelineItemAdapter)getAdapter()).matches(paramAnonymousTimelineItemId);
      }
    };
    TimelineView.AdapterWrapper localAdapterWrapper = createDatabaseAdapter(paramActivity, paramCachedBitmapFactory, paramBoolean1, paramBoolean2, paramList);
    if (paramBoolean1)
      return new TimelineView.CompositeAdapterWrapper(local3, localAdapterWrapper);
    return new TimelineView.CompositeAdapterWrapper(localAdapterWrapper, local3);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.GuestTimelineView
 * JD-Core Version:    0.6.2
 */