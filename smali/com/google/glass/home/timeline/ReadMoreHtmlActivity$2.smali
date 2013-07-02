.class Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;
.super Ljava/lang/Object;
.source "ReadMoreHtmlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    .line 101
    .local v0, itemId:Lcom/google/glass/timeline/TimelineItemId;
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    new-instance v2, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v2}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iget-object v3, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    #setter for: Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v1, v2}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$202(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 104
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2$1;

    invoke-direct {v2, p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2$1;-><init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
