.class public Lcom/google/glass/voice/network/RetryPolicyImpl;
.super Ljava/lang/Object;
.source "RetryPolicyImpl.java"

# interfaces
.implements Lcom/google/android/speech/engine/RetryPolicy;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private counter:I

.field private maxRetryTimeoutMsec:I

.field private final networkRecognizer:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;",
            ">;"
        }
    .end annotation
.end field

.field private recognitionStartedTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/voice/network/RetryPolicyImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/RetryPolicyImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Supplier;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, networkRecognizer:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->networkRecognizer:Lcom/google/common/base/Supplier;

    .line 33
    invoke-virtual {p0}, Lcom/google/glass/voice/network/RetryPolicyImpl;->reset()V

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized canRetry(Lcom/google/android/speech/exception/RecognizeException;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    .line 65
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->counter:I

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/google/glass/voice/network/RetryPolicyImpl;->TAG:Ljava/lang/String;

    const-string v2, "No more retries available.  Giving up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 93
    :goto_0
    monitor-exit p0

    return v0

    .line 77
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->counter:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->networkRecognizer:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->getMaxRetries()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->counter:I

    .line 79
    iget-object v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->networkRecognizer:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->getMaxRetryTimeoutMsec()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->maxRetryTimeoutMsec:I

    .line 82
    :cond_1
    iget-wide v2, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->recognitionStartedTimestamp:J

    iget v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->maxRetryTimeoutMsec:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 83
    sget-object v0, Lcom/google/glass/voice/network/RetryPolicyImpl;->TAG:Ljava/lang/String;

    const-string v2, "It\'s been too long.  Giving up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    instance-of v0, p1, Lcom/google/android/speech/exception/NetworkRecognizeException;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/google/android/speech/exception/AuthFailureException;

    if-eqz v0, :cond_4

    .line 88
    :cond_3
    sget-object v0, Lcom/google/glass/voice/network/RetryPolicyImpl;->TAG:Ljava/lang/String;

    const-string v1, "Retry available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->counter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->counter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 93
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equivalentToError(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/android/speech/exception/RecognizeException;
    .locals 2
    .parameter "response"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/speech/exception/AuthFailureException;->isAuthErrorCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/google/android/speech/exception/AuthFailureException;

    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/speech/exception/AuthFailureException;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_0
    monitor-exit p0

    return-object v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->counter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->counter:I

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/voice/network/RetryPolicyImpl;->recognitionStartedTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
