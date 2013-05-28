package com.google.glass.home.timeline.active;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.glass.home.R.id;
import com.google.glass.horizontalscroll.ViewRecycler;
import com.google.glass.ongoing.OngoingActivityManager.ActivityType;
import com.google.glass.ongoing.OngoingActivityService;
import com.google.glass.ongoing.OngoingActivityService.ActivityChangeListener;
import com.google.glass.ongoing.OngoingActivityService.ActivityRecord;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.active.ActiveItemApi;
import com.google.glass.timeline.active.ActiveItemView;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ActiveItemAdapter extends BaseAdapter
  implements ViewRecycler, OngoingActivityService.ActivityChangeListener
{
  private static final String TAG = ActiveItemAdapter.class.getSimpleName();
  private final Activity context;
  private final List<ActiveItemView> data = new ArrayList();
  private final boolean isGuestMode;

  public ActiveItemAdapter(Activity paramActivity, boolean paramBoolean)
  {
    this.context = paramActivity;
    this.isGuestMode = paramBoolean;
    onActivityAdded(OngoingActivityManager.ActivityType.HOME, new Bundle());
  }

  private ActiveItemView createViewForId(OngoingActivityManager.ActivityType paramActivityType)
  {
    switch (2.$SwitchMap$com$google$glass$ongoing$OngoingActivityManager$ActivityType[paramActivityType.ordinal()])
    {
    default:
      return null;
    case 1:
      return new HangoutItemView(this.context);
    case 2:
      return new HomeItemView(this.context);
    case 3:
      return new NavigationItemView(this.context);
    case 4:
      return new CallItemView(this.context);
    case 5:
    }
    return new ReloginView(this.context);
  }

  private int getPositionForType(OngoingActivityManager.ActivityType paramActivityType)
  {
    for (int i = 0; i < this.data.size(); i++)
      if (((ActiveItemView)this.data.get(i)).getActivityType().equals(paramActivityType))
        return i;
    return -1;
  }

  private void onActivityAdded(OngoingActivityManager.ActivityType paramActivityType, Bundle paramBundle)
  {
    boolean bool1 = OngoingActivityManager.ActivityType.HOME.equals(paramActivityType);
    boolean bool2 = OngoingActivityManager.ActivityType.NAVIGATION.equals(paramActivityType);
    if ((this.isGuestMode) && (!bool1) && (!bool2))
    {
      Log.d(TAG, "Ignoring item " + paramActivityType + "; only home/clock and Nav allowed in guest mode.");
      return;
    }
    if ((OngoingActivityManager.ActivityType.PHONE_CALL.equals(paramActivityType)) && (!Labs.isEnabled(Labs.Feature.BLUETOOTH_HEADSET)))
    {
      Log.w(TAG, "Tried to add a phone call active item, but Phone Call lab is disabled.");
      return;
    }
    Log.d(TAG, "Adding item " + paramActivityType);
    ActiveItemView localActiveItemView = createViewForId(paramActivityType);
    localActiveItemView.setParameters(paramBundle);
    this.data.add(0, localActiveItemView);
    notifyDataSetChanged();
  }

  private void onActivityRemoved(OngoingActivityManager.ActivityType paramActivityType, final boolean paramBoolean)
  {
    int i = getPositionForType(paramActivityType);
    if (i != -1)
    {
      ActiveItemView localActiveItemView = (ActiveItemView)this.data.remove(i);
      Log.d(TAG, "Removing item " + paramActivityType + " (" + getCount() + " left)," + " going home? " + paramBoolean);
      localActiveItemView.onUnload();
      localActiveItemView.onRemove();
      this.context.runOnUiThread(new Runnable()
      {
        public void run()
        {
          ActiveItemAdapter.this.notifyDataSetChanged();
          if (paramBoolean)
            TimelineHelper.goToTimelineHome(ActiveItemAdapter.this.context);
        }
      });
    }
  }

  public void activate()
  {
    Log.d(TAG, "Activating adapter.");
    HashSet localHashSet = new HashSet();
    localHashSet.add(OngoingActivityManager.ActivityType.HOME);
    OngoingActivityService.ActivityRecord[] arrayOfActivityRecord = OngoingActivityService.getOngoingActivities();
    int i = arrayOfActivityRecord.length;
    int j = 0;
    if (j < i)
    {
      OngoingActivityService.ActivityRecord localActivityRecord = arrayOfActivityRecord[j];
      if (getPositionForType(localActivityRecord.getActivityType()) == -1)
        onActivityAdded(localActivityRecord);
      while (true)
      {
        localHashSet.add(localActivityRecord.getActivityType());
        j++;
        break;
        onActivityUpdated(localActivityRecord);
      }
    }
    for (int k = 0; k < this.data.size(); k++)
      if (!localHashSet.contains(((ActiveItemView)this.data.get(k)).getActivityType()))
      {
        List localList = this.data;
        int m = k - 1;
        onActivityRemoved(((ActiveItemView)localList.get(k)).getActivityType(), false);
        k = m;
      }
    OngoingActivityService.addListener(this);
  }

  public void deactivate()
  {
    Log.d(TAG, "Deactiviting adapter.");
    OngoingActivityService.removeListener(this);
  }

  public int getCount()
  {
    return this.data.size();
  }

  public int getHomePosition()
  {
    return getPositionForType(OngoingActivityManager.ActivityType.HOME);
  }

  public Object getItem(int paramInt)
  {
    return ((ActiveItemView)this.data.get(paramInt)).getTimelineItem();
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public int getMostRelevantItemPosition()
  {
    int i = getHomePosition();
    if (getCount() > 1)
      i--;
    return i;
  }

  public int getPositionForItemId(String paramString)
  {
    return getPositionForType(ActiveItemApi.convertToEnum(paramString));
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ActiveItemView localActiveItemView = (ActiveItemView)this.data.get(paramInt);
    TimelineItem localTimelineItem = localActiveItemView.getTimelineItem();
    localActiveItemView.setTag(R.id.tag_horizontal_scroll_item, localTimelineItem);
    localActiveItemView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
    return localActiveItemView;
  }

  public boolean isEmpty()
  {
    return this.data.isEmpty();
  }

  public void onActivityAdded(OngoingActivityService.ActivityRecord paramActivityRecord)
  {
    onActivityAdded(paramActivityRecord.getActivityType(), paramActivityRecord.getParams());
  }

  public void onActivityRemoved(OngoingActivityService.ActivityRecord paramActivityRecord)
  {
    onActivityRemoved(paramActivityRecord.getActivityType(), true);
  }

  public void onActivityUpdated(OngoingActivityService.ActivityRecord paramActivityRecord)
  {
    int i = getPositionForType(paramActivityRecord.getActivityType());
    if (i != -1)
    {
      Log.d(TAG, "Updating item " + paramActivityRecord.getActivityType());
      ((ActiveItemView)this.data.get(i)).setParameters(paramActivityRecord.getParams());
      notifyDataSetChanged();
    }
  }

  public void recycleView(View paramView)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.active.ActiveItemAdapter
 * JD-Core Version:    0.6.2
 */