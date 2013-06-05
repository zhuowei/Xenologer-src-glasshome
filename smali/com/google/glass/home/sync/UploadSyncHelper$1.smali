.class Lcom/google/glass/home/sync/UploadSyncHelper$1;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "UploadSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/sync/UploadSyncHelper;->markAsSynced(Lcom/google/googlex/glass/common/proto/TimelineItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

.field final synthetic val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/home/sync/UploadSyncHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    iput-object p2, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 580
    iget-object v7, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 581
    .local v7, expectedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    #getter for: Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v0}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$200(Lcom/google/glass/home/sync/UploadSyncHelper;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    iget-object v1, v1, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    .line 584
    .local v6, actualItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-nez v6, :cond_0

    .line 585
    invoke-static {}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item not found in database [itemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :goto_0
    return-object v3

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    invoke-virtual {v0, v7, v6}, Lcom/google/glass/home/sync/UploadSyncHelper;->isUnmodifiedDuringSync(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v4

    .line 595
    .local v4, unmodifiedDuringSync:Z
    if-eqz v4, :cond_1

    .line 596
    invoke-static {v7}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v10

    .line 598
    .local v10, mergedBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking as synced [itemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearPendingAction()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 628
    :goto_1
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    #getter for: Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v0}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$200(Lcom/google/glass/home/sync/UploadSyncHelper;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    iget-object v1, v1, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    goto :goto_0

    .line 603
    .end local v10           #mergedBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    :cond_1
    invoke-static {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v10

    .line 605
    .restart local v10       #mergedBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not marking item as synced since it was modified during the sync and has unsynced changes [itemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v0, 0x2

    invoke-static {}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nexpected:\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\nactual:\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getPendingActionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 612
    .local v9, menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-static {}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing actions [itemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", menuItemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/MenuItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getPendingActionBuilderList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 618
    .end local v9           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    :cond_2
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v11

    .line 619
    .local v11, shareTargets:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 620
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearShareTarget()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAllShareTarget(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 623
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    #getter for: Lcom/google/glass/home/sync/UploadSyncHelper;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;
    invoke-static {v1}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$400(Lcom/google/glass/home/sync/UploadSyncHelper;)Lcom/google/glass/timeline/AttachmentHelper;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/google/glass/timeline/AttachmentHelper;->mergeAttachments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAllAttachment(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto/16 :goto_1
.end method
