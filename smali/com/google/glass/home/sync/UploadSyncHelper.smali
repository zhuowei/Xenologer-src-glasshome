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
    .line 55
    const-class v0, Lcom/google/glass/home/sync/UploadSyncHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    .line 60
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
    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;)V

    .line 95
    iput-object p6, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 96
    iput-object p7, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 97
    iput-object p8, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    .line 98
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    .line 99
    new-instance v0, Lcom/google/glass/home/sync/FileHelper;

    invoke-direct {v0}, Lcom/google/glass/home/sync/FileHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->fileHelper:Lcom/google/glass/home/sync/FileHelper;

    .line 100
    new-instance v0, Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-direct {v0, p1}, Lcom/google/glass/home/sync/AttachmentUploadTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentTracker:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    .line 101
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/sync/UploadSyncHelper;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/sync/UploadSyncHelper;)Lcom/google/glass/timeline/AttachmentHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    return-object v0
.end method

.method private addAttachments(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/util/List;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)Z
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
            ")Z"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
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

    .line 233
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-direct {p0, v0}, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadableAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0

    .line 242
    :cond_1
    const/4 v1, 0x0

    .line 244
    .local v1, attachmentId:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/google/glass/home/sync/UploadSyncHelper;->transferAndCacheAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    if-nez v1, :cond_2

    .line 252
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to transfer attachment. [attachment="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v4, 0x0

    .line 282
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v1           #attachmentId:Ljava/lang/String;
    :goto_1
    return v4

    .line 246
    .restart local v0       #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .restart local v1       #attachmentId:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 247
    .local v2, e:Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v5, "Skipping upload of missing file"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 255
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_2
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attachment transferred successfully. [attachmentId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
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

    .line 261
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 268
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentTracker:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->setAttachmentIdForPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 270
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t store attachment ID in the tracker -- we might upload twice!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 273
    :catch_1
    move-exception v2

    .line 274
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t store attachment ID in the tracker -- we might upload twice!"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 282
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v1           #attachmentId:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private addDeprecatedPendingActions(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 5
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, actions:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/UserAction;>;"
    const/4 v1, 0x0

    .line 211
    .local v1, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    .line 212
    .local v0, action:Lcom/google/googlex/glass/common/proto/UserAction;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/UserAction;->getType()Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/UserAction$Type;->CUSTOM:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    if-ne v3, v4, :cond_0

    .line 213
    if-nez v1, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    .line 216
    :cond_1
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/UserAction;->getPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addPendingAction(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0

    .line 221
    .end local v0           #action:Lcom/google/googlex/glass/common/proto/UserAction;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object p1

    .end local p1
    :cond_3
    return-object p1
.end method

.method private createUpstreamSyncRequest(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 3
    .parameter "baseItem"
    .parameter "requestItem"
    .parameter "pendingActions"

    .prologue
    .line 186
    new-instance v1, Lcom/google/glass/util/SettingsSecure;

    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/home/sync/UploadSyncHelper;->createSyncRequestBuilder(Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    .line 188
    .local v0, builder:Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->setSupportsUserActions(Z)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    .line 189
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
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

    .line 201
    :goto_0
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v1

    return-object v1

    .line 195
    :cond_0
    iget-object v1, p3, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    invoke-direct {p0, p2, v1}, Lcom/google/glass/home/sync/UploadSyncHelper;->addDeprecatedPendingActions(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object p2

    .line 196
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
    .line 510
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 513
    .local v0, syncProtocols:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;>;"
    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    return-object v0
.end method

.method private handleItemsSyncedToCloud(Ljava/util/Queue;Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 6
    .parameter
    .parameter "response"
    .parameter "updatedItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;",
            "Lcom/google/googlex/glass/common/proto/SyncResponse;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, unsyncedItems:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v3, 0x0

    .line 476
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 503
    :goto_0
    return v2

    .line 482
    :cond_1
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 483
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

    .line 485
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

    .line 490
    const/4 p1, 0x0

    .line 491
    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 492
    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->syncReporter:Lcom/google/glass/home/sync/SyncStatusReporter;

    invoke-interface {v2}, Lcom/google/glass/home/sync/SyncStatusReporter;->handleFail()V

    move v2, v3

    .line 493
    goto :goto_0

    .line 498
    :cond_3
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 499
    move-object v0, p3

    .line 500
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

    .line 501
    invoke-direct {p0, v0}, Lcom/google/glass/home/sync/UploadSyncHelper;->markAsSynced(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 502
    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->syncReporter:Lcom/google/glass/home/sync/SyncStatusReporter;

    invoke-interface {v2}, Lcom/google/glass/home/sync/SyncStatusReporter;->handleSuccess()V

    .line 503
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isUploadableAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z
    .locals 2
    .parameter "attachment"

    .prologue
    .line 225
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
    .line 526
    new-instance v0, Lcom/google/glass/home/sync/UploadSyncHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/sync/UploadSyncHelper$1;-><init>(Lcom/google/glass/home/sync/UploadSyncHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 584
    return-void
.end method

.method private syncItemToCloud(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/home/sync/SyncStats;)Landroid/util/Pair;
    .locals 19
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

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v2}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v13

    .line 127
    .local v13, start:J
    new-instance v15, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;-><init>(Lcom/google/glass/home/sync/UploadSyncHelper;Lcom/google/glass/home/sync/UploadSyncHelper$1;)V

    .line 128
    .local v15, uploadedBytesCounter:Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v2, v3}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 132
    invoke-static/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v12

    .line 135
    .local v12, requestItemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v2

    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v12, v2, v15, v1}, Lcom/google/glass/home/sync/UploadSyncHelper;->addAttachments(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/util/List;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    sget-object v2, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot sync item due to failed attachment upload [itemId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/logging/UserEventAction;

    const-string v6, "1"

    invoke-virtual {v2, v3, v6}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    .line 149
    const/4 v2, 0x0

    .line 181
    :goto_0
    return-object v2

    .line 154
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    .line 158
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/google/glass/timeline/TimelineHelper;->getPendingActions(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;

    move-result-object v9

    .line 161
    .local v9, pendingActions:Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v11

    .line 162
    .local v11, requestItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v9}, Lcom/google/glass/home/sync/UploadSyncHelper;->createUpstreamSyncRequest(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;)Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v10

    .line 163
    .local v10, request:Lcom/google/googlex/glass/common/proto/SyncRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v8

    .line 164
    .local v8, dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    sget-object v2, Lcom/google/glass/net/ServerConstants$Action;->TIMELINE_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v3, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    const/4 v6, 0x1

    invoke-virtual {v8, v2, v10, v3, v6}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Z)Lcom/google/glass/net/ProtoResponse;

    move-result-object v16

    .line 169
    .local v16, wrapper:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncResponse;>;"
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 170
    :cond_2
    sget-object v2, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v3, "Error while performing upstream timeline sync."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v2, 0x0

    goto :goto_0

    .line 175
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    iget-wide v0, v9, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->maxRowId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v2, v3, v6, v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->deletePendingActions(Landroid/content/Context;Ljava/lang/String;J)V

    .line 177
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getSerializedSize()I

    move-result v2

    int-to-long v2, v2

    #getter for: Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->numBytes:J
    invoke-static {v15}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->access$100(Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;)J

    move-result-wide v6

    add-long v4, v2, v6

    .line 178
    .local v4, totalBytes:J
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/logging/UserEventAction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v2}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v13

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/glass/home/sync/UploadSyncHelper;->logSyncMetrics(Lcom/google/glass/logging/UserEventAction;JJ)V

    .line 181
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    goto :goto_0
.end method

.method private syncNextUnsyncedItem(Ljava/util/Queue;Lcom/google/glass/home/sync/SyncStats;)Z
    .locals 7
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
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 431
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    sget-object v5, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v6, "No unsynced items."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_0
    return v4

    .line 436
    :cond_0
    iget-object v5, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->syncReporter:Lcom/google/glass/home/sync/SyncStatusReporter;

    invoke-interface {v5}, Lcom/google/glass/home/sync/SyncStatusReporter;->shouldRetry()Z

    move-result v5

    if-nez v5, :cond_1

    .line 437
    sget-object v5, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v6, "Not syncing to cloud because it is too early to retry."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v5

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v5, v6}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    goto :goto_0

    .line 444
    :cond_1
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 445
    .local v0, nextItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-direct {p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getAllowedSyncProtocols()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 446
    sget-object v4, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping sync of item [itemId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", syncProtocol="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 449
    const/4 v4, 0x1

    goto :goto_0

    .line 452
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/google/glass/home/sync/UploadSyncHelper;->syncItemToCloud(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/home/sync/SyncStats;)Landroid/util/Pair;

    move-result-object v2

    .line 453
    .local v2, response:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    if-eqz v2, :cond_5

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-object v3, v4

    .line 454
    .local v3, syncResponse:Lcom/google/googlex/glass/common/proto/SyncResponse;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-object v1, v4

    .line 455
    .local v1, requestItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_3
    if-nez v3, :cond_4

    .line 456
    iget-object v4, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->failedToSyncTimelineIds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_4
    invoke-direct {p0, p1, v3, v1}, Lcom/google/glass/home/sync/UploadSyncHelper;->handleItemsSyncedToCloud(Ljava/util/Queue;Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v4

    goto/16 :goto_0

    .end local v1           #requestItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v3           #syncResponse:Lcom/google/googlex/glass/common/proto/SyncResponse;
    :cond_5
    move-object v3, v1

    .line 453
    goto :goto_1
.end method

.method private transferAndCacheAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;Lcom/google/glass/home/sync/SyncStats;)Ljava/lang/String;
    .locals 16
    .parameter "attachment"
    .parameter "requestItemBuilder"
    .parameter "uploadedBytesCounter"
    .parameter "syncStats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attachment already uploaded [id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v10

    .line 421
    :cond_0
    :goto_0
    return-object v10

    .line 304
    :cond_1
    const/4 v10, 0x0

    .line 307
    .local v10, attachmentId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentTracker:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->getAttachmentIdForPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 312
    :goto_1
    if-eqz v10, :cond_2

    .line 316
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attachment previously uploaded, but ID not set on this item. Set to [id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :catch_0
    move-exception v11

    .line 309
    .local v11, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v4, "Failed to find lookup file in upload tracker -- we may upload twice"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 322
    .end local v11           #e:Ljava/io/IOException;
    :cond_2
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v4, "Attachment not yet uploaded."

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v12, file:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 330
    :cond_3
    sget-object v1, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 331
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing or empty file for attachment [path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v13

    .line 337
    .local v13, startMs:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, contentType:Ljava/lang/String;
    const-string v1, "video/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 339
    const/4 v10, 0x0

    .line 341
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->UPLOAD_SESSION_MNGR:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 342
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using session manager to upload video [name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v12}, Lcom/google/glass/timeline/AttachmentHelper;->insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/auth/InvalidCredentialsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    .line 358
    :goto_2
    if-nez v10, :cond_6

    .line 359
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to upload video [name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 347
    :catch_1
    move-exception v11

    .line 348
    .restart local v11       #e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v4, "Caught an IOException while doing an upload: "

    invoke-static {v1, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 349
    .end local v11           #e:Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 350
    .local v11, e:Lorg/apache/http/auth/InvalidCredentialsException;
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v4, "Client proxy says our credentials are bad: "

    invoke-static {v1, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 353
    .end local v11           #e:Lorg/apache/http/auth/InvalidCredentialsException;
    :cond_5
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using resumable upload to upload video [name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v12}, Lcom/google/glass/timeline/AttachmentHelper;->insertAttachmentViaResumableUpload(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 362
    :cond_6
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video uploaded successfully. [name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", attachmentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->access$114(Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;J)J

    .line 365
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v13

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/glass/home/sync/SyncStats;->trackUpload(Ljava/lang/String;JJ)V

    .line 369
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {v12}, Lcom/google/glass/util/FileSaver;->newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v5

    invoke-virtual {v1, v4, v10, v5}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v15

    .line 371
    .local v15, success:Z
    if-nez v15, :cond_0

    .line 372
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to save attachment to cache [id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 386
    .end local v15           #success:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->fileHelper:Lcom/google/glass/home/sync/FileHelper;

    invoke-virtual {v1, v12}, Lcom/google/glass/home/sync/FileHelper;->toByteString(Ljava/io/File;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 387
    .local v3, byteString:Lcom/google/protobuf/ByteString;
    if-nez v3, :cond_8

    .line 388
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to convert file to ByteString [name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sget-object v1, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 393
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 397
    :cond_8
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using standard attachment upload [name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/google/glass/timeline/AttachmentHelper;->insertAttachmentToServer(Ljava/lang/String;Lcom/google/protobuf/ByteString;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    .line 400
    if-nez v10, :cond_9

    .line 401
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to transfer attachment to server [contentType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 406
    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    int-to-long v4, v1

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->access$114(Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;J)J

    .line 407
    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    int-to-long v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/sync/UploadSyncHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v4

    sub-long v8, v4, v13

    move-object/from16 v4, p4

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Lcom/google/glass/home/sync/SyncStats;->trackUpload(Ljava/lang/String;JJ)V

    .line 410
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {v3}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v5

    invoke-virtual {v1, v4, v10, v5}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v15

    .line 413
    .restart local v15       #success:Z
    if-nez v15, :cond_0

    .line 414
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to save attachment to cache [id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelOpportunisticUpload()V
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->isUploadingOpportunisticItem:Z

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/AttachmentHelper;->abortResumableInsert()V

    .line 601
    :cond_0
    return-void
.end method

.method public sync(Lcom/google/glass/home/sync/SyncStats;)V
    .locals 5
    .parameter "syncStats"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/glass/home/sync/UploadSyncHelper;->getAllowedSyncProtocols()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->getUnsyncedItems(Landroid/content/ContentResolver;Ljava/util/List;Z)Ljava/util/Queue;

    move-result-object v0

    .line 110
    .local v0, unsyncedItems:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    sget-object v1, Lcom/google/glass/home/sync/UploadSyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "No timeline items to sync."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    return-void

    .line 114
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

    .line 115
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/google/glass/home/sync/UploadSyncHelper;->syncNextUnsyncedItem(Ljava/util/Queue;Lcom/google/glass/home/sync/SyncStats;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
