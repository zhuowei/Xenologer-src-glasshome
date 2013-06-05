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
.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field private final attachmentTracker:Lcom/google/glass/home/sync/AttachmentUploadTracker;

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
    .locals 5

    .prologue
    .line 57
    const-class v0, Lcom/google/glass/home/sync/UploadSyncHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    .line 62
    const-string v0, "image/jpeg"

    const-string v1, "video/mp4"

    const-string v2, "text/plain"

    const-string v3, "image/png"

    const-string v4, "proto/search"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->UPLOADABLE_CONTENT_TYPES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/AttachmentHelper;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/util/Clock;)V
    .locals 1
    .parameter "application"
    .parameter "syncReporter"
    .parameter "batteryHelper"
    .parameter "powerHelper"
    .parameter "wifiHelper"
    .parameter "attachmentHelper"
    .parameter "timelineHelper"
    .parameter "clock"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;)V

    .line 97
    iput-object p6, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 98
    iput-object p7, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 99
    iput-object p8, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    .line 100
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    .line 101
    new-instance v0, Lcom/google/glass/home/sync/FileHelper;

    invoke-direct {v0}, Lcom/google/glass/home/sync/FileHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->fileHelper:Lcom/google/glass/home/sync/FileHelper;

    .line 102
    new-instance v0, Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-direct {v0, p1}, Lcom/google/glass/home/sync/AttachmentUploadTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentTracker:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    .line 103
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/sync/UploadSyncHelper;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/sync/UploadSyncHelper;)Lcom/google/glass/timeline/AttachmentHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    return-object v0
.end method

