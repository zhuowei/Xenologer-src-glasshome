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

.field final synthetic val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$itemId:Lcom/google/glass/timeline/TimelineItemId;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iput-object p2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    iput-object p3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 428
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-nez v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #calls: Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$700(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #calls: Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$800(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/lang/String;

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

    .line 434
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v1, v2, v4}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(Ljava/lang/Object;Z)Z

    move-result v0

    .line 437
    .local v0, foundItem:Z
    if-eqz v0, :cond_2

    .line 438
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #calls: Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$900(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Found the target item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #calls: Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$1100(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/lang/String;

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

    .line 447
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #calls: Lcom/google/glass/home/timeline/MainTimelineActivity;->isFromScreenOffNotification()Z
    invoke-static {v3}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->goToBundle(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 450
    :cond_1
    return-void

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #calls: Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$1000(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification item not found, going to active item."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;
    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #getter for: Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;
    invoke-static {v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/MainTimelineView;->getMostRelevantActiveItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto :goto_0
.end method
