package com.google.glass.home.timeline;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Intent;
import android.database.Cursor;
import android.util.Log;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineNotificationHelper;
import com.google.googlex.glass.common.proto.TimelineItem;

public class TimelineNotificationService extends IntentService
{
  public static final String EXTRA_NOTIFY_TIME = "NOTIFY_TIME";
  public static final long FUTURE_NOTIFICATION_TIME_MS = 10000L;
  private static final String TAG = TimelineNotificationService.class.getSimpleName();

  public TimelineNotificationService()
  {
    super(TAG);
  }

  public static boolean isFuture(long paramLong)
  {
    return paramLong >= 10000L + System.currentTimeMillis();
  }

  private void scheduleNext(long paramLong)
  {
    PendingIntent localPendingIntent = PendingIntent.getService(this, 0, new Intent(this, TimelineNotificationService.class).putExtra("NOTIFY_TIME", paramLong), 134217728);
    AlarmManager localAlarmManager = (AlarmManager)getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    Log.v(TAG, "Schedule notification checking in " + (paramLong - System.currentTimeMillis()) / 1000L + "s");
    localAlarmManager.set(1, paramLong, localPendingIntent);
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    long l = paramIntent.getLongExtra("NOTIFY_TIME", System.currentTimeMillis());
    Log.v(TAG, "Running with minDeliveryTime: " + l);
    Cursor localCursor = null;
    Object localObject1 = null;
    Object localObject2 = null;
    try
    {
      localCursor = TimelineHelper.queryItemsByDeliveryTime(this, l);
      while ((localCursor.moveToNext()) && (localObject2 == null))
      {
        TimelineItem localTimelineItem = TimelineHelper.fromCursor(localCursor);
        boolean bool = isFuture(TimelineHelper.getDeliveryTime(localTimelineItem));
        if (!bool)
          localObject1 = localTimelineItem;
        else
          localObject2 = localTimelineItem;
      }
      if (localCursor != null)
        localCursor.close();
      if (localObject1 != null)
        TimelineNotificationHelper.notify(this, localObject1, 1);
      if (localObject2 != null)
        scheduleNext(TimelineHelper.getDeliveryTime(localObject2));
      return;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.TimelineNotificationService
 * JD-Core Version:    0.6.2
 */