.class Lcom/google/glass/share/ShareActivity$2;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareActivity;->shareItem(Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareActivity;

.field final synthetic val$annotation:Ljava/lang/String;

.field final synthetic val$attemptNumber:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$itemIdToShare:Landroid/net/Uri;

.field final synthetic val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareActivity;ILcom/google/googlex/glass/common/proto/Entity;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    iput p2, p0, Lcom/google/glass/share/ShareActivity$2;->val$attemptNumber:I

    iput-object p3, p0, Lcom/google/glass/share/ShareActivity$2;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    iput-object p4, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/glass/share/ShareActivity$2;->val$itemIdToShare:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/glass/share/ShareActivity$2;->val$annotation:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 12

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 439
    iget v1, p0, Lcom/google/glass/share/ShareActivity$2;->val$attemptNumber:I

    if-nez v1, :cond_0

    .line 440
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/share/ShareActivity$2;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/entity/EntityHelper;->updateEntityShareColumns(Lcom/google/googlex/glass/common/proto/Entity;Landroid/content/Context;)V

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    #getter for: Lcom/google/glass/share/ShareActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v1}, Lcom/google/glass/share/ShareActivity;->access$400(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$2;->val$itemIdToShare:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v9

    .line 448
    .local v9, itemToShare:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-nez v9, :cond_2

    .line 449
    sget-object v1, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Giving up since we couldn\'t find a timeline item for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$2;->val$itemIdToShare:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_1
    :goto_0
    return-object v10

    .line 455
    :cond_2
    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    if-ne v1, v2, :cond_4

    .line 456
    iget v1, p0, Lcom/google/glass/share/ShareActivity$2;->val$attemptNumber:I

    if-lt v1, v5, :cond_3

    .line 457
    sget-object v1, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Giving up because item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not ready after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attempts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_3
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/glass/share/ShareActivity$2;->val$attemptNumber:I

    shl-int/2addr v1, v2

    int-to-long v7, v1

    .line 463
    .local v7, delayMs:J
    sget-object v1, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item is not ready to be shared yet. Retrying in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    #getter for: Lcom/google/glass/share/ShareActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/share/ShareActivity;->access$600(Lcom/google/glass/share/ShareActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/glass/share/ShareActivity$2$1;

    invoke-direct {v2, p0}, Lcom/google/glass/share/ShareActivity$2$1;-><init>(Lcom/google/glass/share/ShareActivity$2;)V

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 473
    .end local v7           #delayMs:J
    :cond_4
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    #getter for: Lcom/google/glass/share/ShareActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v1}, Lcom/google/glass/share/ShareActivity;->access$400(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    iget-object v5, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v11

    .line 476
    .local v11, timelineItemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    sget-object v1, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to share item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$2;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    #calls: Lcom/google/glass/share/ShareActivity;->copyFieldsToSharedItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    invoke-static {v9, v11}, Lcom/google/glass/share/ShareActivity;->access$700(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V

    .line 480
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    #getter for: Lcom/google/glass/share/ShareActivity;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;
    invoke-static {v1}, Lcom/google/glass/share/ShareActivity;->access$800(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/timeline/AttachmentHelper;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/google/glass/timeline/AttachmentHelper;->cloneAttachments(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 484
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v11, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 485
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 487
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2;->val$annotation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v6, 0x1

    .line 488
    .local v6, annotated:Z
    :goto_1
    if-eqz v6, :cond_5

    .line 489
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2;->val$annotation:Ljava/lang/String;

    invoke-virtual {v11, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 492
    :cond_5
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    .line 493
    .local v0, timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v10

    .line 494
    .local v10, timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    sget-object v2, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->SHARE:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/googlex/glass/common/proto/UserAction$Type;->SHARE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v3, v5}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v3

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 496
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    #calls: Lcom/google/glass/share/ShareActivity;->logShareEvent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V
    invoke-static {v1, v10, v6}, Lcom/google/glass/share/ShareActivity;->access$900(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V

    .line 500
    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/googlex/glass/common/proto/UserAction$Type;->SHARE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v3, v5}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto/16 :goto_0

    .end local v0           #timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    .end local v6           #annotated:Z
    .end local v10           #timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_6
    move v6, v4

    .line 487
    goto :goto_1
.end method
