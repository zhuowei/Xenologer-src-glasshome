.class public Lcom/google/glass/util/CachedFilesManager;
.super Ljava/lang/Object;
.source "CachedFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;,
        Lcom/google/glass/util/CachedFilesManager$Loader;,
        Lcom/google/glass/util/CachedFilesManager$Type;
    }
.end annotation


# static fields
.field private static final DELETION_BUDGET_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String;

.field private static sharedInstance:Lcom/google/glass/util/CachedFilesManager;


# instance fields
.field private final dir:Ljava/io/File;

.field public final dirPathLength:I

.field private final filePathToUsageCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fileSaver:Lcom/google/glass/util/FileSaver;

.field private final limitInByte:J

.field private final limitInCount:I

.field private numOfFiles:I

.field private pendingTrimmings:I

.field private sizeInBytes:J

.field private final targetLimitInByte:J

.field private final targetLimitInCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2
    .parameter "dir"
    .parameter "limitInByte"
    .parameter "limitInCount"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    .line 138
    new-instance v0, Lcom/google/glass/util/FileSaver;

    invoke-direct {v0, p1}, Lcom/google/glass/util/FileSaver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    .line 139
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->dirPathLength:I

    .line 141
    iput-wide p2, p0, Lcom/google/glass/util/CachedFilesManager;->limitInByte:J

    .line 143
    const/4 v0, 0x1

    shr-long v0, p2, v0

    iput-wide v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInByte:J

    .line 145
    iput p4, p0, Lcom/google/glass/util/CachedFilesManager;->limitInCount:I

    .line 147
    shr-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInCount:I

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    .line 155
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/CachedFilesManager$1;

    invoke-direct {v1, p0}, Lcom/google/glass/util/CachedFilesManager$1;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->setupFileBookkeeping()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->trimCachedFilesIfNeeded()V

    return-void
.end method

.method private getAvailableExternalStorageSpaceInByte()J
    .locals 5

    .prologue
    .line 361
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    .line 366
    .end local v0           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v1

    .line 363
    :catch_0
    move-exception v1

    .line 366
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/google/glass/util/CachedFilesManager;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->sharedInstance:Lcom/google/glass/util/CachedFilesManager;

    return-object v0
.end method

.method public static setSharedInstance(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 164
    sput-object p0, Lcom/google/glass/util/CachedFilesManager;->sharedInstance:Lcom/google/glass/util/CachedFilesManager;

    .line 165
    return-void
.end method

.method private setupFileBookkeeping()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 373
    iget-object v6, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v6

    .line 374
    :try_start_0
    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    if-ltz v5, :cond_0

    iget-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    cmp-long v5, v7, v9

    if-gez v5, :cond_2

    .line 375
    :cond_0
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scanning "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for the amount of files and the total size of files ..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 377
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 378
    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 381
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 382
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 383
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 384
    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 385
    iget-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 382
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    monitor-exit v6

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private trimCachedFilesIfNeeded()V
    .locals 6

    .prologue
    .line 436
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    iget-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->limitInByte:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    iget v2, p0, Lcom/google/glass/util/CachedFilesManager;->limitInCount:I

    if-le v0, v2, :cond_1

    .line 439
    :cond_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInByte:J

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInCount:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->trimTo(JI)V

    .line 441
    :cond_1
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    .line 442
    monitor-exit v1

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private trimTo(JI)V
    .locals 9
    .parameter "targetSize"
    .parameter "targetCount"

    .prologue
    .line 447
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 451
    .local v3, startTime:J
    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 454
    .local v1, files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    new-instance v5, Lcom/google/glass/util/CachedFilesManager$3;

    invoke-direct {v5, p0}, Lcom/google/glass/util/CachedFilesManager$3;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 466
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 467
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 471
    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 472
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t delete file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " which is still in use"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_1
    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 476
    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 477
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 479
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sizeInBytes =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", numOfFiles = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", targetCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    cmp-long v5, v5, p1

    if-gtz v5, :cond_3

    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    if-gt v5, p3, :cond_3

    .line 503
    .end local v0           #file:Ljava/io/File;
    :cond_2
    :goto_1
    return-void

    .line 493
    .restart local v0       #file:Ljava/io/File;
    :cond_3
    const-wide/16 v5, 0xc8

    add-long/2addr v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    iget-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->limitInByte:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    iget v6, p0, Lcom/google/glass/util/CachedFilesManager;->limitInCount:I

    if-gt v5, v6, :cond_0

    .line 496
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exist trimming due to timeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateFileBookkeeping(IJI)V
    .locals 6
    .parameter "filesDelta"
    .parameter "bytesDelta"
    .parameter "trimmingsDelta"

    .prologue
    .line 397
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 398
    :try_start_0
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 399
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 400
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    .line 403
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 404
    :cond_0
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bookkeeping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has become corrupt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_1
    monitor-exit v1

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z
    .locals 7
    .parameter "type"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, filePath:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 254
    :goto_0
    return v2

    .line 246
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 247
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 254
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v2}, Lcom/google/glass/util/FileSaver;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    const/4 v2, 0x1

    .line 254
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #file:Ljava/io/File;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v2
.end method

