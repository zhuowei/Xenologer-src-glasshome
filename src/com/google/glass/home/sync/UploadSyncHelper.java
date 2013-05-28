package com.google.glass.home.sync;

import android.util.Log;
import android.util.Pair;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.glass.home.HomeApplication;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponse;
import com.google.glass.net.ServerConstants.Action;
import com.google.glass.timeline.AttachmentHelper;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineHelper.GetPendingActionsResponse;
import com.google.glass.timeline.TimelineHelper.Update;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.Clock;
import com.google.glass.util.FileSaver;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.LogHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SettingsSecure;
import com.google.glass.util.WifiHelper;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.Attachment.Builder;
import com.google.googlex.glass.common.proto.Delete;
import com.google.googlex.glass.common.proto.Delete.Builder;
import com.google.googlex.glass.common.proto.InsertReplaceOnConflict;
import com.google.googlex.glass.common.proto.InsertReplaceOnConflict.Builder;
import com.google.googlex.glass.common.proto.MenuItem;
import com.google.googlex.glass.common.proto.MenuItem.Action;
import com.google.googlex.glass.common.proto.MenuItem.Builder;
import com.google.googlex.glass.common.proto.SyncRequest;
import com.google.googlex.glass.common.proto.SyncRequest.Builder;
import com.google.googlex.glass.common.proto.SyncResponse;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem.SyncProtocol;
import com.google.googlex.glass.common.proto.UserAction;
import com.google.googlex.glass.common.proto.UserAction.Type;
import com.google.protobuf.ByteString;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import org.apache.http.auth.InvalidCredentialsException;

class UploadSyncHelper extends AbstractTimelineSyncHelper
{
  private static final String TAG = UploadSyncHelper.class.getSimpleName();
  private static final Set<String> UPLOADABLE_CONTENT_TYPES = ImmutableSet.of("image/jpeg", "video/mp4", "text/plain", "image/png", "proto/search");
  private final AttachmentHelper attachmentHelper;
  private final AttachmentUploadTracker attachmentTracker;
  private final Clock clock;
  private final Set<String> failedToSyncTimelineIds;
  private final FileHelper fileHelper;
  private boolean isUploadingOpportunisticItem;
  private final TimelineHelper timelineHelper;

  UploadSyncHelper(HomeApplication paramHomeApplication, SyncStatusReporter paramSyncStatusReporter, BatteryHelper paramBatteryHelper, PowerHelper paramPowerHelper, WifiHelper paramWifiHelper, AttachmentHelper paramAttachmentHelper, TimelineHelper paramTimelineHelper, Clock paramClock)
  {
    super(paramHomeApplication, paramSyncStatusReporter, paramBatteryHelper, paramPowerHelper, paramWifiHelper);
    this.attachmentHelper = paramAttachmentHelper;
    this.timelineHelper = paramTimelineHelper;
    this.clock = paramClock;
    this.failedToSyncTimelineIds = Sets.newHashSet();
    this.fileHelper = new FileHelper();
    this.attachmentTracker = new AttachmentUploadTracker(paramHomeApplication);
  }