.method private addAttachments(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/util/List;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)V
    .locals 7
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
            Lcom/google/glass/timeline/UploadException;
        }
    .end annotation

    .prologue
    .line 208
    .local p2, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v4

    sget-object v5, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASS_DEVICE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    if-eq v4, v5, :cond_1

    .line 211
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not uploading attachments for source type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p1, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAllAttachment(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 267
    :cond_0
    return-void

    .line 216
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 217
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-direct {p0, v0}, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadableAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0

    .line 226
    :cond_3
    const/4 v1, 0x0

    .line 228
    .local v1, attachmentId:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/google/glass/home/sync/UploadSyncHelper;->transferAndCacheAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 235
    if-nez v1, :cond_4

    .line 236
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Null attachment ID should never be returned [attachment="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, e:Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v5, "Skipping upload of missing file"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_4
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attachment transferred successfully. [attachmentId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting ID. [id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 252
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentTracker:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->setAttachmentIdForPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 254
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t store attachment ID in the tracker -- we might upload twice [attachmentId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 258
    :catch_1
    move-exception v2

    .line 259
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t store attachment ID in the tracker -- we might upload twice [attachmentId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private createUpstreamSyncRequest(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 3
    .parameter "baseItem"
    .parameter "requestItem"
    .parameter "pendingActions"

    .prologue
    .line 184
    new-instance v1, Lcom/google/glass/util/SettingsSecure;

    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/home/sync/UploadSyncHelper;->createSyncRequestBuilder(Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    .line 186
    .local v0, builder:Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
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

    .line 197
    :goto_0
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v1

    return-object v1

    .line 192
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
    .line 544
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 547
    .local v0, syncProtocols:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;>;"
    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_0
    return-object v0
.end method

.method private getAttachmentIdIfAlreadyUploaded(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Ljava/lang/String;
    .locals 7
    .parameter "attachment"
    .parameter "requestItemBuilder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/timeline/UploadException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, attachmentId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    sget-object v2, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attachment already uploaded [timelineId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", attachmentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_0
    :goto_0
    return-object v0

    .line 364
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentTracker:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->getAttachmentIdForPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    .line 376
    sget-object v2, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attachment previously uploaded, but ID not set on this item, setting [timelineId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", attachmentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/glass/timeline/UploadException;

    sget-object v3, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find lookup file in upload tracker -- we may upload twice [timelineId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clientCachePath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleItemsSyncedToCloud(Ljava/util/Queue;Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)Z
    .locals 6
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
    const/4 v3, 0x0

    .line 510
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 537
    :goto_0
    return v2

    .line 516
    :cond_1
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, unsyncedItemId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getInsertFailedItemIdsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 519
    :cond_2
    sget-object v2, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to sync [itemId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 p1, 0x0

    .line 525
    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 526
    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->syncReporter:Lcom/google/glass/home/sync/SyncStatusReporter;

    invoke-interface {v2, p4}, Lcom/google/glass/home/sync/SyncStatusReporter;->handleFail(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    move v2, v3

    .line 527
    goto :goto_0

    .line 532
    :cond_3
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 533
    move-object v0, p3

    .line 534
    .local v0, syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget-object v2, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully synced to cloud [itemId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-direct {p0, v0}, Lcom/google/glass/home/sync/UploadSyncHelper;->markAsSynced(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 536
    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->syncReporter:Lcom/google/glass/home/sync/SyncStatusReporter;

    invoke-interface {v2}, Lcom/google/glass/home/sync/SyncStatusReporter;->handleSuccess()V

    .line 537
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isUploadableAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z
    .locals 2
    .parameter "attachment"

    .prologue
    .line 201
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
    .line 577
    new-instance v0, Lcom/google/glass/home/sync/UploadSyncHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/sync/UploadSyncHelper$1;-><init>(Lcom/google/glass/home/sync/UploadSyncHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 632
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
            Lcom/google/glass/timeline/UploadException;
        }
    .end annotation

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v3}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v15

    .line 130
    .local v15, start:J
    new-instance v17, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;-><init>(Lcom/google/glass/home/sync/UploadSyncHelper;Lcom/google/glass/home/sync/UploadSyncHelper$1;)V

    .line 131
    .local v17, uploadedBytesCounter:Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v3, v4}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 135
    invoke-static/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v14

    .line 138
    .local v14, requestItemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    .line 145
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v0, v14, v3, v1, v2}, Lcom/google/glass/home/sync/UploadSyncHelper;->addAttachments(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/util/List;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    .line 155
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lcom/google/glass/timeline/TimelineHelper;->getPendingActions(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;

    move-result-object v11

    .line 158
    .local v11, pendingActions:Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v13

    .line 159
    .local v13, requestItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v11}, Lcom/google/glass/home/sync/UploadSyncHelper;->createUpstreamSyncRequest(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;)Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v12

    .line 160
    .local v12, request:Lcom/google/googlex/glass/common/proto/SyncRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v3}, Lcom/google/glass/home/HomeApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v9

    .line 161
    .local v9, dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    sget-object v3, Lcom/google/glass/net/ServerConstants$Action;->TIMELINE_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v4, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    const/4 v7, 0x1

    invoke-virtual {v9, v3, v12, v4, v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Z)Lcom/google/glass/net/ProtoResponse;

    move-result-object v18

    .line 166
    .local v18, wrapper:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncResponse;>;"
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_3

    .line 167
    :cond_1
    if-nez v18, :cond_2

    sget-object v10, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 168
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

    .line 150
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

    .line 167
    .restart local v9       #dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    .restart local v11       #pendingActions:Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    .restart local v12       #request:Lcom/google/googlex/glass/common/proto/SyncRequest;
    .restart local v13       #requestItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v18       #wrapper:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncResponse;>;"
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-result-object v10

    goto :goto_0

    .line 173
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

    .line 175
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getSerializedSize()I

    move-result v3

    int-to-long v3, v3

    #getter for: Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->numBytes:J
    invoke-static/range {v17 .. v17}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->access$100(Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;)J

    move-result-wide v7

    add-long v5, v3, v7

    .line 176
    .local v5, totalBytes:J
    sget-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/logging/UserEventAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v3}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v15

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/glass/home/sync/UploadSyncHelper;->logSyncMetrics(Lcom/google/glass/logging/UserEventAction;JJ)V

    .line 179
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private syncNextUnsyncedItem(Ljava/util/Queue;Lcom/google/glass/home/sync/SyncStats;)Z
    .locals 10
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

    .prologue
    .local p1, unsyncedItems:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v7, 0x0

    .line 447
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 448
    sget-object v8, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v9, "No unsynced items."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_0
    return v7

    .line 452
    :cond_0
    iget-object v8, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->syncReporter:Lcom/google/glass/home/sync/SyncStatusReporter;

    invoke-interface {v8}, Lcom/google/glass/home/sync/SyncStatusReporter;->shouldRetry()Z

    move-result v8

    if-nez v8, :cond_1

    .line 453
    sget-object v8, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v9, "Not syncing to cloud because it is too early to retry."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v8

    sget-object v9, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v8, v9}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    goto :goto_0

    .line 460
    :cond_1
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 461
    .local v3, nextItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-direct {p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getAllowedSyncProtocols()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 462
    sget-object v7, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping sync of item [itemId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", syncProtocol="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 465
    const/4 v7, 0x1

    goto :goto_0

    .line 468
    :cond_2
    const/4 v6, 0x0

    .line 469
    .local v6, syncResponse:Lcom/google/googlex/glass/common/proto/SyncResponse;
    const/4 v4, 0x0

    .line 470
    .local v4, requestItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget-object v2, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 472
    .local v2, errorCode:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    :try_start_0
    invoke-direct {p0, v3, p2}, Lcom/google/glass/home/sync/UploadSyncHelper;->syncItemToCloud(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/home/sync/SyncStats;)Landroid/util/Pair;

    move-result-object v5

    .line 473
    .local v5, response:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    if-eqz v5, :cond_3

    .line 474
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-object v6, v0

    .line 475
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-object v4, v0
    :try_end_0
    .catch Lcom/google/glass/timeline/UploadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v5           #response:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    :cond_3
    :goto_1
    if-nez v6, :cond_4

    .line 487
    iget-object v7, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_4
    invoke-direct {p0, p1, v6, v4, v2}, Lcom/google/glass/home/sync/UploadSyncHelper;->handleItemsSyncedToCloud(Ljava/util/Queue;Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)Z

    move-result v7

    goto/16 :goto_0

    .line 477
    :catch_0
    move-exception v1

    .line 478
    .local v1, e:Lcom/google/glass/timeline/UploadException;
    invoke-virtual {v1}, Lcom/google/glass/timeline/UploadException;->getMimeType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 479
    invoke-virtual {p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v7

    sget-object v8, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/logging/UserEventAction;

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 483
    :cond_5
    sget-object v7, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed upload of item [timelineId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    invoke-virtual {v1}, Lcom/google/glass/timeline/UploadException;->getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-result-object v2

    goto :goto_1
.end method

.method private transferAndCacheAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)Ljava/lang/String;
    .locals 18
    .parameter "attachment"
    .parameter "requestItemBuilder"
    .parameter "uploadedBytesCounter"
    .parameter "syncStats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/google/glass/timeline/UploadException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmp-long v1, v1, v8

    if-nez v1, :cond_1

    .line 291
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 292
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing or empty file for attachment [path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/google/glass/home/sync/UploadSyncHelper;->getAttachmentIdIfAlreadyUploaded(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Ljava/lang/String;

    move-result-object v14

    .line 298
    .local v14, attachmentId:Ljava/lang/String;
    if-eqz v14, :cond_2

    move-object v1, v14

    .line 346
    :goto_0
    return-object v1

    .line 302
    :cond_2
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attachment not yet uploaded [timelineId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, contentType:Ljava/lang/String;
    const-string v1, "video/mp4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 308
    invoke-direct/range {v1 .. v6}, Lcom/google/glass/home/sync/UploadSyncHelper;->uploadVideo(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/io/File;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)Ljava/lang/String;

    .end local v6           #contentType:Ljava/lang/String;
    move-result-object v1

    goto :goto_0

    .line 314
    .restart local v6       #contentType:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->fileHelper:Lcom/google/glass/home/sync/FileHelper;

    invoke-virtual {v1, v4}, Lcom/google/glass/home/sync/FileHelper;->toByteString(Ljava/io/File;)Lcom/google/protobuf/ByteString;

    move-result-object v7

    .line 315
    .local v7, byteString:Lcom/google/protobuf/ByteString;
    if-nez v7, :cond_4

    .line 319
    sget-object v1, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 320
    new-instance v1, Lcom/google/glass/timeline/UploadException;

    sget-object v2, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to convert file to ByteString [name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v6, v3}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v15

    .line 326
    .local v15, startMs:J
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using standard attachment upload [name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lcom/google/glass/timeline/AttachmentHelper;->insertAttachmentToServer(Ljava/lang/String;Lcom/google/protobuf/ByteString;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v14

    .line 331
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->access$114(Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;J)J

    .line 332
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    int-to-long v10, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v1

    sub-long v12, v1, v15

    move-object/from16 v8, p4

    move-object v9, v6

    invoke-virtual/range {v8 .. v13}, Lcom/google/glass/home/sync/SyncStats;->trackUpload(Ljava/lang/String;JJ)V

    .line 335
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {v7}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v3

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v17

    .line 338
    .local v17, success:Z
    if-nez v17, :cond_5

    .line 339
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save attachment to cache [attachmentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timelineId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v1, v14

    .line 346
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
    .line 390
    const/4 v6, 0x0

    .line 391
    .local v6, attachmentId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, contentType:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v0}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 394
    .local v8, startMs:J
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->UPLOAD_SESSION_MNGR:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using session manager to upload video [fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timelineId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Lcom/google/glass/timeline/AttachmentHelper;->insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/auth/InvalidCredentialsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 413
    :goto_0
    if-nez v6, :cond_1

    .line 414
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

    .line 401
    :catch_0
    move-exception v7

    .line 402
    .local v7, e:Ljava/io/IOException;
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "Caught an IOException while doing an upload: "

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 403
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 404
    .local v7, e:Lorg/apache/http/auth/InvalidCredentialsException;
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "Client proxy says our credentials are bad: "

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 407
    .end local v7           #e:Lorg/apache/http/auth/InvalidCredentialsException;
    :cond_0
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using resumable upload to upload video [fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timelineId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Lcom/google/glass/timeline/AttachmentHelper;->insertAttachmentViaResumableUpload(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 418
    :cond_1
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video uploaded successfully. [name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", attachmentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {p4, v2, v3}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->access$114(Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;J)J

    .line 421
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v0}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    move-object/from16 v0, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/home/sync/SyncStats;->trackUpload(Ljava/lang/String;JJ)V

    .line 425
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {p3}, Lcom/google/glass/util/FileSaver;->newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v3

    invoke-virtual {v0, v2, v6, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v10

    .line 427
    .local v10, success:Z
    if-nez v10, :cond_2

    .line 428
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save attachment to cache [attachmentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timelineId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_2
    return-object v6
.end method


# virtual methods
.method public cancelOpportunisticUpload()V
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/AttachmentHelper;->abortResumableInsert()V

    .line 649
    :cond_0
    return-void
.end method

.method public cancelUpload()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/AttachmentHelper;->abortResumableInsert()V

    .line 659
    return-void
.end method

.method isUnmodifiedDuringSync(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 2
    .parameter "syncedItem"
    .parameter "actualItem"

    .prologue
    .line 560
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 561
    const/4 v0, 0x0

    .line 567
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public sync(Lcom/google/glass/home/sync/SyncStats;)V
    .locals 5
    .parameter "syncStats"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getAllowedSyncProtocols()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->getUnsyncedItems(Landroid/content/ContentResolver;Ljava/util/List;Z)Ljava/util/Queue;

    move-result-object v0

    .line 112
    .local v0, unsyncedItems:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "No timeline items to sync."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void

    .line 116
    :cond_1
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Syncing timeline items [count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/google/glass/home/sync/UploadSyncHelper;->syncNextUnsyncedItem(Ljava/util/Queue;Lcom/google/glass/home/sync/SyncStats;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
