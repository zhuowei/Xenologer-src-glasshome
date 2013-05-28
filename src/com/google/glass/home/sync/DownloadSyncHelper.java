package com.google.glass.home.sync;

import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.timeline.TimelineNotificationManager;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponse;
import com.google.glass.net.ServerConstants.Action;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.Clock;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SettingsSecure;
import com.google.glass.util.WifiHelper;
import com.google.googlex.glass.common.proto.Select;
import com.google.googlex.glass.common.proto.Select.Builder;
import com.google.googlex.glass.common.proto.SyncRequest;
import com.google.googlex.glass.common.proto.SyncRequest.Builder;
import com.google.googlex.glass.common.proto.SyncResponse;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem.SyncStatus;
import com.google.protobuf.ByteString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

class DownloadSyncHelper extends AbstractTimelineSyncHelper
{

  @VisibleForTesting
  static final int NUM_ITEMS_SYNCED_PER_REQUEST = 200;
  private static final String TAG = DownloadSyncHelper.class.getSimpleName();
  private final Clock clock;
  private final TimelineNotificationManager notificationManager;
  private final TimelineSyncWindowHelper syncWindowHelper;
  private final TimelineHelper timelineHelper;

  DownloadSyncHelper(HomeApplication paramHomeApplication, SyncStatusReporter paramSyncStatusReporter, BatteryHelper paramBatteryHelper, PowerHelper paramPowerHelper, WifiHelper paramWifiHelper, Clock paramClock, TimelineNotificationManager paramTimelineNotificationManager, TimelineHelper paramTimelineHelper, TimelineSyncWindowHelper paramTimelineSyncWindowHelper)
  {
    super(paramHomeApplication, paramSyncStatusReporter, paramBatteryHelper, paramPowerHelper, paramWifiHelper);
    this.clock = paramClock;
    this.notificationManager = paramTimelineNotificationManager;
    this.timelineHelper = paramTimelineHelper;
    this.syncWindowHelper = paramTimelineSyncWindowHelper;
  }

  private SyncRequest createFromCloudRequest(TimelineSyncWindow paramTimelineSyncWindow)
  {
    Select.Builder localBuilder = Select.newBuilder().setStartTime(paramTimelineSyncWindow.getStartTime()).setMaxItems(200);
    if (paramTimelineSyncWindow.getContinuationToken() != null)
      localBuilder.setContinuationToken(ByteString.copyFrom(paramTimelineSyncWindow.getContinuationToken()));
    return createSyncRequestBuilder(new SettingsSecure(this.application.getContentResolver())).setSelect(localBuilder).build();
  }

  private ProtoResponse<SyncResponse> dispatchFromCloudRequest(SyncRequest paramSyncRequest)
  {
    return this.application.getSecondaryRequestDispatcher().blockingDispatch(ServerConstants.Action.TIMELINE_SYNC, paramSyncRequest, SyncResponse.PARSER, true);
  }

  private TimelineSyncWindow handleItemsSyncedFromCloud(TimelineSyncWindow paramTimelineSyncWindow, SyncResponse paramSyncResponse, long paramLong, SyncStats paramSyncStats)
  {
    if (paramTimelineSyncWindow == null)
      return null;
    Log.v(TAG, "Received items from server [count=" + paramSyncResponse.getSelectedItemsCount() + "].");
    ArrayList localArrayList = Lists.newArrayListWithExpectedSize(paramSyncResponse.getSelectedItemsCount());
    Iterator localIterator = paramSyncResponse.getSelectedItemsList().iterator();
    while (localIterator.hasNext())
    {
      TimelineItem localTimelineItem = (TimelineItem)localIterator.next();
      localArrayList.add(TimelineItem.newBuilder(localTimelineItem).setCloudSyncStatus(TimelineItem.SyncStatus.SYNCED).build());
      paramSyncStats.trackDownload(localTimelineItem.getSource(), localTimelineItem.getSerializedSize(), paramLong / paramSyncResponse.getSelectedItemsCount());
    }
    int i = this.timelineHelper.bulkInsertTimelineItem(this.application, localArrayList);
    if (i != localArrayList.size())
      Log.w(TAG, "Partial bulk insert [itemCount=" + localArrayList.size() + ", insertCount=" + i + "].");
    TimelineSyncWindow localTimelineSyncWindow;
    if (localArrayList.size() < 200)
    {
      this.syncWindowHelper.delete(paramTimelineSyncWindow);
      localTimelineSyncWindow = null;
    }
    while (true)
    {
      this.syncWindowHelper.updateMaxWriteTimestamp(paramSyncResponse.getSelectMaxWriteTimestamp());
      long l = TimeUnit.MICROSECONDS.toMillis(paramSyncResponse.getSelectMaxWriteTimestamp());
      this.notificationManager.processNotifications(paramSyncResponse.getSelectedItemsList(), l);
      return localTimelineSyncWindow;
      localTimelineSyncWindow = new TimelineSyncWindow(paramTimelineSyncWindow.getStartTime(), paramSyncResponse.getSelectContinuationToken().toByteArray());
      this.syncWindowHelper.update(localTimelineSyncWindow);
    }
  }

  public void sync(SyncStats paramSyncStats)
  {
    if (!this.syncReporter.shouldRetry())
    {
      Log.v(TAG, "Not syncing to device because it is too early to retry.");
      getUserEventHelper().log(UserEventAction.TIMELINE_DOWNSTREAM_SYNC_BACKOFF);
      return;
    }
    Log.v(TAG, "Fetching unsynced items from server.");
    long l1 = this.clock.uptimeMillis();
    long l2 = 0L;
    getUserEventHelper().log(UserEventAction.TIMELINE_DOWNSTREAM_SYNC_STARTED);
    Iterator localIterator = this.syncWindowHelper.list().iterator();
    while (localIterator.hasNext())
    {
      TimelineSyncWindow localTimelineSyncWindow = (TimelineSyncWindow)localIterator.next();
      do
      {
        Log.v(TAG, "Requesting sync [window=" + localTimelineSyncWindow + "].");
        long l3 = this.clock.uptimeMillis();
        ProtoResponse localProtoResponse = dispatchFromCloudRequest(createFromCloudRequest(localTimelineSyncWindow));
        long l4 = this.clock.uptimeMillis() - l3;
        if ((localProtoResponse == null) || (!localProtoResponse.isSuccess()))
        {
          Log.e(TAG, "Error while performing downstream timeline sync.");
          this.syncReporter.handleFail();
          return;
        }
        this.syncReporter.handleSuccess();
        SyncResponse localSyncResponse = (SyncResponse)localProtoResponse.getResponseProto();
        localTimelineSyncWindow = handleItemsSyncedFromCloud(localTimelineSyncWindow, localSyncResponse, l4, paramSyncStats);
        l2 += localSyncResponse.getSerializedSize();
      }
      while (localTimelineSyncWindow != null);
    }
    logSyncMetrics(UserEventAction.TIMELINE_DOWNSTREAM_SYNC_FINISHED, l2, this.clock.uptimeMillis() - l1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.DownloadSyncHelper
 * JD-Core Version:    0.6.2
 */