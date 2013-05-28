package com.google.glass.home;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.glass.ongoing.OngoingActivityManager;
import com.google.glass.ongoing.OngoingActivityManager.ActivityType;
import com.google.glass.ongoing.OngoingActivityService;
import com.google.glass.timeline.active.ActiveItemApi;
import com.google.glass.util.SafeBroadcastReceiver;

public final class ReloginReceiver extends SafeBroadcastReceiver
{
  private static final String TAG = ReloginReceiver.class.getSimpleName();

  private final void hideActivity(Context paramContext)
  {
    Log.d(getTag(), "Hiding the relogin active item.");
    OngoingActivityManager.getInstance(paramContext).hideOngoingActivity(OngoingActivityManager.ActivityType.RELOGIN);
  }

  private final void showActivityIfNecessary(Context paramContext)
  {
    if (OngoingActivityService.isActivityOngoing(OngoingActivityManager.ActivityType.RELOGIN))
    {
      Log.d(getTag(), "Activity is already ongoing, not showing the item.");
      return;
    }
    Log.d(getTag(), "Showing the relogin active item.");
    OngoingActivityManager.getInstance(paramContext).showOngoingActivity(OngoingActivityManager.ActivityType.RELOGIN, null);
    ActiveItemApi.goToActiveTimeline(paramContext, OngoingActivityManager.ActivityType.RELOGIN);
  }

  protected String getTag()
  {
    return TAG;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("com.google.glass.action.RELOGIN_REQUIRED".equals(str))
    {
      showActivityIfNecessary(paramContext);
      return;
    }
    if ("com.google.glass.action.RELOGIN_HIDE".equals(str))
    {
      hideActivity(paramContext);
      return;
    }
    Log.w(getTag(), "Unknown action received: " + paramIntent);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.ReloginReceiver
 * JD-Core Version:    0.6.2
 */