.class Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;
.super Ljava/lang/Object;
.source "HomeTimelineOptionsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

.field final synthetic val$dialog:Lcom/google/glass/widget/MessageDialog;

.field final synthetic val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object p3, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #getter for: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$000(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #getter for: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v1}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$000(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0, v1, v2}, Lcom/google/glass/companion/CompanionUtils;->sendTimelineItem(Landroid/content/Context;Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to send SMS to companion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #getter for: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$000(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->SYNC_FAILED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iget-object v3, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #getter for: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v3}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$200(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/companion/CompanionUtils;->updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;Lcom/google/glass/timeline/TimelineHelper;Z)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    :goto_0
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2$1;-><init>(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS to companion is sent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #getter for: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$000(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iget-object v3, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #getter for: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v3}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$200(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/companion/CompanionUtils;->updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;Lcom/google/glass/timeline/TimelineHelper;Z)V

    .line 100
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