.method public disableMockModifiedTimeForTest()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Lcom/google/glass/util/FileSaver;->disableMockModifiedTimeForTest()V

    .line 189
    return-void
.end method

.method public enableMockModifiedTimeForTest()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Lcom/google/glass/util/FileSaver;->enableMockModifiedTimeForTest()V

    .line 185
    return-void
.end method

.method public getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    .line 177
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/util/CachedFilesManager$Type;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 262
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->NONE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 266
    :goto_0
    return-object v1

    .line 265
    :cond_0
    iget v1, p0, Lcom/google/glass/util/CachedFilesManager;->dirPathLength:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager$Type;->get(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;

    move-result-object v1

    goto :goto_0
.end method

.method public increaseUsage(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 195
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 197
    if-nez p1, :cond_0

    .line 198
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    const-string v2, "increaseUsage with null filePath"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v2

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 204
    .local v0, usageCount:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 205
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 209
    :goto_1
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    monitor-exit v2

    goto :goto_0

    .end local v0           #usageCount:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 207
    .restart local v0       #usageCount:Ljava/lang/Integer;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized load(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;
    .locals 1
    .parameter "type"
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/glass/util/CachedFilesManager$Type;",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/CachedFilesManager$Loader",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 291
    .local p3, loader:Lcom/google/glass/util/CachedFilesManager$Loader;,"Lcom/google/glass/util/CachedFilesManager$Loader<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;
    .locals 4
    .parameter "filePath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/CachedFilesManager$Loader",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, loader:Lcom/google/glass/util/CachedFilesManager$Loader;,"Lcom/google/glass/util/CachedFilesManager$Loader<TT;>;"
    if-nez p1, :cond_0

    .line 271
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    const-string v2, "load with null filePath"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    .line 276
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 277
    invoke-interface {p2, p1}, Lcom/google/glass/util/CachedFilesManager$Loader;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    .local v0, result:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_1

    .line 280
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v2}, Lcom/google/glass/util/FileSaver;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 286
    .end local v0           #result:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v1
.end method

.method public noPendingTrimmings()Z
    .locals 2

    .prologue
    .line 411
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 412
    :try_start_0
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseUsage(Ljava/lang/String;)V
    .locals 5
    .parameter "filePath"

    .prologue
    const/4 v3, 0x1

    .line 217
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 219
    if-nez p1, :cond_0

    .line 220
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    const-string v2, "releaseUsage with null filePath"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v2

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 226
    .local v0, usageCount:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_3

    .line 227
    :cond_1
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad releasing: usageCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #usageCount:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 229
    .restart local v0       #usageCount:Ljava/lang/Integer;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 230
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 231
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 232
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z
    .locals 10
    .parameter "type"
    .parameter "fileName"
    .parameter "saver"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 306
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 309
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->setupFileBookkeeping()V

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, path:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/google/glass/util/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 319
    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    neg-long v7, v7

    const/4 v9, 0x0

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/google/glass/util/CachedFilesManager;->updateFileBookkeeping(IJI)V

    .line 322
    :cond_0
    iget-object v6, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p3, v7}, Lcom/google/glass/util/FileSaver;->write(Lcom/google/glass/util/FileSaver$Saver;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 324
    invoke-interface {p3}, Lcom/google/glass/util/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    add-long v1, v6, v8

    .line 325
    .local v1, estimatedSpace:J
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->getAvailableExternalStorageSpaceInByte()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-gez v6, :cond_2

    .line 326
    sget-object v6, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Space may be full for content of size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Lcom/google/glass/util/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Trim and retry."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->trimBySize(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 330
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No space to trim for content of size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Lcom/google/glass/util/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {p0, v3}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    .end local v1           #estimatedSpace:J
    :goto_0
    return v4

    .line 333
    .restart local v1       #estimatedSpace:J
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p3, v7}, Lcom/google/glass/util/FileSaver;->write(Lcom/google/glass/util/FileSaver$Saver;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    .line 355
    invoke-virtual {p0, v3}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    .end local v1           #estimatedSpace:J
    :cond_3
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/google/glass/util/CachedFilesManager;->updateFileBookkeeping(IJI)V

    .line 346
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v6, Lcom/google/glass/util/CachedFilesManager$2;

    invoke-direct {v6, p0}, Lcom/google/glass/util/CachedFilesManager$2;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    invoke-virtual {p0, v3}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    .end local v0           #cacheFile:Ljava/io/File;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v4
.end method

.method public trimBySize(J)Z
    .locals 4
    .parameter "size"

    .prologue
    .line 425
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    .line 427
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    sub-long/2addr v2, p1

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInCount:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->trimTo(JI)V

    .line 428
    const/4 v0, 0x1

    monitor-exit v1

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
