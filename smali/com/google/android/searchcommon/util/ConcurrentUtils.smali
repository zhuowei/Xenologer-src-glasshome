.class public Lcom/google/android/searchcommon/util/ConcurrentUtils;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"


# static fields
.field private static final DEBUG_EXECUTOR_TERMINATION:Z = false

.field private static final DEBUG_TASK_QUEUE:Z = false

.field private static final TAG:Ljava/lang/String; = "Search.ConcurrentUtils"

.field private static final WARNING_QUEUE_FACTOR:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asCallable(Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier",
            "<TV;>;)",
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, supplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<TV;>;"
    new-instance v0, Lcom/google/android/searchcommon/util/ConcurrentUtils$1;

    invoke-direct {v0, p0}, Lcom/google/android/searchcommon/util/ConcurrentUtils$1;-><init>(Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static varargs asFutures(Ljava/util/concurrent/ExecutorService;[Lcom/google/common/base/Supplier;)Ljava/util/List;
    .locals 6
    .parameter "executorService"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "[",
            "Lcom/google/common/base/Supplier",
            "<TV;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, suppliers:[Lcom/google/common/base/Supplier;,"[Lcom/google/common/base/Supplier<TV;>;"
    new-instance v3, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/concurrent/Future<TV;>;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/google/common/base/Supplier;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 87
    .local v4, supplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<TV;>;"
    invoke-static {v4}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->asCallable(Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v4           #supplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<TV;>;"
    :cond_0
    return-object v3
.end method

.method public static awaitTermination(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .parameter "service"

    .prologue
    .line 125
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 140
    const-wide/16 v1, 0x1e

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Blocked on executor shutdown."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 151
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :cond_0
    return-void

    .line 153
    :catchall_0
    move-exception v1

    throw v1
.end method

.method private static createBackgroundThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .parameter "threadName"

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/searchcommon/util/ConcurrentUtils$2;

    invoke-direct {v0, p0}, Lcom/google/android/searchcommon/util/ConcurrentUtils$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSafeScheduledExecutorService(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .parameter "coreSize"
    .parameter "threadName"

    .prologue
    .line 161
    invoke-static {p1}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->createBackgroundThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->createSafeScheduledExecutorService(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static createSafeScheduledExecutorService(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3
    .parameter "coreSize"
    .parameter "factory"

    .prologue
    .line 175
    if-lez p0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 176
    mul-int/lit8 v0, p0, 0x2

    .line 178
    .local v0, MAX_EXPECTED_QUEUE_SIZE:I
    new-instance v1, Lcom/google/android/searchcommon/util/ConcurrentUtils$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/searchcommon/util/ConcurrentUtils$3;-><init>(ILjava/util/concurrent/ThreadFactory;I)V

    .line 226
    .local v1, executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    return-object v1

    .line 175
    .end local v0           #MAX_EXPECTED_QUEUE_SIZE:I
    .end local v1           #executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static launderCause(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter "cause"

    .prologue
    .line 56
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 57
    check-cast p0, Ljava/lang/Error;

    .end local p0
    throw p0

    .line 59
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 60
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0
    throw p0

    .line 62
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "threadName"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->createBackgroundThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static successfulAsList(Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TV;>;>;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, listOfFutures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TV;>;>;"
    new-instance v0, Lcom/google/android/searchcommon/util/FutureList;

    sget-object v1, Lcom/google/android/searchcommon/util/FutureList$Mode;->ONLY_SUCCESSFUL:Lcom/google/android/searchcommon/util/FutureList$Mode;

    invoke-direct {v0, p0, v1}, Lcom/google/android/searchcommon/util/FutureList;-><init>(Ljava/util/List;Lcom/google/android/searchcommon/util/FutureList$Mode;)V

    return-object v0
.end method

.method public static transform(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;",
            "Lcom/google/common/base/Function",
            "<TV;TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TV;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<TV;TT;>;"
    new-instance v0, Lcom/google/android/searchcommon/util/TransformFuture;

    invoke-direct {v0, p0, p1}, Lcom/google/android/searchcommon/util/TransformFuture;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)V

    return-object v0
.end method
