.class final Lcom/google/glass/timeline/TimelineNotificationHelper$1;
.super Ljava/lang/Object;
.source "TimelineNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field final synthetic val$numNotifications:I


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$numNotifications:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 55
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasBundleId()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 59
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item is in a bundle, we must make sure we notify for the bundle cover: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v7, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v6, v7}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/timeline/TimelineHelper;->getBundleCover(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 65
    .local v1, cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 66
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not able to find bundle cover for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v7, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v6, v7}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v1           #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 72
    .restart local v1       #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    :cond_0
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 73
    .local v3, mainTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 74
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 85
    .end local v1           #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    .local v0, bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :goto_1
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying user of main timeline item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 87
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "item_id"

    new-instance v5, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v5, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "... and bundle timeline item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v4, "bundle_item_id"

    new-instance v5, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v5, v0}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 92
    :cond_1
    const-string v4, "numNotifications"

    iget v5, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$numNotifications:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_BroadcastWakeLock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/google/glass/util/BroadcastUnderWakeLock;->sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    .end local v0           #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    goto/16 :goto_1

    .line 81
    .end local v0           #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v1           #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    .end local v3           #mainTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_3
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 82
    .restart local v3       #mainTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    const/4 v0, 0x0

    .restart local v0       #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    goto/16 :goto_1
.end method
