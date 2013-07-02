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
    .line 573
    iput-object p1, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    iput-object p2, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 576
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

    .line 579
    .local v6, actualItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-nez v6, :cond_0

    .line 580
    invoke-static {}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Item not found in database [itemId=%s]."

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    :goto_0
    return-object v3

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0, v1, v6}, Lcom/google/glass/home/sync/UploadSyncHelper;->isUnmodifiedDuringSync(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v4

    .line 590
    .local v4, unmodifiedDuringSync:Z
    if-eqz v4, :cond_1

    .line 591
    invoke-static {}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Marking as synced [itemId=%s]."

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v9

    .line 595
    .local v9, mergedBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearPendingAction()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 622
    :goto_1
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    #getter for: Lcom/google/glass/home/sync/UploadSyncHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v0}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$200(Lcom/google/glass/home/sync/UploadSyncHelper;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    iget-object v1, v1, Lcom/google/glass/home/sync/UploadSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    goto :goto_0

    .line 597
    .end local v9           #mergedBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    :cond_1
    invoke-static {}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not marking item as synced since it was modified during the sync and has unsynced changes [itemId=%s]."

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    invoke-static {}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nexpected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nactual:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v9

    .line 605
    .restart local v9       #mergedBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getPendingActionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 606
    .local v8, menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-static {}, Lcom/google/glass/home/sync/UploadSyncHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Removing actions [itemId=%s, menuItemId=%s]."

    new-array v2, v13, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v5

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/MenuItem;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v12

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getPendingActionBuilderList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 612
    .end local v8           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    :cond_2
    iget-object v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v10

    .line 613
    .local v10, shareTargets:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 614
    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearShareTarget()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAllShareTarget(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 617
    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/sync/UploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/timeline/AttachmentHelper;->mergeAttachments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAllAttachment(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto/16 :goto_1
.end method
