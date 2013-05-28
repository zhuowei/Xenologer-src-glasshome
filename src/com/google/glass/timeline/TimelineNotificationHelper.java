package com.google.glass.timeline;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.BroadcastUnderWakeLock;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.concurrent.Executor;

public class TimelineNotificationHelper
{
  public static final String ACTION_NOTIFY_TIMELINE_ITEM = "com.google.glass.action.NOTIFY_TIMELINE_ITEM";
  public static final String EXTRA_BUNDLE_ITEM_ID = "bundle_item_id";
  public static final String EXTRA_ITEM_ID = "item_id";
  public static final String EXTRA_NUM_NOTIFICATIONS = "numNotifications";
  private static final String TAG = TimelineNotificationHelper.class.getSimpleName();

  public static void notify(final Context paramContext, TimelineItem paramTimelineItem, final int paramInt)
  {
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        TimelineItem localTimelineItem1;
        TimelineItem localTimelineItem2;
        if ((this.val$item.hasBundleId()) && (!this.val$item.getIsBundleCover()) && (!TextUtils.isEmpty(this.val$item.getBundleId())))
        {
          Log.v(TimelineNotificationHelper.TAG, "Item is in a bundle, we must make sure we notify for the bundle cover: " + new TimelineItemId(this.val$item));
          Pair localPair = TimelineHelper.getBundleCover(paramContext.getContentResolver(), this.val$item.getBundleId());
          if (localPair == null)
          {
            Log.w(TimelineNotificationHelper.TAG, "Not able to find bundle cover for: " + new TimelineItemId(this.val$item));
            return;
          }
          localTimelineItem1 = (TimelineItem)localPair.first;
          if (((Integer)localPair.second).intValue() != 3)
            localTimelineItem2 = this.val$item;
        }
        while (true)
        {
          Log.v(TimelineNotificationHelper.TAG, "Notifying user of main timeline item: " + localTimelineItem1.getId());
          Intent localIntent = new Intent().setAction("com.google.glass.action.NOTIFY_TIMELINE_ITEM");
          localIntent.putExtra("item_id", new TimelineItemId(localTimelineItem1));
          if (localTimelineItem2 != null)
          {
            Log.v(TimelineNotificationHelper.TAG, "... and bundle timeline item: " + localTimelineItem2.getId());
            localIntent.putExtra("bundle_item_id", new TimelineItemId(localTimelineItem2));
          }
          localIntent.putExtra("numNotifications", paramInt);
          BroadcastUnderWakeLock.sendBroadcastUnderWakeLock(paramContext, localIntent, TimelineNotificationHelper.TAG + "_BroadcastWakeLock");
          return;
          localTimelineItem2 = null;
          continue;
          localTimelineItem1 = this.val$item;
          localTimelineItem2 = null;
        }
      }
    });
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.TimelineNotificationHelper
 * JD-Core Version:    0.6.2
 */