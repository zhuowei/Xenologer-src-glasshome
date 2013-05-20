.class Lcom/google/glass/share/ShareActivity$2;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareActivity;->shareItem(Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareActivity;

.field final synthetic val$attemptNumber:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$itemIdToShare:Landroid/net/Uri;

.field final synthetic val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareActivity;Landroid/content/Context;Landroid/net/Uri;ILcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    iput-object p2, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/share/ShareActivity$2;->val$itemIdToShare:Landroid/net/Uri;

    iput p4, p0, Lcom/google/glass/share/ShareActivity$2;->val$attemptNumber:I

    iput-object p5, p0, Lcom/google/glass/share/ShareActivity$2;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 10

    .prologue
    const/4 v8, 0x5

    const/4 v3, 0x0

    .line 387
    iget-object v5, p0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    #getter for: Lcom/google/glass/share/ShareActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v5}, Lcom/google/glass/share/ShareActivity;->access$600(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/share/ShareActivity$2;->val$itemIdToShare:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    .line 391
    .local v2, itemToShare:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-nez v2, :cond_1

    .line 392
    sget-object v5, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Giving up since we couldn\'t find a timeline item for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/share/ShareActivity$2;->val$itemIdToShare:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    :goto_0
    return-object v3

    .line 398
    :cond_1
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    if-ne v5, v6, :cond_3

    .line 399
    iget v5, p0, Lcom/google/glass/share/ShareActivity$2;->val$attemptNumber:I

    if-lt v5, v8, :cond_2

    .line 400
    sget-object v5, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Giving up because item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " was not ready after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attempts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_2
    const/16 v5, 0x3e8

    iget v6, p0, Lcom/google/glass/share/ShareActivity$2;->val$attemptNumber:I

    shl-int/2addr v5, v6

    int-to-long v0, v5

    .line 406
    .local v0, delayMs:J
    sget-object v5, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item is not ready to be shared yet. Retrying in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v5, p0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    #getter for: Lcom/google/glass/share/ShareActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/google/glass/share/ShareActivity;->access$700(Lcom/google/glass/share/ShareActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/google/glass/share/ShareActivity$2$1;

    invoke-direct {v6, p0}, Lcom/google/glass/share/ShareActivity$2$1;-><init>(Lcom/google/glass/share/ShareActivity$2;)V

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 416
    .end local v0           #delayMs:J
    :cond_3
    iget-object v5, p0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    #getter for: Lcom/google/glass/share/ShareActivity;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v5}, Lcom/google/glass/share/ShareActivity;->access$600(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    new-instance v7, Lcom/google/glass/util/SettingsSecure;

    iget-object v8, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    .line 419
    .local v4, timelineItemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    sget-object v5, Lcom/google/glass/share/ShareActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to share item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/share/ShareActivity$2;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    #calls: Lcom/google/glass/share/ShareActivity;->copyFieldsToSharedItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    invoke-static {v2, v4}, Lcom/google/glass/share/ShareActivity;->access$800(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V

    .line 423
    iget-object v5, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    #calls: Lcom/google/glass/share/ShareActivity;->cloneAttachmentsInCache(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z
    invoke-static {v5, v4}, Lcom/google/glass/share/ShareActivity;->access$900(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 426
    iget-object v5, p0, Lcom/google/glass/share/ShareActivity$2;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 427
    iget-object v5, p0, Lcom/google/glass/share/ShareActivity$2;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 428
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItemBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 431
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/share/ShareActivity$2;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    iget-object v7, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/entity/EntityHelper;->updateEntityShareColumns(Lcom/google/googlex/glass/common/proto/Entity;Landroid/content/ContentResolver;)V

    .line 434
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    .line 435
    .local v3, timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    new-instance v5, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v5}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iget-object v6, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    sget-object v7, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->SHARE:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v8

    sget-object v9, Lcom/google/googlex/glass/common/proto/UserAction$Type;->SHARE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v8, v9}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v8

    invoke-virtual {v5, v6, v3, v7, v8}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 437
    iget-object v5, p0, Lcom/google/glass/share/ShareActivity$2;->val$context:Landroid/content/Context;

    #calls: Lcom/google/glass/share/ShareActivity;->logShareEvent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    invoke-static {v5, v3}, Lcom/google/glass/share/ShareActivity;->access$1000(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    goto/16 :goto_0
.end method
