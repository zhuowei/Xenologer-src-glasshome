package com.google.glass.home.timeline;

import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.timeline.TimelineHelper;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

class TimelineNotificationFilter
{
  private static final long NOTIFICATION_THRESHOLD = TimeUnit.MINUTES.toMillis(10L);
  private static final String TAG = TimelineNotificationFilter.class.getSimpleName();
  private long latestNotificationTime = 0L;

  Result filter(List<TimelineItem> paramList, long paramLong)
  {
    Object localObject = null;
    boolean bool = false;
    long l1 = System.currentTimeMillis();
    int i = 0;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      TimelineItem localTimelineItem = (TimelineItem)localIterator.next();
      if (!localTimelineItem.hasNotification())
      {
        Log.v(TAG, "Item " + localTimelineItem.getId() + " has no notification config.");
      }
      else if (TimelineNotificationService.isFuture(TimelineHelper.getDeliveryTime(localTimelineItem)))
      {
        Log.v(TAG, "Item " + localTimelineItem.getId() + " asks for future notification.");
        bool = true;
      }
      else
      {
        long l2 = getNotificationTime(localTimelineItem, paramLong);
        if ((l2 > l1 - NOTIFICATION_THRESHOLD) && (l2 > this.latestNotificationTime))
        {
          Log.v(TAG, "Item " + localTimelineItem.getId() + " is getting notified because its notification time " + l2 + " > latest notification time " + this.latestNotificationTime + ".");
          i++;
          this.latestNotificationTime = l2;
          localObject = localTimelineItem;
        }
      }
    }
    return new Result(localObject, bool, i);
  }

  @VisibleForTesting
  long getNotificationTime(TimelineItem paramTimelineItem, long paramLong)
  {
    long l = TimelineHelper.getDeliveryTime(paramTimelineItem);
    if (l == 0L)
    {
      l = TimelineHelper.getDisplayTime(paramTimelineItem);
      if (TimelineNotificationService.isFuture(l))
        l = paramLong;
    }
    return l;
  }

  static class Result
  {
    private final boolean hasFutureNotification;
    private final TimelineItem itemToNotify;
    private final int numNotifications;

    Result(TimelineItem paramTimelineItem, boolean paramBoolean, int paramInt)
    {
      this.itemToNotify = paramTimelineItem;
      this.hasFutureNotification = paramBoolean;
      this.numNotifications = paramInt;
    }

    public TimelineItem getItemToNotify()
    {
      return this.itemToNotify;
    }

    public int getNumNotifications()
    {
      return this.numNotifications;
    }

    public boolean hasFutureNotification()
    {
      return this.hasFutureNotification;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.TimelineNotificationFilter
 * JD-Core Version:    0.6.2
 */