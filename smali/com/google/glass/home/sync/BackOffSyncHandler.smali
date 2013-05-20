.class abstract Lcom/google/glass/home/sync/BackOffSyncHandler;
.super Ljava/lang/Object;
.source "BackOffSyncHandler.java"

# interfaces
.implements Lcom/google/glass/home/sync/SyncStatusReporter;


# static fields
.field private static final BACKOFF_EXPONENT:D = 2.0

.field private static final RETRY_DELAY_MILLIS:I = 0x3e8


# instance fields
.field private nextSyncTime:J

.field private numRetries:I

.field private final retryStrategy:Lcom/google/glass/util/RetryStrategy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    const/16 v0, 0x3e8

    const-wide/high16 v1, 0x4000

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/RetryStrategy;->exponentialBackoffWithJitter(IDI)Lcom/google/glass/util/RetryStrategy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/sync/BackOffSyncHandler;-><init>(Lcom/google/glass/util/RetryStrategy;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/util/RetryStrategy;)V
    .locals 0
    .parameter "retryStrategy"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->retryStrategy:Lcom/google/glass/util/RetryStrategy;

    .line 34
    return-void
.end method


# virtual methods
.method public getDelayRemainingSecs()J
    .locals 5

    .prologue
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 73
    .local v0, uptime:J
    iget-wide v2, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->nextSyncTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 74
    const-wide/16 v2, 0x0

    .line 76
    :goto_0
    return-wide v2

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->nextSyncTime:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public handleFail()V
    .locals 5

    .prologue
    .line 43
    iget v2, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->numRetries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->numRetries:I

    .line 44
    iget-object v2, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->retryStrategy:Lcom/google/glass/util/RetryStrategy;

    iget v3, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->numRetries:I

    invoke-virtual {v2, v3}, Lcom/google/glass/util/RetryStrategy;->getDelayMillis(I)I

    move-result v2

    int-to-long v0, v2

    .line 45
    .local v0, backOffDelay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 46
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->nextSyncTime:J

    .line 51
    return-void

    .line 49
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "We should never stop trying when we use RetryStrategy.NO_MAX"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public handleSuccess()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->numRetries:I

    .line 39
    return-void
.end method

.method public hasFailures()Z
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->numRetries:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldRetry()Z
    .locals 7

    .prologue
    .line 55
    iget-wide v3, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->nextSyncTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 56
    .local v0, remainingBackOffDelay:J
    iget-object v3, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->retryStrategy:Lcom/google/glass/util/RetryStrategy;

    iget v4, p0, Lcom/google/glass/home/sync/BackOffSyncHandler;->numRetries:I

    invoke-virtual {v3, v4}, Lcom/google/glass/util/RetryStrategy;->tryAgain(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    const/4 v2, 0x1

    .line 58
    .local v2, shouldRetry:Z
    :goto_0
    if-nez v2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/google/glass/home/sync/BackOffSyncHandler;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backing off for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return v2

    .line 56
    .end local v2           #shouldRetry:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
