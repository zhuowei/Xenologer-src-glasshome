.class Lcom/google/glass/home/timeline/UiPerformanceLog$1;
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
    .line 36
    iput-object p1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$1;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logAverageAndVariance(Lcom/google/glass/logging/Sample;Lcom/google/glass/logging/UserEventAction;)V
    .locals 10
    .parameter "sample"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    invoke-virtual {p1}, Lcom/google/glass/logging/Sample;->getNumSamples()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    const-string v1, "a"

    const-string v2, "%.3f"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/logging/Sample;->getAverage()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "v"

    aput-object v4, v3, v8

    const-string v4, "%.3f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/logging/Sample;->getVariance()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, tuple:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/glass/logging/Sample;->reset()V

    .line 57
    new-instance v1, Lcom/google/glass/logging/UserEventHelper;

    iget-object v2, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$1;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    #getter for: Lcom/google/glass/home/timeline/UiPerformanceLog;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$400(Lcom/google/glass/home/timeline/UiPerformanceLog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2, v0}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 59
    .end local v0           #tuple:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$1;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    #getter for: Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadQueueSample:Lcom/google/glass/logging/Sample;
    invoke-static {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$000(Lcom/google/glass/home/timeline/UiPerformanceLog;)Lcom/google/glass/logging/Sample;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->UI_THREAD_QUEUE:Lcom/google/glass/logging/UserEventAction;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/UiPerformanceLog$1;->logAverageAndVariance(Lcom/google/glass/logging/Sample;Lcom/google/glass/logging/UserEventAction;)V

    .line 42
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$1;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    #getter for: Lcom/google/glass/home/timeline/UiPerformanceLog;->timeBetweenRendersSample:Lcom/google/glass/logging/Sample;
    invoke-static {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$100(Lcom/google/glass/home/timeline/UiPerformanceLog;)Lcom/google/glass/logging/Sample;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->UI_TIME_BETWEEN_RENDERS:Lcom/google/glass/logging/UserEventAction;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/UiPerformanceLog$1;->logAverageAndVariance(Lcom/google/glass/logging/Sample;Lcom/google/glass/logging/UserEventAction;)V

    .line 43
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$1;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    #getter for: Lcom/google/glass/home/timeline/UiPerformanceLog;->timeToRenderSample:Lcom/google/glass/logging/Sample;
    invoke-static {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$200(Lcom/google/glass/home/timeline/UiPerformanceLog;)Lcom/google/glass/logging/Sample;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->UI_TIME_TO_RENDER:Lcom/google/glass/logging/UserEventAction;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/UiPerformanceLog$1;->logAverageAndVariance(Lcom/google/glass/logging/Sample;Lcom/google/glass/logging/UserEventAction;)V

    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog$1;->this$0:Lcom/google/glass/home/timeline/UiPerformanceLog;

    #calls: Lcom/google/glass/home/timeline/UiPerformanceLog;->schedulePerformanceLogging()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->access$300(Lcom/google/glass/home/timeline/UiPerformanceLog;)V

    .line 47
    return-void
.end method
