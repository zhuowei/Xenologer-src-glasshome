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
    .line 71
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$numNotifications:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 79
    iget-object v5, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasBundleId()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 83
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item is in a bundle, we must make sure we notify for the bundle cover: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v8, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v7, v8}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v5, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/glass/timeline/TimelineHelper;->getBundleCover(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 89
    .local v2, cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    if-nez v2, :cond_0

    .line 90
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not able to find bundle cover for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v8, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v7, v8}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v2           #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 96
    .restart local v2       #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    :cond_0
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 97
    .local v4, mainTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 98
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 110
    .end local v2           #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    .local v1, bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :goto_1
    iget-object v5, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/app/GlassApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v0

    .line 111
    .local v0, bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;
    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineNotificationHelper;->preloadAttachments(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 112
    if-eqz v1, :cond_1

    .line 113
    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineNotificationHelper;->preloadAttachments(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 117
    :cond_1
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying user of main timeline item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 119
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "item"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 120
    const-string v5, "item_id"

    new-instance v6, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v6, v4}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 121
    if-eqz v1, :cond_2

    .line 122
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "... and bundle timeline item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v5, "bundle_item"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    const-string v5, "bundle_item_id"

    new-instance v6, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v6, v1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    :cond_2
    const-string v5, "numNotifications"

    iget v6, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$numNotifications:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    iget-object v5, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_BroadcastWakeLock"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/google/glass/util/BroadcastUnderWakeLock;->sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    .end local v0           #bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;
    .end local v1           #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    goto/16 :goto_1

    .line 105
    .end local v1           #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v2           #cover:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Integer;>;"
    .end local v4           #mainTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_4
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 106
    .restart local v4       #mainTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    const/4 v1, 0x0

    .restart local v1       #bundleTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    goto/16 :goto_1
.end method