  private boolean addAttachments(TimelineItem.Builder paramBuilder, List<Attachment> paramList, UploadedBytesCounter paramUploadedBytesCounter, SyncStats paramSyncStats)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Attachment localAttachment = (Attachment)localIterator.next();
      if (!isUploadableAttachment(localAttachment))
      {
        paramBuilder.addAttachment(localAttachment);
      }
      else
      {
        String str;
        try
        {
          str = transferAndCacheAttachment(localAttachment, paramBuilder, paramUploadedBytesCounter, paramSyncStats);
          if (str != null)
            break label116;
          Log.w(TAG, "Failed to transfer attachment. [attachment=" + localAttachment + "]");
          return false;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          Log.e(TAG, "Skipping upload of missing file", localFileNotFoundException);
        }
        continue;
        label116: Log.v(TAG, "Attachment transferred successfully. [attachmentId=" + str + "]");
        Log.d(TAG, "Setting ID. [id=" + str + "]");
        paramBuilder.addAttachment(Attachment.newBuilder(localAttachment).setId(str).build());
        try
        {
          if (!this.attachmentTracker.setAttachmentIdForPath(localAttachment.getClientCachePath(), str))
            Log.e(TAG, "Couldn't store attachment ID in the tracker -- we might upload twice!");
        }
        catch (IOException localIOException)
        {
          Log.e(TAG, "Couldn't store attachment ID in the tracker -- we might upload twice!", localIOException);
        }
      }
    }
    return true;
  }

  private TimelineItem addDeprecatedPendingActions(TimelineItem paramTimelineItem, List<UserAction> paramList)
  {
    TimelineItem.Builder localBuilder = null;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      UserAction localUserAction = (UserAction)localIterator.next();
      if (localUserAction.getType() == UserAction.Type.CUSTOM)
      {
        if (localBuilder == null)
          localBuilder = paramTimelineItem.toBuilder();
        localBuilder.addPendingAction(MenuItem.newBuilder().setAction(MenuItem.Action.CUSTOM).setId(localUserAction.getPayload()));
      }
    }
    if (localBuilder != null)
      paramTimelineItem = localBuilder.build();
    return paramTimelineItem;
  }

  private SyncRequest createUpstreamSyncRequest(TimelineItem paramTimelineItem1, TimelineItem paramTimelineItem2, TimelineHelper.GetPendingActionsResponse paramGetPendingActionsResponse)
  {
    SyncRequest.Builder localBuilder = createSyncRequestBuilder(new SettingsSecure(this.application.getContentResolver()));
    localBuilder.setSupportsUserActions(true);
    if (paramTimelineItem1.getIsDeleted())
      localBuilder.addDelete(Delete.newBuilder().setTimelineItemId(paramTimelineItem1.getId()).addAllUserAction(paramGetPendingActionsResponse.actions));
    while (true)
    {
      return localBuilder.build();
      TimelineItem localTimelineItem = addDeprecatedPendingActions(paramTimelineItem2, paramGetPendingActionsResponse.actions);
      localBuilder.addInsertReplaceOnConflict(InsertReplaceOnConflict.newBuilder().setTimelineItem(localTimelineItem).addAllUserAction(paramGetPendingActionsResponse.actions));
    }
  }

  private List<TimelineItem.SyncProtocol> getAllowedSyncProtocols()
  {
    TimelineItem.SyncProtocol[] arrayOfSyncProtocol = new TimelineItem.SyncProtocol[1];
    arrayOfSyncProtocol[0] = TimelineItem.SyncProtocol.ALWAYS;
    ArrayList localArrayList = Lists.newArrayList(arrayOfSyncProtocol);
    if ((this.wifiHelper.isConnected()) && (this.batteryHelper.isPowered()))
      localArrayList.add(TimelineItem.SyncProtocol.OPPORTUNISTIC);
    return localArrayList;
  }

  private boolean handleItemsSyncedToCloud(Queue<TimelineItem> paramQueue, SyncResponse paramSyncResponse, TimelineItem paramTimelineItem)
  {
    if ((paramQueue == null) || (paramQueue.isEmpty()))
      return false;
    String str = ((TimelineItem)paramQueue.peek()).getId();
    if ((this.failedToSyncTimelineIds.contains(str)) || (paramSyncResponse.getInsertFailedItemIdsList().contains(str)))
    {
      Log.v(TAG, "Failed to sync [itemId=" + str + "].");
      this.failedToSyncTimelineIds.clear();
      this.syncReporter.handleFail();
      return false;
    }
    paramQueue.remove();
    Log.v(TAG, "Successfully synced to cloud [itemId=" + paramTimelineItem.getId() + "].");
    markAsSynced(paramTimelineItem);
    this.syncReporter.handleSuccess();
    return true;
  }

  private boolean isUploadableAttachment(Attachment paramAttachment)
  {
    return UPLOADABLE_CONTENT_TYPES.contains(paramAttachment.getContentType());
  }

  private void markAsSynced(final TimelineItem paramTimelineItem)
  {
    TimelineHelper.atomicUpdateTimelineItem(new TimelineHelper.Update()
    {
      public TimelineItem onExecute()
      {
        TimelineItem localTimelineItem1 = paramTimelineItem;
        TimelineItem localTimelineItem2 = UploadSyncHelper.this.timelineHelper.queryTimelineItem(UploadSyncHelper.this.application.getContentResolver(), paramTimelineItem.getId());
        if (localTimelineItem2 == null)
        {
          Log.w(UploadSyncHelper.TAG, "Item not found in database [itemId=" + paramTimelineItem.getId() + "].");
          return null;
        }
        boolean bool;
        TimelineItem.Builder localBuilder;
        if ((localTimelineItem1.getAttachmentCount() == localTimelineItem2.getAttachmentCount()) && (TimelineItem.newBuilder(localTimelineItem1).clearAttachment().build().equals(TimelineItem.newBuilder(localTimelineItem2).clearAttachment().build())))
        {
          bool = true;
          if (!bool)
            break label196;
          localBuilder = TimelineItem.newBuilder(localTimelineItem1);
          Log.v(UploadSyncHelper.TAG, "Marking as synced [itemId=" + localTimelineItem1.getId() + "].");
          localBuilder.clearPendingAction();
        }
        while (true)
        {
          return UploadSyncHelper.this.timelineHelper.updateTimelineItem(UploadSyncHelper.this.application, localBuilder.build(), null, bool, false);
          bool = false;
          break;
          label196: localBuilder = TimelineItem.newBuilder(localTimelineItem2);
          Log.v(UploadSyncHelper.TAG, "Not marking item as synced since it was modified during the sync and has unsynced changes [itemId=" + localTimelineItem1.getId() + "].");
          LogHelper.logPii(2, UploadSyncHelper.TAG, "\nexpected:\n" + localTimelineItem1 + "\nactual:\n" + localTimelineItem2);
          Iterator localIterator = paramTimelineItem.getPendingActionList().iterator();
          while (localIterator.hasNext())
          {
            MenuItem localMenuItem = (MenuItem)localIterator.next();
            Log.v(UploadSyncHelper.TAG, "Removing actions [itemId=" + paramTimelineItem.getId() + ", menuItemId=" + localMenuItem.getId() + "].");
            localBuilder.getPendingActionBuilderList().remove(localMenuItem);
          }
          HashSet localHashSet = Sets.newHashSet(localTimelineItem1.getShareTargetList());
          localHashSet.addAll(localTimelineItem2.getShareTargetList());
          localBuilder.clearShareTarget().addAllShareTarget(localHashSet);
          localBuilder.clearAttachment().addAllAttachment(UploadSyncHelper.this.attachmentHelper.mergeAttachments(localTimelineItem1.getAttachmentList(), localTimelineItem2.getAttachmentList()));
        }
      }
    });
  }

  private Pair<SyncResponse, TimelineItem> syncItemToCloud(TimelineItem paramTimelineItem, SyncStats paramSyncStats)
  {
    long l1 = this.clock.uptimeMillis();
    UploadedBytesCounter localUploadedBytesCounter = new UploadedBytesCounter(null);
    getUserEventHelper().log(UserEventAction.TIMELINE_UPSTREAM_SYNC_STARTED);
    TimelineItem.Builder localBuilder = TimelineItem.newBuilder(paramTimelineItem);
    localBuilder.clearAttachment();
    if (paramTimelineItem.getAttachmentCount() > 0)
    {
      this.isUploadingOpportunisticItem = paramTimelineItem.getCloudSyncProtocol().equals(TimelineItem.SyncProtocol.OPPORTUNISTIC);
      if (!addAttachments(localBuilder, paramTimelineItem.getAttachmentList(), localUploadedBytesCounter, paramSyncStats))
      {
        Log.w(TAG, "Cannot sync item due to failed attachment upload [itemId=" + paramTimelineItem.getId() + "].");
        getUserEventHelper().log(UserEventAction.TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR, "1");
        this.isUploadingOpportunisticItem = false;
        return null;
      }
      this.isUploadingOpportunisticItem = false;
    }
    TimelineHelper.GetPendingActionsResponse localGetPendingActionsResponse = this.timelineHelper.getPendingActions(this.application, paramTimelineItem.getId());
    TimelineItem localTimelineItem = localBuilder.build();
    SyncRequest localSyncRequest = createUpstreamSyncRequest(paramTimelineItem, localTimelineItem, localGetPendingActionsResponse);
    ProtoResponse localProtoResponse = this.application.getRequestDispatcher().blockingDispatch(ServerConstants.Action.TIMELINE_SYNC, localSyncRequest, SyncResponse.PARSER, true);
    if ((localProtoResponse == null) || (!localProtoResponse.isSuccess()))
    {
      Log.e(TAG, "Error while performing upstream timeline sync.");
      return null;
    }
    this.timelineHelper.deletePendingActions(this.application, paramTimelineItem.getId(), localGetPendingActionsResponse.maxRowId);
    long l2 = localSyncRequest.getSerializedSize() + localUploadedBytesCounter.numBytes;
    logSyncMetrics(UserEventAction.TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY, l2, this.clock.uptimeMillis() - l1);
    return Pair.create(localProtoResponse.getResponseProto(), localTimelineItem);
  }

  private boolean syncNextUnsyncedItem(Queue<TimelineItem> paramQueue, SyncStats paramSyncStats)
  {
    if (paramQueue.isEmpty())
    {
      Log.v(TAG, "No unsynced items.");
      return false;
    }
    if (!this.syncReporter.shouldRetry())
    {
      Log.v(TAG, "Not syncing to cloud because it is too early to retry.");
      getUserEventHelper().log(UserEventAction.TIMELINE_UPSTREAM_SYNC_BACKOFF);
      return false;
    }
    TimelineItem localTimelineItem1 = (TimelineItem)paramQueue.peek();
    if (!getAllowedSyncProtocols().contains(localTimelineItem1.getCloudSyncProtocol()))
    {
      Log.w(TAG, "Skipping sync of item [itemId=" + localTimelineItem1.getId() + ", syncProtocol=" + localTimelineItem1.getCloudSyncProtocol() + "].");
      paramQueue.remove();
      return true;
    }
    Pair localPair = syncItemToCloud(localTimelineItem1, paramSyncStats);
    if (localPair != null);
    for (SyncResponse localSyncResponse = (SyncResponse)localPair.first; ; localSyncResponse = null)
    {
      TimelineItem localTimelineItem2 = null;
      if (localPair != null)
        localTimelineItem2 = (TimelineItem)localPair.second;
      if (localSyncResponse == null)
        this.failedToSyncTimelineIds.add(localTimelineItem1.getId());
      return handleItemsSyncedToCloud(paramQueue, localSyncResponse, localTimelineItem2);
    }
  }

  private String transferAndCacheAttachment(Attachment paramAttachment, TimelineItem.Builder paramBuilder, UploadedBytesCounter paramUploadedBytesCounter, SyncStats paramSyncStats)
    throws FileNotFoundException
  {
    Object localObject;
    if (paramAttachment.hasId())
    {
      Log.v(TAG, "Attachment already uploaded [id=" + paramAttachment.getId() + "].");
      localObject = paramAttachment.getId();
    }
    File localFile;
    ByteString localByteString;
    do
      while (true)
      {
        return localObject;
        try
        {
          String str4 = this.attachmentTracker.getAttachmentIdForPath(paramAttachment.getClientCachePath());
          str1 = str4;
          if (str1 != null)
          {
            Log.v(TAG, "Attachment previously uploaded, but ID not set on this item. Set to [id=" + str1 + "]");
            return str1;
          }
        }
        catch (IOException localIOException1)
        {
          while (true)
          {
            Log.e(TAG, "Failed to find lookup file in upload tracker -- we may upload twice");
            String str1 = null;
          }
          Log.v(TAG, "Attachment not yet uploaded.");
          localFile = new File(paramAttachment.getClientCachePath());
          if ((!localFile.exists()) || (localFile.length() == 0L))
          {
            paramBuilder.addAttachment(AttachmentHelper.EMPTY_ATTACHMENT);
            throw new FileNotFoundException("Missing or empty file for attachment [path=" + localFile.getPath() + "].");
          }
          long l = this.clock.uptimeMillis();
          String str2 = paramAttachment.getContentType();
          if ("video/mp4".equals(str2))
          {
            if (Labs.isEnabled(Labs.Feature.UPLOAD_SESSION_MNGR))
              Log.v(TAG, "Using session manager to upload video [name=" + localFile.getName() + "].");
            while (true)
            {
              try
              {
                String str3 = this.attachmentHelper.insertAttachmentViaSessionManager(paramAttachment.getContentType(), localFile);
                localObject = str3;
                if (localObject != null)
                  break;
                Log.e(TAG, "Failed to upload video [name=" + localFile.getName() + "].");
                return null;
              }
              catch (IOException localIOException2)
              {
                Log.e(TAG, "Caught an IOException while doing an upload: ", localIOException2);
                localObject = null;
                continue;
              }
              catch (InvalidCredentialsException localInvalidCredentialsException)
              {
                Log.e(TAG, "Client proxy says our credentials are bad: ", localInvalidCredentialsException);
                localObject = null;
                continue;
              }
              Log.v(TAG, "Using resumable upload to upload video [name=" + localFile.getName() + "].");
              localObject = this.attachmentHelper.insertAttachmentViaResumableUpload(paramAttachment.getContentType(), localFile);
            }
            Log.v(TAG, "Video uploaded successfully. [name=" + localFile.getName() + ", attachmentId=" + (String)localObject + "]");
            UploadedBytesCounter.access$114(paramUploadedBytesCounter, localFile.length());
            paramSyncStats.trackUpload(str2, localFile.length(), this.clock.uptimeMillis() - l);
            if (!CachedFilesManager.getSharedInstance().save(CachedFilesManager.Type.ATTACHMENT, (String)localObject, FileSaver.newSaver(localFile)))
            {
              Log.e(TAG, "Failed to save attachment to cache [id=" + (String)localObject + ", name=" + localFile.getName() + "].");
              return localObject;
            }
          }
          else
          {
            localByteString = this.fileHelper.toByteString(localFile);
            if (localByteString == null)
            {
              Log.e(TAG, "Failed to convert file to ByteString [name=" + localFile.getName() + "].");
              paramBuilder.addAttachment(AttachmentHelper.EMPTY_ATTACHMENT);
              return null;
            }
            Log.v(TAG, "Using standard attachment upload [name=" + localFile.getName() + "].");
            localObject = this.attachmentHelper.insertAttachmentToServer(str2, localByteString, localFile.getName(), localFile.lastModified());
            if (localObject == null)
            {
              Log.e(TAG, "Failed to transfer attachment to server [contentType=" + str2 + ", name=" + localFile.getName() + "].");
              return null;
            }
            UploadedBytesCounter.access$114(paramUploadedBytesCounter, localByteString.size());
            paramSyncStats.trackUpload(str2, localByteString.size(), this.clock.uptimeMillis() - l);
          }
        }
      }
    while (CachedFilesManager.getSharedInstance().save(CachedFilesManager.Type.ATTACHMENT, (String)localObject, FileSaver.newSaver(localByteString)));
    Log.e(TAG, "Failed to save attachment to cache [id=" + (String)localObject + ", name=" + localFile.getName() + "].");
    return localObject;
  }

  public void cancelOpportunisticUpload()
  {
    if (this.isUploadingOpportunisticItem)
      this.attachmentHelper.abortResumableInsert();
  }

  public void sync(SyncStats paramSyncStats)
  {
    Queue localQueue = this.timelineHelper.getUnsyncedItems(this.application.getContentResolver(), getAllowedSyncProtocols(), true);
    if (localQueue.isEmpty())
      Log.v(TAG, "No timeline items to sync.");
    while (true)
    {
      return;
      Log.v(TAG, "Syncing timeline items [count=" + localQueue.size() + "].");
      while (syncNextUnsyncedItem(localQueue, paramSyncStats));
    }
  }

  private class UploadedBytesCounter
  {
    private long numBytes = 0L;

    private UploadedBytesCounter()
    {
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.UploadSyncHelper
 * JD-Core Version:    0.6.2
 */