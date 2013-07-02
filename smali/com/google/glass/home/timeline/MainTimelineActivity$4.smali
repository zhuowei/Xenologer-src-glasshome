.class Lcom/google/glass/home/timeline/MainTimelineActivity$4;
.super Ljava/lang/Object;
.source "MainTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;->goToTimeline(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

.field final synthetic val$bundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field final synthetic val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$itemId:Lcom/google/glass/timeline/TimelineItemId;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iput-object p2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    iput-object p3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    iput-object p4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$bundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 448
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-nez v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #calls: Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$500(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have new data; will try again to start at notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$100(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v1, v2, v6}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(Ljava/lang/Object;Z)Z

    move-result v0

    .line 457
    .local v0, foundItem:Z
    if-eqz v0, :cond_2

    .line 458
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Found the target item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v1, :cond_3

    .line 467
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening bundle for item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$bundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isNotification()Z

    move-result v4

    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v5}, Lcom/google/glass/home/timeline/MainTimelineActivity;->shouldShowVoiceMenuImmediately()Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/glass/timeline/TimelineHelper;->goToBundle(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZZ)V

    .line 475
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_notification"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setIntent(Landroid/content/Intent;)V

    .line 480
    :cond_1
    :goto_1
    return-void

    .line 460
    :cond_2
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification item not found, going to active item."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$100(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;
    invoke-static {v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$100(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/MainTimelineView;->getMostRelevantActiveItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto :goto_0

    .line 476
    :cond_3
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->shouldShowVoiceMenuImmediately()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$600(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->triggerOkGlass(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z

    .line 478
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v1, v6}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setShouldShowVoiceMenuImmediately(Z)V

    goto :goto_1
.end method
