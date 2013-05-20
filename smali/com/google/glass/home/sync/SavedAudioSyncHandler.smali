.class public Lcom/google/glass/home/sync/SavedAudioSyncHandler;
.super Lcom/google/glass/home/sync/BackOffSyncHandler;
.source "SavedAudioSyncHandler.java"


# static fields
.field private static final BACKOFF_MULTIPLIER:D = 2.0

.field private static final FIRST_RETRY_DELAY_MS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/home/sync/SavedAudioSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->TAG:Ljava/lang/String;

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->FIRST_RETRY_DELAY_MS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 28
    sget v0, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->FIRST_RETRY_DELAY_MS:I

    const-wide/high16 v1, 0x4000

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/RetryStrategy;->exponentialBackoff(IDI)Lcom/google/glass/util/RetryStrategy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/sync/BackOffSyncHandler;-><init>(Lcom/google/glass/util/RetryStrategy;)V

    .line 30
    iput-object p1, p0, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage;

    new-instance v1, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>()V

    invoke-static {p1, v1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createS3SavedAudioSyncer(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;-><init>(Lcom/google/glass/logging/audio/SavedAudioSyncer;)V

    iput-object v0, p0, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    .line 33
    return-void
.end method


# virtual methods
.method public deleteOldAudio()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v1, p0, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteOldAudio(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public bridge synthetic getDelayRemainingSecs()J
    .locals 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/google/glass/home/sync/BackOffSyncHandler;->getDelayRemainingSecs()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic handleFail()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/google/glass/home/sync/BackOffSyncHandler;->handleFail()V

    return-void
.end method

.method public bridge synthetic handleSuccess()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/google/glass/home/sync/BackOffSyncHandler;->handleSuccess()V

    return-void
.end method

.method public bridge synthetic hasFailures()Z
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/google/glass/home/sync/BackOffSyncHandler;->hasFailures()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldRetry()Z
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/google/glass/home/sync/BackOffSyncHandler;->shouldRetry()Z

    move-result v0

    return v0
.end method

.method public syncSavedAudio()V
    .locals 4

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v2, p0, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->context:Landroid/content/Context;

    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getEnabledStorageLabs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/logging/audio/SavedAudioStorage;->uploadStoredAudio(Landroid/content/Context;Ljava/util/List;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->handleSuccess()V
    :try_end_0
    .catch Lcom/google/glass/logging/audio/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Lcom/google/glass/logging/audio/SyncFailedException;
    sget-object v1, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "Syncing saved audio to S3 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    invoke-virtual {p0}, Lcom/google/glass/home/sync/SavedAudioSyncHandler;->handleFail()V

    goto :goto_0
.end method
