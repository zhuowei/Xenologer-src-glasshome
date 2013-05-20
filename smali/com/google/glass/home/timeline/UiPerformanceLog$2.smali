.class Lcom/google/glass/home/timeline/UiPerformanceLog$2;
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
    .line 76
    iput-object p1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$2;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$2;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    #getter for: Lcom/google/glass/home/timeline/UiPerformanceLog;->isPerformanceMeasureEnabled:Z
    invoke-static {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$500(Lcom/google/glass/home/timeline/UiPerformanceLog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$2;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    #getter for: Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadQueueSample:Lcom/google/glass/logging/Sample;
    invoke-static {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$000(Lcom/google/glass/home/timeline/UiPerformanceLog;)Lcom/google/glass/logging/Sample;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$2;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    #getter for: Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadScheduleTime:J
    invoke-static {v3}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$600(Lcom/google/glass/home/timeline/UiPerformanceLog;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/logging/Sample;->record(J)V

    .line 85
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$2;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    #calls: Lcom/google/glass/home/timeline/UiPerformanceLog;->scheduleUiThreadQueueTime()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$700(Lcom/google/glass/home/timeline/UiPerformanceLog;)V

    goto :goto_0
.end method
