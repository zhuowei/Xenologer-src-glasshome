.class Lcom/google/glass/home/timeline/UiPerformanceLog$3;
.super Ljava/lang/Object;
.source "UiPerformanceLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/UiPerformanceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/UiPerformanceLog;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$3;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$3;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadScheduleTime:J
    invoke-static {v0, v1, v2}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$602(Lcom/google/glass/home/timeline/UiPerformanceLog;J)J

    .line 94
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$3;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    #getter for: Lcom/google/glass/home/timeline/UiPerformanceLog;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$900(Lcom/google/glass/home/timeline/UiPerformanceLog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$3;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    #getter for: Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadQueueEndRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$800(Lcom/google/glass/home/timeline/UiPerformanceLog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method
