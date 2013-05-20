.class Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;
.super Ljava/lang/Object;
.source "GlasswareIconLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/GlasswareIconLoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheEntry"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private fingerprint:J

.field private isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private nextValidationTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method getFingerprint()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->fingerprint:J

    return-wide v0
.end method

.method declared-synchronized getNextValidationTime()J
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->nextValidationTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method populate([BJ)V
    .locals 2
    .parameter "data"
    .parameter "fingerprint"

    .prologue
    .line 93
    iput-wide p2, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->fingerprint:J

    .line 94
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->bitmap:Landroid/graphics/Bitmap;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 98
    return-void
.end method

.method declared-synchronized setNextValidationTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->nextValidationTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method waitForBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->bitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 86
    invoke-static {}, Lcom/google/glass/util/GlasswareIconLoadingTask;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interrupted in waitForBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
