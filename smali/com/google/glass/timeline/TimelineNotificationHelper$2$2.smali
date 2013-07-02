.class Lcom/google/glass/timeline/TimelineNotificationHelper$2$2;
.super Ljava/lang/Object;
.source "TimelineNotificationHelper.java"

# interfaces
.implements Lcom/google/glass/html/HtmlRenderer$OnRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineNotificationHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineNotificationHelper$2;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineNotificationHelper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2$2;->this$0:Lcom/google/glass/timeline/TimelineNotificationHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/google/glass/html/HtmlRenderer;->isDoneLoadingResources()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Done loading HTML resources."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2$2;->this$0:Lcom/google/glass/timeline/TimelineNotificationHelper$2;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 170
    :cond_0
    return-void
.end method
