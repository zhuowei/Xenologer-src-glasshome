.class Lcom/google/glass/home/sync/UploadSyncHelper;
.super Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;
.source "UploadSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UPLOADABLE_CONTENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final attachmentTracker:Lcom/google/glass/home/sync/AttachmentUploadTracker;

.field private final attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

.field private final clock:Lcom/google/glass/util/Clock;

.field private final failedToSyncTimelineIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fileHelper:Lcom/google/glass/home/sync/FileHelper;

.field private isUploadingOpportunisticItem:Z

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 58
    const-class v0, Lcom/google/glass/home/sync/UploadSyncHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    .line 63
    const-string v0, "image/jpeg"

    const-string v1, "video/mp4"

    const-string v2, "text/plain"

    const-string v3, "image/png"

    const-string v4, "proto/search"

    const-string v5, "application/vnd.google-glass.phone-call-proto"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->UPLOADABLE_CONTENT_TYPES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/AttachmentUploader;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/util/Clock;)V
    .locals 1
    .parameter "application"
    .parameter "syncReporter"
    .parameter "batteryHelper"
    .parameter "powerHelper"
    .parameter "wifiHelper"
    .parameter "attachmentUploader"
    .parameter "timelineHelper"
    .parameter "clock"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;)V

    .line 100
    iput-object p6, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    .line 101
    iput-object p7, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 102
    iput-object p8, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    .line 103
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    .line 104
    new-instance v0, Lcom/google/glass/home/sync/FileHelper;

    invoke-direct {v0}, Lcom/google/glass/home/sync/FileHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->fileHelper:Lcom/google/glass/home/sync/FileHelper;

    .line 105
    new-instance v0, Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-direct {v0, p1}, Lcom/google/glass/home/sync/AttachmentUploadTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentTracker:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    .line 106
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/sync/UploadSyncHelper;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addAttachments(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/util/List;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)V
    .locals 10
    .parameter "requestItemBuilder"
    .parameter
    .parameter "uploadedBytesCounter"
    .parameter "syncStats"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;",
            "Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;",
            "Lcom/google/glass/home/sync/SyncStats;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/timeline/UploadException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p2, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 215
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 216
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-direct {p0, v0}, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadableAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v5, "Skipping non-uploadable attachment [itemId=%s, contentType=%s]."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0

    .line 227
    :cond_1
    const/4 v1, 0x0

    .line 229
    .local v1, attachmentId:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/google/glass/home/sync/UploadSyncHelper;->transferAndCacheAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    if-nez v1, :cond_2

    .line 237
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v5, "Null attachment ID should never be returned [attachment=%s]."

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, e:Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v5, "Skipping upload of missing file"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v2, v5, v6}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_2
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v5, "Attachment transferred successfully. [attachmentId=%s]."

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v5, "Setting ID. [id=%s]"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 252
    iget-object v4, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentTracker:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->setAttachmentIdForPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t store attachment ID in the tracker -- we might upload twice [attachmentId=%s]."

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 263
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v1           #attachmentId:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private createUpstreamSyncRequest(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 3
    .parameter "baseItem"
    .parameter "requestItem"
    .parameter "pendingActions"

    .prologue
    .line 191
    new-instance v1, Lcom/google/glass/util/SettingsSecure;

    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/home/sync/UploadSyncHelper;->createSyncRequestBuilder(Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    .line 193
    .local v0, builder:Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete;->newBuilder()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->setTimelineItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v1

    iget-object v2, p3, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->addAllUserAction(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->addDelete(Lcom/google/googlex/glass/common/proto/Delete$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    .line 204
    :goto_0
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v1

    return-object v1

    .line 199
    :cond_0
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->newBuilder()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v1

    iget-object v2, p3, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->addAllUserAction(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->addInsertReplaceOnConflict(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    goto :goto_0
.end method

.method private getAllowedSyncProtocols()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 533
    .local v0, syncProtocols:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;>;"
    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_0
    return-object v0
.end method

.method private getAttachmentIdIfAlreadyUploaded(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Ljava/lang/String;
    .locals 6
    .parameter "attachment"
    .parameter "requestItemBuilder"

    .prologue
    const/4 v5, 0x0

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, attachmentId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attachment already uploaded [timelineId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", attachmentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 359
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentTracker:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->getAttachmentIdForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 365
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "Attachment previously uploaded, but ID not set on this item, setting [timelineId=%s, attachmentId=%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleItemsSyncedToCloud(Ljava/util/Queue;Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)Z
    .locals 7
    .parameter
    .parameter "response"
    .parameter "updatedItem"
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;",
            "Lcom/google/googlex/glass/common/proto/SyncResponse;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, unsyncedItems:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 498
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    .line 523
    :goto_0
    return v1

    .line 504
    :cond_1
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, unsyncedItemId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getInsertFailedItemIdsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 507
    :cond_2
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v4, "Failed to sync [itemId=%s]."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 510
    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

    invoke-interface {v1, p4}, Lcom/google/glass/sync/SyncStatusReporter;->handleFail(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    move v1, v3

    .line 512
    goto :goto_0

    .line 517
    :cond_3
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 519
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v4, "Successfully synced to cloud [itemId=%s]."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v4, v5}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    invoke-direct {p0, p3}, Lcom/google/glass/home/sync/UploadSyncHelper;->markAsSynced(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 521
    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

    invoke-interface {v1}, Lcom/google/glass/sync/SyncStatusReporter;->handleSuccess()V

    move v1, v2

    .line 523
    goto :goto_0
.end method

.method private isUploadableAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z
    .locals 2
    .parameter "attachment"

    .prologue
    .line 208
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->UPLOADABLE_CONTENT_TYPES:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private markAsSynced(Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 1
    .parameter "syncedItem"

    .prologue
    .line 573
    new-instance v0, Lcom/google/glass/home/sync/UploadSyncHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/sync/UploadSyncHelper$1;-><init>(Lcom/google/glass/home/sync/UploadSyncHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 626
    return-void
.end method

.method private syncItemToCloud(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/home/sync/SyncStats;)Landroid/util/Pair;
    .locals 21
    .parameter "baseItem"
    .parameter "syncStats"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Lcom/google/glass/home/sync/SyncStats;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/glass/common/proto/SyncResponse;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/timeline/UploadException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v3}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v15

    .line 137
    .local v15, start:J
    new-instance v17, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;-><init>(Lcom/google/glass/home/sync/UploadSyncHelper;Lcom/google/glass/home/sync/UploadSyncHelper$1;)V

    .line 138
    .local v17, uploadedBytesCounter:Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v3, v4}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 142
    invoke-static/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v14

    .line 145
    .local v14, requestItemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    .line 152
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v0, v14, v3, v1, v2}, Lcom/google/glass/home/sync/UploadSyncHelper;->addAttachments(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/util/List;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lcom/google/glass/timeline/TimelineHelper;->getPendingActions(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;

    move-result-object v11

    .line 165
    .local v11, pendingActions:Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v13

    .line 166
    .local v13, requestItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v11}, Lcom/google/glass/home/sync/UploadSyncHelper;->createUpstreamSyncRequest(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;)Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v12

    .line 167
    .local v12, request:Lcom/google/googlex/glass/common/proto/SyncRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v3}, Lcom/google/glass/home/HomeApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v9

    .line 168
    .local v9, dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    sget-object v3, Lcom/google/glass/net/ServerConstants$Action;->TIMELINE_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v4, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    const/4 v7, 0x1

    invoke-virtual {v9, v3, v12, v4, v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Z)Lcom/google/glass/net/ProtoResponse;

    move-result-object v18

    .line 173
    .local v18, wrapper:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncResponse;>;"
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_3

    .line 174
    :cond_1
    if-nez v18, :cond_2

    sget-object v10, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 175
    .local v10, errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    :goto_0
    new-instance v3, Lcom/google/glass/timeline/UploadException;

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error executing SyncRequest of timeline item [timelineId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v10, v4, v7}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 157
    .end local v9           #dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    .end local v10           #errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    .end local v11           #pendingActions:Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    .end local v12           #request:Lcom/google/googlex/glass/common/proto/SyncRequest;
    .end local v13           #requestItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v18           #wrapper:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncResponse;>;"
    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    throw v3

    .line 174
    .restart local v9       #dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    .restart local v11       #pendingActions:Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    .restart local v12       #request:Lcom/google/googlex/glass/common/proto/SyncRequest;
    .restart local v13       #requestItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v18       #wrapper:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncResponse;>;"
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-result-object v10

    goto :goto_0

    .line 180
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    iget-wide v0, v11, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->maxRowId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v4, v7, v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->deletePendingActions(Landroid/content/Context;Ljava/lang/String;J)V

    .line 182
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getSerializedSize()I

    move-result v3

    int-to-long v3, v3

    #getter for: Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->numBytes:J
    invoke-static/range {v17 .. v17}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->access$100(Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;)J

    move-result-wide v7

    add-long v5, v3, v7

    .line 183
    .local v5, totalBytes:J
    sget-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/logging/UserEventAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v3}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v15

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/glass/home/sync/UploadSyncHelper;->logSyncMetrics(Lcom/google/glass/logging/UserEventAction;JJ)V

    .line 186
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private syncNextUnsyncedItem(Ljava/util/Queue;Lcom/google/glass/home/sync/SyncStats;)Z
    .locals 13
    .parameter
    .parameter "syncStats"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;",
            "Lcom/google/glass/home/sync/SyncStats;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, unsyncedItems:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 435
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 436
    sget-object v7, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v9, "No unsynced items."

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v8

    .line 478
    :goto_0
    return v7

    .line 440
    :cond_0
    iget-object v7, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

    invoke-interface {v7}, Lcom/google/glass/sync/SyncStatusReporter;->shouldRetry()Z

    move-result v7

    if-nez v7, :cond_1

    .line 441
    sget-object v7, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v9, "Not syncing to cloud because it is too early to retry."

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    invoke-virtual {p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v7

    sget-object v9, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v7, v9}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    move v7, v8

    .line 443
    goto :goto_0

    .line 448
    :cond_1
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 449
    .local v3, nextItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-direct {p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getAllowedSyncProtocols()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 450
    sget-object v7, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v10, "Skipping sync of item [itemId=%s, syncProtocol=%s]."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v8

    aput-object v8, v11, v9

    invoke-static {v7, v10, v11}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move v7, v9

    .line 453
    goto :goto_0

    .line 456
    :cond_2
    const/4 v6, 0x0

    .line 457
    .local v6, syncResponse:Lcom/google/googlex/glass/common/proto/SyncResponse;
    const/4 v4, 0x0

    .line 458
    .local v4, requestItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget-object v2, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 460
    .local v2, errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    :try_start_0
    invoke-direct {p0, v3, p2}, Lcom/google/glass/home/sync/UploadSyncHelper;->syncItemToCloud(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/home/sync/SyncStats;)Landroid/util/Pair;

    move-result-object v5

    .line 461
    .local v5, response:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    if-eqz v5, :cond_3

    .line 462
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-object v6, v0

    .line 463
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-object v4, v0
    :try_end_0
    .catch Lcom/google/glass/timeline/UploadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v5           #response:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    :cond_3
    :goto_1
    if-nez v6, :cond_4

    .line 475
    iget-object v7, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_4
    invoke-direct {p0, p1, v6, v4, v2}, Lcom/google/glass/home/sync/UploadSyncHelper;->handleItemsSyncedToCloud(Ljava/util/Queue;Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)Z

    move-result v7

    goto :goto_0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, e:Lcom/google/glass/timeline/UploadException;
    invoke-virtual {v1}, Lcom/google/glass/timeline/UploadException;->getMimeType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 467
    invoke-virtual {p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v7

    sget-object v10, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/logging/UserEventAction;

    const-string v11, "1"

    invoke-virtual {v7, v10, v11}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 471
    :cond_5
    sget-object v7, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v10, "Failed upload of item [timelineId=%s]."

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v8

    invoke-static {v7, v1, v10, v9}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    invoke-virtual {v1}, Lcom/google/glass/timeline/UploadException;->getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-result-object v2

    goto :goto_1
.end method

.method private transferAndCacheAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)Ljava/lang/String;
    .locals 19
    .parameter "attachment"
    .parameter "requestItemBuilder"
    .parameter "uploadedBytesCounter"
    .parameter "syncStats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/google/glass/timeline/UploadException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-direct/range {p0 .. p2}, Lcom/google/glass/home/sync/UploadSyncHelper;->getAttachmentIdIfAlreadyUploaded(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Ljava/lang/String;

    move-result-object v15

    .line 283
    .local v15, attachmentId:Ljava/lang/String;
    if-eqz v15, :cond_0

    move-object v2, v15

    .line 345
    :goto_0
    return-object v2

    .line 288
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    if-nez v2, :cond_2

    .line 293
    :cond_1
    sget-object v2, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 294
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing or empty file for attachment [path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    :cond_2
    sget-object v2, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v3, "Attachment not yet uploaded [timelineId=%s, file=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, contentType:Ljava/lang/String;
    const-string v2, "video/mp4"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 305
    invoke-direct/range {v2 .. v7}, Lcom/google/glass/home/sync/UploadSyncHelper;->uploadVideo(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/io/File;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)Ljava/lang/String;

    .end local v7           #contentType:Ljava/lang/String;
    move-result-object v2

    goto :goto_0

    .line 312
    .restart local v7       #contentType:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->fileHelper:Lcom/google/glass/home/sync/FileHelper;

    invoke-virtual {v2, v5}, Lcom/google/glass/home/sync/FileHelper;->toByteString(Ljava/io/File;)Lcom/google/protobuf/ByteString;

    move-result-object v8

    .line 313
    .local v8, byteString:Lcom/google/protobuf/ByteString;
    if-nez v8, :cond_4

    .line 317
    sget-object v2, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 318
    new-instance v2, Lcom/google/glass/timeline/UploadException;

    sget-object v3, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to convert file to ByteString [name="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v7, v4}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 323
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v2}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v16

    .line 324
    .local v16, startMs:J
    sget-object v2, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v3, "Using standard attachment upload [name=%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentSource(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v6 .. v12}, Lcom/google/glass/timeline/AttachmentUploader;->insertAttachmentToServer(Ljava/lang/String;Lcom/google/protobuf/ByteString;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 330
    invoke-virtual {v8}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->access$114(Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;J)J

    .line 331
    invoke-virtual {v8}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    int-to-long v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v2}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v2

    sub-long v13, v2, v16

    move-object/from16 v9, p4

    move-object v10, v7

    invoke-virtual/range {v9 .. v14}, Lcom/google/glass/home/sync/SyncStats;->trackUpload(Ljava/lang/String;JJ)V

    .line 334
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {v8}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v4

    invoke-virtual {v2, v3, v15, v4}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v18

    .line 337
    .local v18, success:Z
    if-nez v18, :cond_5

    .line 338
    sget-object v2, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v3, "Failed to save attachment to cache [attachmentId=%s, fileName=%s, timelineId=%s]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v4, v6

    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    const/4 v6, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object v2, v15

    .line 345
    goto/16 :goto_0
.end method

.method private uploadVideo(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/io/File;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)Ljava/lang/String;
    .locals 11
    .parameter "attachment"
    .parameter "requestItemBuilder"
    .parameter "file"
    .parameter "uploadedBytesCounter"
    .parameter "syncStats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/timeline/UploadException;
        }
    .end annotation

    .prologue
    .line 378
    const/4 v6, 0x0

    .line 379
    .local v6, attachmentId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, contentType:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v0}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 382
    .local v8, startMs:J
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->UPLOAD_SESSION_MNGR:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "Using session manager to upload video [fileName=%s, timelineId=%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Lcom/google/glass/timeline/AttachmentUploader;->insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/auth/InvalidCredentialsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 401
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    new-instance v0, Lcom/google/glass/timeline/UploadException;

    sget-object v2, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to upload video [fileName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timelineId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 389
    :catch_0
    move-exception v7

    .line 390
    .local v7, e:Ljava/io/IOException;
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "Caught an IOException while doing an upload: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v7, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 391
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 392
    .local v7, e:Lorg/apache/http/auth/InvalidCredentialsException;
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "Client proxy says our credentials are bad: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v7, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    .end local v7           #e:Lorg/apache/http/auth/InvalidCredentialsException;
    :cond_0
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "Using resumable upload to upload video [fileName=%s, timelineId=%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Lcom/google/glass/timeline/AttachmentUploader;->insertAttachmentViaResumableUpload(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 406
    :cond_1
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "Video uploaded successfully. [name=%s, attachmentId=%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v6, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {p4, v2, v3}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->access$114(Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;J)J

    .line 409
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v0}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    move-object/from16 v0, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/home/sync/SyncStats;->trackUpload(Ljava/lang/String;JJ)V

    .line 413
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {p3}, Lcom/google/glass/util/FileSaver;->newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v3

    invoke-virtual {v0, v2, v6, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v10

    .line 415
    .local v10, success:Z
    if-nez v10, :cond_2

    .line 416
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to save attachment to cache [attachmentId=%s, fileName=%s, timelineId=%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    :cond_2
    return-object v6
.end method


# virtual methods
.method public cancelOpportunisticUpload()V
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    invoke-virtual {v0}, Lcom/google/glass/timeline/AttachmentUploader;->abortResumableInsert()V

    .line 643
    :cond_0
    return-void
.end method

.method public cancelUpload()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentUploader:Lcom/google/glass/timeline/AttachmentUploader;

    invoke-virtual {v0}, Lcom/google/glass/timeline/AttachmentUploader;->abortResumableInsert()V

    .line 653
    return-void
.end method

.method isUnmodifiedDuringSync(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 4
    .parameter "syncedItem"
    .parameter "actualItem"

    .prologue
    .line 546
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 547
    const/4 v2, 0x0

    .line 564
    :goto_0
    return v2

    .line 554
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    .line 559
    .local v1, filteredSyncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 564
    .local v0, filteredActualItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public sync(Lcom/google/glass/home/sync/SyncStats;)V
    .locals 6
    .parameter "syncStats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 113
    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getAllowedSyncProtocols()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->getUnsyncedItems(Landroid/content/ContentResolver;Ljava/util/List;Z)Ljava/util/Queue;

    move-result-object v0

    .line 116
    .local v0, unsyncedItems:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "No timeline items to sync."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-void

    .line 123
    :cond_1
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "Syncing timeline items [count=%d]."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/google/glass/home/sync/UploadSyncHelper;->syncNextUnsyncedItem(Ljava/util/Queue;Lcom/google/glass/home/sync/SyncStats;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
