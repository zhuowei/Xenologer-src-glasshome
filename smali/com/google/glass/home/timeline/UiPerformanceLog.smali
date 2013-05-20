.class public Lcom/google/glass/home/timeline/UiPerformanceLog;
.super Ljava/lang/Object;
.source "UiPerformanceLog.java"


# static fields
.field private static final DECIMAL_FORMAT:Ljava/lang/String; = "%.3f"

#the value of this static final field might be set in the static constructor
.field private static final LOG_FLUSH_INTERVAL_MILLIS:J = 0x0L

.field private static final TIME_BETWEEN_RENDERS_NUM_SAMPLES:I = 0x400

.field private static final TIME_TO_RENDER_NUM_SAMPLES:I = 0x400

.field private static final UI_THREAD_QUEUE_NUM_SAMPLES:I = 0x400

.field private static final UI_THREAD_QUEUE_TIME_SAMPLE_INTERVAL_MILLIS:J = 0xfaL


# instance fields
.field private final context:Landroid/content/Context;

.field private final flushPerformanceLogsRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private isPerformanceMeasureEnabled:Z

.field private lastRenderStartTime:J

.field private final timeBetweenRendersSample:Lcom/google/glass/logging/Sample;

.field private final timeToRenderSample:Lcom/google/glass/logging/Sample;

.field private final uiThreadQueueEndRunnable:Ljava/lang/Runnable;

.field private final uiThreadQueueSample:Lcom/google/glass/logging/Sample;

.field private final uiThreadQueueStartRunnable:Ljava/lang/Runnable;

.field private uiThreadScheduleTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/timeline/UiPerformanceLog;->LOG_FLUSH_INTERVAL_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0x400

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/google/glass/home/timeline/UiPerformanceLog$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/UiPerformanceLog$1;-><init>(Lcom/google/glass/home/timeline/UiPerformanceLog;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->flushPerformanceLogsRunnable:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lcom/google/glass/logging/Sample;

    invoke-direct {v0, v1}, Lcom/google/glass/logging/Sample;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/glass/logging/Sample;->wantAverage()Lcom/google/glass/logging/Sample;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/logging/Sample;->wantVariance()Lcom/google/glass/logging/Sample;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadQueueSample:Lcom/google/glass/logging/Sample;

    .line 76
    new-instance v0, Lcom/google/glass/home/timeline/UiPerformanceLog$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/UiPerformanceLog$2;-><init>(Lcom/google/glass/home/timeline/UiPerformanceLog;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadQueueEndRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/google/glass/home/timeline/UiPerformanceLog$3;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/UiPerformanceLog$3;-><init>(Lcom/google/glass/home/timeline/UiPerformanceLog;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadQueueStartRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/google/glass/logging/Sample;

    invoke-direct {v0, v1}, Lcom/google/glass/logging/Sample;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/glass/logging/Sample;->wantAverage()Lcom/google/glass/logging/Sample;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/logging/Sample;->wantVariance()Lcom/google/glass/logging/Sample;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->timeBetweenRendersSample:Lcom/google/glass/logging/Sample;

    .line 105
    new-instance v0, Lcom/google/glass/logging/Sample;

    invoke-direct {v0, v1}, Lcom/google/glass/logging/Sample;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/glass/logging/Sample;->wantAverage()Lcom/google/glass/logging/Sample;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/logging/Sample;->wantVariance()Lcom/google/glass/logging/Sample;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->timeToRenderSample:Lcom/google/glass/logging/Sample;

    .line 112
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 113
    iput-object p1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->context:Landroid/content/Context;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->handler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/UiPerformanceLog;)Lcom/google/glass/logging/Sample;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadQueueSample:Lcom/google/glass/logging/Sample;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/UiPerformanceLog;)Lcom/google/glass/logging/Sample;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->timeBetweenRendersSample:Lcom/google/glass/logging/Sample;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/UiPerformanceLog;)Lcom/google/glass/logging/Sample;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->timeToRenderSample:Lcom/google/glass/logging/Sample;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/UiPerformanceLog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->schedulePerformanceLogging()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/UiPerformanceLog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/UiPerformanceLog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/UiPerformanceLog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadScheduleTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/google/glass/home/timeline/UiPerformanceLog;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadScheduleTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/google/glass/home/timeline/UiPerformanceLog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->scheduleUiThreadQueueTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/home/timeline/UiPerformanceLog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadQueueEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/home/timeline/UiPerformanceLog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private schedulePerformanceLogging()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->flushPerformanceLogsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->flushPerformanceLogsRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/glass/home/timeline/UiPerformanceLog;->LOG_FLUSH_INTERVAL_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    return-void
.end method

.method private scheduleUiThreadQueueTime()V
    .locals 4

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadQueueStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->uiThreadQueueStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onRenderEnd()V
    .locals 6

    .prologue
    .line 188
    iget-boolean v2, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-wide v2, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->lastRenderStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 193
    .local v0, now:J
    iget-object v2, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->timeToRenderSample:Lcom/google/glass/logging/Sample;

    iget-wide v3, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->lastRenderStartTime:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/logging/Sample;->record(J)V

    goto :goto_0
.end method

.method public onRenderStart()V
    .locals 6

    .prologue
    .line 176
    iget-boolean v2, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    if-nez v2, :cond_0

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 180
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->lastRenderStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->timeBetweenRendersSample:Lcom/google/glass/logging/Sample;

    iget-wide v3, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->lastRenderStartTime:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/logging/Sample;->record(J)V

    .line 183
    :cond_1
    iput-wide v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->lastRenderStartTime:J

    goto :goto_0
.end method

.method public startPerformanceLogging()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->flushPerformanceLogsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->flushPerformanceLogsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method public startPerformanceMeasure()V
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    .line 127
    invoke-direct {p0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->scheduleUiThreadQueueTime()V

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->lastRenderStartTime:J

    goto :goto_0
.end method

.method public stopPerformanceLogging()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->flushPerformanceLogsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public stopPerformanceMeasure()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    .line 136
    return-void
.end method
