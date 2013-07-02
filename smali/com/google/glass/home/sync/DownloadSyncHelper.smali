.class Lcom/google/glass/home/sync/DownloadSyncHelper;
.super Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;
.source "DownloadSyncHelper.java"


# static fields
.field static final NUM_ITEMS_SYNCED_PER_REQUEST:I = 0xc8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final clock:Lcom/google/glass/util/Clock;

.field private final notificationManager:Lcom/google/glass/home/timeline/TimelineNotificationManager;

.field private final syncWindowHelper:Lcom/google/glass/home/sync/TimelineSyncWindowHelper;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/google/glass/home/sync/DownloadSyncHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/DownloadSyncHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/Clock;Lcom/google/glass/home/timeline/TimelineNotificationManager;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/home/sync/TimelineSyncWindowHelper;)V
    .locals 0
    .parameter "application"
    .parameter "syncReporter"
    .parameter "batteryHelper"
    .parameter "powerHelper"
    .parameter "wifiHelper"
    .parameter "clock"
    .parameter "notificationManager"
    .parameter "timelineHelper"
    .parameter "syncWindowHelper"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;)V

    .line 64
    iput-object p6, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    .line 65
    iput-object p7, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->notificationManager:Lcom/google/glass/home/timeline/TimelineNotificationManager;

    .line 66
    iput-object p8, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 67
    iput-object p9, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->syncWindowHelper:Lcom/google/glass/home/sync/TimelineSyncWindowHelper;

    .line 68
    return-void
.end method

