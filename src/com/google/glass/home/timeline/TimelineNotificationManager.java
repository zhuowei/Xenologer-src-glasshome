package com.google.glass.home.timeline;

import android.content.Intent;
import com.google.glass.home.HomeApplication;
import com.google.glass.timeline.TimelineNotificationHelper;
import com.google.glass.util.CachedBitmapFactory;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.util.Iterator;
import java.util.List;

public class TimelineNotificationManager
{
  private static TimelineNotificationManager notificationManager;
  private final HomeApplication application;
  private final TimelineNotificationFilter filter;

  private TimelineNotificationManager(HomeApplication paramHomeApplication)
  {
    this.application = paramHomeApplication;
    this.filter = new TimelineNotificationFilter();
  }

  public static TimelineNotificationManager getInstance()
  {
    return notificationManager;
  }

  public static void initialize(HomeApplication paramHomeApplication)
  {
    if (notificationManager != null)
      throw new IllegalStateException("There is already a NotificationManager created!");
    notificationManager = new TimelineNotificationManager(paramHomeApplication);
    paramHomeApplication.startService(new Intent(paramHomeApplication, TimelineNotificationService.class));
  }

  private void loadAttachments(TimelineItem paramTimelineItem)
  {
    Iterator localIterator = paramTimelineItem.getAttachmentList().iterator();
    while (localIterator.hasNext())
    {
      Attachment localAttachment = (Attachment)localIterator.next();
      this.application.getBitmapFactory().decodeAttachment(localAttachment, false);
    }
  }

  public void processNotifications(List<TimelineItem> paramList, long paramLong)
  {
    TimelineNotificationFilter.Result localResult = this.filter.filter(paramList, paramLong);
    TimelineItem localTimelineItem = localResult.getItemToNotify();
    if (localTimelineItem != null)
    {
      if (localTimelineItem.getAttachmentCount() > 0)
        loadAttachments(localTimelineItem);
      TimelineNotificationHelper.notify(this.application, localTimelineItem, localResult.getNumNotifications());
    }
    if (localResult.hasFutureNotification())
      this.application.startService(new Intent(this.application, TimelineNotificationService.class));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.TimelineNotificationManager
 * JD-Core Version:    0.6.2
 */