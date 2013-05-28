package com.google.glass.home.timeline;

import android.app.Activity;
import android.content.Context;
import android.content.Loader;
import android.database.Cursor;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.Adapter;
import com.google.glass.home.timeline.active.ActiveItemAdapter;
import com.google.glass.util.Assert;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.voice.VoiceConfig;
import java.util.ArrayList;
import java.util.List;

public abstract class MainTimelineView extends TimelineView
{
  static final String TAG = MainTimelineView.class.getSimpleName();
  private TimelineView.AdapterWrapper<ActiveItemAdapter> activeItemAdapter;
  private TimelineView.AdapterWrapper<?> historyTimelineAdapter;
  private TimelineView.AdapterWrapper<?> pinnedTimelineAdapter;
  private TimelineView.AdapterWrapper<?> settingsAdapter;

  public MainTimelineView(Context paramContext)
  {
    super(paramContext);
  }

  public MainTimelineView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MainTimelineView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public void clear()
  {
    this.settingsAdapter = null;
    this.pinnedTimelineAdapter = null;
    this.activeItemAdapter = null;
    this.historyTimelineAdapter = null;
    setAdapters(new TimelineView.AdapterWrapper[0]);
    updateViews(true);
  }

  protected abstract TimelineView.AdapterWrapper<ActiveItemAdapter> createActiveItemAdapter(Activity paramActivity);

  protected abstract TimelineView.AdapterWrapper<?> createSettingsAdapter(Activity paramActivity);

  protected abstract TimelineView.AdapterWrapper<?> createTimelineItemAdapter(Activity paramActivity, CachedBitmapFactory paramCachedBitmapFactory, boolean paramBoolean1, boolean paramBoolean2, List<Loader<Cursor>> paramList);

  public VoiceConfig getCurrentVoiceConfig()
  {
    if (getSelectedItemPosition() == getHomePosition())
      return VoiceConfig.GUARD;
    return VoiceConfig.OFF;
  }

  public int getFirstFutureItemPosition()
  {
    int i = 1;
    int k = getFirstPinnedItemPosition();
    if (k == getHomePosition())
    {
      Log.d(TAG, "Pinned adapter came back with home position, checking for settings cover view.");
      if (this.settingsAdapter != null)
      {
        Adapter localAdapter = this.settingsAdapter.getAdapter();
        if ((localAdapter != null) && (!localAdapter.isEmpty()))
        {
          Log.d(TAG, "settingsAdapter was not null or empty.");
          int m = getAdapterOffset(this.settingsAdapter);
          if (localAdapter.getCount() == i);
          while (true)
          {
            Assert.assertTrue(i);
            Log.d(TAG + "/getFirstFutureItemPosition", "base=" + m + ", offset=" + 0);
            return m + 0;
            int j = 0;
          }
        }
      }
    }
    Log.d(TAG, "Returning item from pinned adapter: " + k);
    return k;
  }

  public int getFirstHistoryItemPosition()
  {
    if (this.historyTimelineAdapter != null)
    {
      Adapter localAdapter = this.historyTimelineAdapter.getAdapter();
      if ((localAdapter != null) && (!localAdapter.isEmpty()))
      {
        int i = getAdapterOffset(this.historyTimelineAdapter);
        Log.d(TAG + "/getFirstHistoryItemPosition", "base=" + i + ", offset=" + 0);
        return i + 0;
      }
    }
    Log.d(TAG, "Failed to get a position from historyTimelineAdapter, switching to home position.");
    return getHomePosition();
  }

  public int getFirstPinnedItemPosition()
  {
    if (this.pinnedTimelineAdapter != null)
    {
      Adapter localAdapter = this.pinnedTimelineAdapter.getAdapter();
      if ((localAdapter != null) && (!localAdapter.isEmpty()))
      {
        Log.d(TAG, "... the pinnedTimelineAdapter");
        int i = getAdapterOffset(this.pinnedTimelineAdapter);
        int j = -1 + localAdapter.getCount();
        Log.d(TAG + "/getFirstPinnedItemPosition", "base=" + i + ", offset=" + j);
        return i + j;
      }
    }
    return getMostRelevantActiveItemPosition();
  }

  public int getHomePosition()
  {
    if (this.activeItemAdapter != null)
    {
      ActiveItemAdapter localActiveItemAdapter = (ActiveItemAdapter)this.activeItemAdapter.getAdapter();
      return getAdapterOffset(this.activeItemAdapter) + localActiveItemAdapter.getHomePosition();
    }
    Assert.assertIsTest();
    return 0;
  }

  public int getMostRelevantActiveItemPosition()
  {
    if (this.activeItemAdapter != null)
    {
      ActiveItemAdapter localActiveItemAdapter = (ActiveItemAdapter)this.activeItemAdapter.getAdapter();
      int i = getAdapterOffset(this.activeItemAdapter);
      int j = localActiveItemAdapter.getMostRelevantItemPosition();
      Log.d(TAG + "/getMostRelevantActiveItemPosition", "base=" + i + ", offset=" + j);
      return i + j;
    }
    Assert.assertIsTest();
    return getHomePosition();
  }

  public List<Loader<Cursor>> init(Activity paramActivity, CachedBitmapFactory paramCachedBitmapFactory)
  {
    ArrayList localArrayList = new ArrayList();
    this.settingsAdapter = createSettingsAdapter(paramActivity);
    this.pinnedTimelineAdapter = createTimelineItemAdapter(paramActivity, paramCachedBitmapFactory, true, false, localArrayList);
    this.activeItemAdapter = createActiveItemAdapter(paramActivity);
    this.historyTimelineAdapter = createTimelineItemAdapter(paramActivity, paramCachedBitmapFactory, false, true, localArrayList);
    TimelineView.AdapterWrapper[] arrayOfAdapterWrapper = new TimelineView.AdapterWrapper[4];
    arrayOfAdapterWrapper[0] = this.settingsAdapter;
    arrayOfAdapterWrapper[1] = this.pinnedTimelineAdapter;
    arrayOfAdapterWrapper[2] = this.activeItemAdapter;
    arrayOfAdapterWrapper[3] = this.historyTimelineAdapter;
    setAdapters(arrayOfAdapterWrapper);
    return localArrayList;
  }

  protected void onPreActivate()
  {
    super.onPreActivate();
    if (this.activeItemAdapter != null)
    {
      ((ActiveItemAdapter)this.activeItemAdapter.getAdapter()).activate();
      return;
    }
    Assert.assertIsTest();
  }

  public void onPreDeactivate()
  {
    super.onPreDeactivate();
    if (this.activeItemAdapter != null)
    {
      ((ActiveItemAdapter)this.activeItemAdapter.getAdapter()).deactivate();
      return;
    }
    Assert.assertIsTest();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.MainTimelineView
 * JD-Core Version:    0.6.2
 */