.method private createFromCloudRequest(Lcom/google/glass/home/sync/TimelineSyncWindow;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 4
    .parameter "window"

    .prologue
    .line 117
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->newBuilder()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/glass/home/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlex/glass/common/proto/Select$Builder;->setStartTime(J)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/Select$Builder;->setMaxItems(I)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    .line 120
    .local v0, select:Lcom/google/googlex/glass/common/proto/Select$Builder;
    invoke-virtual {p1}, Lcom/google/glass/home/sync/TimelineSyncWindow;->getContinuationToken()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/google/glass/home/sync/TimelineSyncWindow;->getContinuationToken()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->setContinuationToken(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    .line 123
    :cond_0
    new-instance v1, Lcom/google/glass/util/SettingsSecure;

    iget-object v2, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/home/sync/DownloadSyncHelper;->createSyncRequestBuilder(Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->setSelect(Lcom/google/googlex/glass/common/proto/Select$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v1

    return-object v1
.end method

.method private dispatchFromCloudRequest(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/glass/net/ProtoResponse;
    .locals 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/SyncRequest;",
            ")",
            "Lcom/google/glass/net/ProtoResponse",
            "<",
            "Lcom/google/googlex/glass/common/proto/SyncResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v1, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getSecondaryRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 132
    .local v0, dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->TIMELINE_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v2, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Z)Lcom/google/glass/net/ProtoResponse;

    move-result-object v1

    return-object v1
.end method

.method private handleItemsSyncedFromCloud(Lcom/google/glass/home/sync/TimelineSyncWindow;Lcom/google/googlex/glass/common/proto/SyncResponse;JLcom/google/glass/home/sync/SyncStats;)Lcom/google/glass/home/sync/TimelineSyncWindow;
    .locals 13
    .parameter "currentWindow"
    .parameter "response"
    .parameter "requestDurationMs"
    .parameter "syncStats"

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    const/4 v11, 0x0

    .line 188
    :goto_0
    return-object v11

    .line 150
    :cond_0
    sget-object v0, Lcom/google/glass/home/sync/DownloadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received items from server [count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectedItemsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectedItemsCount()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 154
    .local v10, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectedItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 156
    .local v9, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSerializedSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectedItemsCount()I

    move-result v0

    int-to-long v4, v0

    div-long v4, p3, v4

    move-object/from16 v0, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/home/sync/SyncStats;->trackDownload(Ljava/lang/String;JJ)V

    goto :goto_1

    .line 167
    .end local v9           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v0, v1, v10}, Lcom/google/glass/timeline/TimelineHelper;->bulkInsertTimelineItem(Landroid/content/Context;Ljava/util/List;)I

    move-result v12

    .line 168
    .local v12, numInserts:I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-eq v12, v0, :cond_2

    .line 169
    sget-object v0, Lcom/google/glass/home/sync/DownloadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Partial bulk insert [itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", insertCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_3

    .line 176
    iget-object v0, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->syncWindowHelper:Lcom/google/glass/home/sync/TimelineSyncWindowHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/sync/TimelineSyncWindowHelper;->delete(Lcom/google/glass/home/sync/TimelineSyncWindow;)I

    .line 177
    const/4 v11, 0x0

    .line 183
    .local v11, nextWindow:Lcom/google/glass/home/sync/TimelineSyncWindow;
    :goto_2
    iget-object v0, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->syncWindowHelper:Lcom/google/glass/home/sync/TimelineSyncWindowHelper;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectMaxWriteTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/sync/TimelineSyncWindowHelper;->updateMaxWriteTimestamp(J)V

    .line 186
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectMaxWriteTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 187
    .local v6, batchTimeMillis:J
    iget-object v0, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->notificationManager:Lcom/google/glass/home/timeline/TimelineNotificationManager;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectedItemsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/glass/home/timeline/TimelineNotificationManager;->processNotifications(Ljava/util/List;J)V

    goto/16 :goto_0

    .line 179
    .end local v6           #batchTimeMillis:J
    .end local v11           #nextWindow:Lcom/google/glass/home/sync/TimelineSyncWindow;
    :cond_3
    new-instance v11, Lcom/google/glass/home/sync/TimelineSyncWindow;

    invoke-virtual {p1}, Lcom/google/glass/home/sync/TimelineSyncWindow;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSelectContinuationToken()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v11, v0, v1, v2}, Lcom/google/glass/home/sync/TimelineSyncWindow;-><init>(J[B)V

    .line 181
    .restart local v11       #nextWindow:Lcom/google/glass/home/sync/TimelineSyncWindow;
    iget-object v0, p0, Lcom/google/glass/home/sync/DownloadSyncHelper;->syncWindowHelper:Lcom/google/glass/home/sync/TimelineSyncWindowHelper;

    invoke-virtual {v0, v11}, Lcom/google/glass/home/sync/TimelineSyncWindowHelper;->update(Lcom/google/glass/home/sync/TimelineSyncWindow;)I

    goto :goto_2
.end method


# virtual methods
.method public sync(Lcom/google/glass/home/sync/SyncStats;)V
    .locals 20
    .parameter "syncStats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/DownloadSyncHelper;->syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

    invoke-interface {v1}, Lcom/google/glass/sync/SyncStatusReporter;->shouldRetry()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    sget-object v1, Lcom/google/glass/home/sync/DownloadSyncHelper;->TAG:Ljava/lang/String;

    const-string v6, "Not syncing to device because it is too early to retry."

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/sync/DownloadSyncHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v1

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v1, v6}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 114
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v1, Lcom/google/glass/home/sync/DownloadSyncHelper;->TAG:Ljava/lang/String;

    const-string v6, "Fetching unsynced items from server."

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/DownloadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v18

    .line 82
    .local v18, syncStart:J
    const-wide/16 v8, 0x0

    .line 83
    .local v8, bytes:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/sync/DownloadSyncHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v1

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v1, v6}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/DownloadSyncHelper;->syncWindowHelper:Lcom/google/glass/home/sync/TimelineSyncWindowHelper;

    invoke-virtual {v1}, Lcom/google/glass/home/sync/TimelineSyncWindowHelper;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/home/sync/TimelineSyncWindow;

    .line 89
    .local v2, currentSyncWindow:Lcom/google/glass/home/sync/TimelineSyncWindow;
    :cond_1
    sget-object v1, Lcom/google/glass/home/sync/DownloadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting sync [window="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/DownloadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v15

    .line 91
    .local v15, requestStart:J
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/glass/home/sync/DownloadSyncHelper;->createFromCloudRequest(Lcom/google/glass/home/sync/TimelineSyncWindow;)Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v14

    .line 92
    .local v14, request:Lcom/google/googlex/glass/common/proto/SyncRequest;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/glass/home/sync/DownloadSyncHelper;->dispatchFromCloudRequest(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v17

    .line 93
    .local v17, responseWrapper:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncResponse;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/DownloadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v15

    .line 94
    .local v4, requestDurationMs:J
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_4

    .line 95
    :cond_2
    if-nez v17, :cond_3

    sget-object v12, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 97
    .local v12, errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    :goto_2
    sget-object v1, Lcom/google/glass/home/sync/DownloadSyncHelper;->TAG:Ljava/lang/String;

    const-string v6, "Error while performing downstream timeline sync."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/DownloadSyncHelper;->syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

    invoke-interface {v1, v12}, Lcom/google/glass/sync/SyncStatusReporter;->handleFail(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    goto/16 :goto_0

    .line 95
    .end local v12           #errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-result-object v12

    goto :goto_2

    .line 101
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/DownloadSyncHelper;->syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

    invoke-interface {v1}, Lcom/google/glass/sync/SyncStatusReporter;->handleSuccess()V

    .line 105
    invoke-virtual/range {v17 .. v17}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/SyncResponse;

    .local v3, syncResponse:Lcom/google/googlex/glass/common/proto/SyncResponse;
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/google/glass/home/sync/DownloadSyncHelper;->handleItemsSyncedFromCloud(Lcom/google/glass/home/sync/TimelineSyncWindow;Lcom/google/googlex/glass/common/proto/SyncResponse;JLcom/google/glass/home/sync/SyncStats;)Lcom/google/glass/home/sync/TimelineSyncWindow;

    move-result-object v2

    .line 108
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSerializedSize()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v8, v6

    .line 109
    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 112
    .end local v2           #currentSyncWindow:Lcom/google/glass/home/sync/TimelineSyncWindow;
    .end local v3           #syncResponse:Lcom/google/googlex/glass/common/proto/SyncResponse;
    .end local v4           #requestDurationMs:J
    .end local v14           #request:Lcom/google/googlex/glass/common/proto/SyncRequest;
    .end local v15           #requestStart:J
    .end local v17           #responseWrapper:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncResponse;>;"
    :cond_5
    sget-object v7, Lcom/google/glass/logging/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_FINISHED:Lcom/google/glass/logging/UserEventAction;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/DownloadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v18

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/google/glass/home/sync/DownloadSyncHelper;->logSyncMetrics(Lcom/google/glass/logging/UserEventAction;JJ)V

    goto/16 :goto_0
.end method
