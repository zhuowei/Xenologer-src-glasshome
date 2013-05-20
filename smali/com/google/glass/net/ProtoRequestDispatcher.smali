.class public Lcom/google/glass/net/ProtoRequestDispatcher;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    }
.end annotation


# static fields
.field private static final DISPATCHER_PREFS:Ljava/lang/String; = "prd_prefs"

.field static final MAX_BATCH_DATA_SIZE_BYTES:I = 0x20000

.field static final MAX_PENDING_DATA_SIZE_BYTES:I = 0x80000

.field private static final PREF_DISPATCHER_ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final closeHttpOnExit:Z

.field private final context:Landroid/content/Context;

.field private final defaultResponseThread:Ljava/util/concurrent/Executor;

.field private dispatcherId:J

.field private explicitFlush:Z

.field private final httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final queueCondition:Ljava/util/concurrent/locks/Condition;

.field private final queueLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private requestPriorityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private shouldExit:Z

.field private totalQueuedDataSize:I

.field private final userEventHelper:Lcom/google/glass/logging/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V
    .locals 1
    .parameter "context"
    .parameter "httpDispatcher"
    .parameter "closeHttpOnExit"
    .parameter "defaultResponseThread"

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    .line 243
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 246
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    .line 255
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$1;

    invoke-direct {v0, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$1;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->requestPriorityComparator:Ljava/util/Comparator;

    .line 280
    invoke-static {p2}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-static {p4}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    .line 283
    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 284
    iput-boolean p3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->closeHttpOnExit:Z

    .line 285
    iput-object p4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->defaultResponseThread:Ljava/util/concurrent/Executor;

    .line 286
    new-instance v0, Lcom/google/glass/logging/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 287
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/net/ProtoRequestDispatcher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    return-object v0
.end method

.method private clearQueue()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 617
    return-void
.end method

.method private dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;ZLcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)Z
    .locals 10
    .parameter "action"
    .parameter "requestProto"
    .parameter "isImmediate"
    .parameter
    .parameter
    .parameter "responseThread"
    .parameter "logMetrics"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/AbstractMessage;",
            "Z",
            "Lcom/google/protobuf/Parser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 495
    .local p4, responseParser:Lcom/google/protobuf/Parser;,"Lcom/google/protobuf/Parser<TT;>;"
    .local p5, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    iget-object v2, p1, Lcom/google/glass/net/ServerConstants$Action;->path:Ljava/lang/String;

    .line 498
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/protobuf/AbstractMessage;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 501
    .local v3, requestData:Lcom/google/protobuf/ByteString;
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 505
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 506
    const/4 v0, 0x0

    .line 525
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 527
    :goto_0
    return v0

    .line 510
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    or-int/2addr v0, p3

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 517
    iget v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 518
    iget v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:I

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:I

    .line 521
    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 527
    const/4 v0, 0x1

    goto :goto_0

    .line 517
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 525
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private ensureDispatcherId()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 772
    iget-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 773
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    const-string v3, "prd_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 775
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    .line 776
    const-string v2, "id"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    .line 777
    iget-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_1

    .line 778
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 780
    .local v0, random:Ljava/security/SecureRandom;
    :cond_0
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    .line 781
    iget-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 783
    .end local v0           #random:Ljava/security/SecureRandom;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 786
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method

.method private parseResponses(Ljava/util/List;Lcom/google/googlex/glass/common/proto/BatchResponse;)Z
    .locals 7
    .parameter
    .parameter "batchResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$Request",
            "<*>;>;",
            "Lcom/google/googlex/glass/common/proto/BatchResponse;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, batchedRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;>;"
    const/4 v1, 0x0

    .line 812
    .local v1, error:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/BatchResponse;->getResponseCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 813
    invoke-virtual {p2, v2}, Lcom/google/googlex/glass/common/proto/BatchResponse;->getResponse(I)Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v3

    .line 814
    .local v3, responseWrapper:Lcom/google/googlex/glass/common/proto/ResponseWrapper;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 815
    .local v0, batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->hasErrorCode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 816
    const/4 v1, 0x1

    .line 817
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    .line 812
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 819
    :cond_1
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onSuccess(Lcom/google/protobuf/ByteString;)V

    .line 822
    iget-boolean v4, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->logMetrics:Z

    if-eqz v4, :cond_0

    .line 823
    iget-object v4, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->path:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestData:Lcom/google/protobuf/ByteString;

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/glass/net/ProtoRequestDispatcher;->logRequestMetrics(Ljava/lang/String;II)V

    goto :goto_1

    .line 828
    .end local v0           #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    .end local v3           #responseWrapper:Lcom/google/googlex/glass/common/proto/ResponseWrapper;
    :cond_2
    return v1
.end method


# virtual methods
.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;)Lcom/google/glass/net/ProtoResponse;
    .locals 2
    .parameter "action"
    .parameter "requestProto"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/AbstractMessage;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/AbstractMessage;",
            "Lcom/google/protobuf/Parser",
            "<TT;>;)",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 368
    .local p3, responseParser:Lcom/google/protobuf/Parser;,"Lcom/google/protobuf/Parser<TT;>;"
    const/4 v0, 0x1

    .line 369
    .local v0, logMetrics:Z
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Z)Lcom/google/glass/net/ProtoResponse;

    move-result-object v1

    return-object v1
.end method

.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Z)Lcom/google/glass/net/ProtoResponse;
    .locals 13
    .parameter "action"
    .parameter "requestProto"
    .parameter
    .parameter "logMetrics"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/AbstractMessage;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/AbstractMessage;",
            "Lcom/google/protobuf/Parser",
            "<TT;>;Z)",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p3, responseParser:Lcom/google/protobuf/Parser;,"Lcom/google/protobuf/Parser<TT;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 396
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 397
    .local v9, errorCodeReference:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;>;"
    new-instance v12, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 400
    .local v12, responseProtoReference:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 401
    .local v11, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Lcom/google/glass/net/ProtoRequestDispatcher$2;

    invoke-direct {v5, p0, v11, v9, v12}, Lcom/google/glass/net/ProtoRequestDispatcher$2;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 419
    .local v5, latchedResponseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    const/4 v10, 0x1

    .line 420
    .local v10, isImmediate:Z
    const/4 v3, 0x1

    new-instance v6, Lcom/google/glass/net/ProtoRequestDispatcher$3;

    invoke-direct {v6, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$3;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;ZLcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x0

    .line 448
    :goto_0
    return-object v0

    .line 434
    :cond_0
    :try_start_0
    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 444
    invoke-static {}, Lcom/google/glass/net/ProtoResponse;->cancel()Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v8

    .line 436
    .local v8, e:Ljava/lang/InterruptedException;
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "Interrupted while waiting for blocking request."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, 0x0

    goto :goto_0

    .line 445
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 446
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    invoke-static {v0}, Lcom/google/glass/net/ProtoResponse;->error(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 447
    :cond_2
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 448
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/net/ProtoResponse;->success(Ljava/lang/Object;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 450
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal proto response state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;)Z
    .locals 7
    .parameter "action"
    .parameter "requestProto"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/AbstractMessage;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/AbstractMessage;",
            "Lcom/google/protobuf/Parser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 307
    .local p3, responseParser:Lcom/google/protobuf/Parser;,"Lcom/google/protobuf/Parser<TT;>;"
    .local p4, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    const/4 v6, 0x1

    .line 308
    .local v6, logMetrics:Z
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;Z)Z

    move-result v0

    return v0
.end method

.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;Z)Z
    .locals 2
    .parameter "action"
    .parameter "requestProto"
    .parameter
    .parameter
    .parameter "logMetrics"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/AbstractMessage;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/AbstractMessage;",
            "Lcom/google/protobuf/Parser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .line 330
    .local p3, responseParser:Lcom/google/protobuf/Parser;,"Lcom/google/protobuf/Parser<TT;>;"
    .local p4, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 333
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Z)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    .line 336
    .local v0, response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    if-nez v0, :cond_0

    .line 337
    const/4 v1, 0x0

    .line 348
    :goto_0
    return v1

    .line 341
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    invoke-interface {p4}, Lcom/google/glass/net/ProtoResponseHandler;->onCancel()V

    .line 348
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->isError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 344
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/google/glass/net/ProtoResponseHandler;->onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    goto :goto_1

    .line 345
    :cond_3
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/google/glass/net/ProtoResponseHandler;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method composeBatchLogEventString(IIIJJZ)Ljava/lang/String;
    .locals 6
    .parameter "numRequests"
    .parameter "numBytesRequest"
    .parameter "numBytesResponse"
    .parameter "beforeHttpTime"
    .parameter "afterHttpTime"
    .parameter "error"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 801
    const-string v1, "r"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v4, "breq"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "bres"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "l"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    sub-long v4, p6, p4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "e"

    aput-object v4, v3, v0

    const/4 v4, 0x7

    if-eqz p8, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method composeRequestSizeLogEventString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "numBytesRequest"
    .parameter "numBytesResponse"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 844
    const-string v0, "p"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "breq"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bres"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;ZLcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;)Z
    .locals 9
    .parameter "action"
    .parameter "requestProto"
    .parameter "isImmediate"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/AbstractMessage;",
            "Z",
            "Lcom/google/protobuf/Parser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 468
    .local p4, responseParser:Lcom/google/protobuf/Parser;,"Lcom/google/protobuf/Parser<TT;>;"
    .local p5, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    const/4 v8, 0x1

    .line 469
    .local v8, logMetrics:Z
    iget-object v6, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->defaultResponseThread:Ljava/util/concurrent/Executor;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;ZLcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)Z

    move-result v0

    return v0
.end method

.method public dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;ZLcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;Z)Z
    .locals 8
    .parameter "action"
    .parameter "requestProto"
    .parameter "isImmediate"
    .parameter
    .parameter
    .parameter "logMetrics"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/AbstractMessage;",
            "Z",
            "Lcom/google/protobuf/Parser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .line 488
    .local p4, responseParser:Lcom/google/protobuf/Parser;,"Lcom/google/protobuf/Parser<TT;>;"
    .local p5, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    iget-object v6, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->defaultResponseThread:Ljava/util/concurrent/Executor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;ZLcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)Z

    move-result v0

    return v0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 553
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    .line 554
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 558
    return-void

    .line 556
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 538
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 543
    return-void

    .line 541
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method isFlushConditionMet()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 852
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 855
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:I

    const/high16 v2, 0x8

    if-gt v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method lockQueueForTest()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method logBatchMetrics(IIIJJZ)V
    .locals 3
    .parameter "numRequests"
    .parameter "numBytesRequest"
    .parameter "numBytesResponse"
    .parameter "beforeHttpTime"
    .parameter "afterHttpTime"
    .parameter "error"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual/range {p0 .. p8}, Lcom/google/glass/net/ProtoRequestDispatcher;->composeBatchLogEventString(IIIJJZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method logRequestMetrics(Ljava/lang/String;II)V
    .locals 3
    .parameter "path"
    .parameter "numBytesRequest"
    .parameter "numBytesResponse"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 834
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/net/ProtoRequestDispatcher;->composeRequestSizeLogEventString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 564
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 566
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v3, servicing:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 571
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 573
    :goto_1
    :try_start_0
    iget-boolean v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 575
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v4, Lcom/google/glass/net/ProtoRequestDispatcher;->TAG:Ljava/lang/String;

    const-string v5, "Interrupted while waiting for queue condition."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 603
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 580
    :cond_1
    :try_start_3
    iget-boolean v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-eqz v4, :cond_4

    .line 583
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 584
    .local v2, request:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    invoke-virtual {v2}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onCancel()V

    goto :goto_2

    .line 586
    .end local v2           #request:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->clearQueue()V

    .line 589
    iget-boolean v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->closeHttpOnExit:Z

    if-eqz v4, :cond_3

    .line 590
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    invoke-interface {v4}, Lcom/google/glass/net/HttpRequestDispatcher;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 603
    :cond_3
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 596
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 599
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 600
    invoke-direct {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->clearQueue()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 603
    :cond_5
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 607
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 608
    invoke-virtual {p0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher;->service(Ljava/util/List;)V

    goto :goto_0
.end method

.method service(Ljava/util/List;)V
    .locals 27
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$Request",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->ensureDispatcherId()V

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->requestPriorityComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 628
    const/16 v22, 0x0

    .local v22, requestIndex:I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_2

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 634
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-eqz v3, :cond_3

    .line 635
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_1

    .line 636
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    invoke-virtual {v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 642
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 763
    :cond_2
    return-void

    .line 642
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 646
    const/4 v4, 0x0

    .line 647
    .local v4, logNumRequests:I
    const/4 v5, 0x0

    .line 650
    .local v5, logNumBytes:I
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v15

    .line 651
    .local v15, batchRequestBuilder:Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v18, batchedRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;>;"
    const/4 v13, 0x0

    .line 654
    .local v13, batchBytes:I
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 655
    .local v21, request:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    add-int/lit8 v22, v22, 0x1

    .line 658
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->logMetrics:Z

    if-eqz v3, :cond_5

    .line 659
    add-int/lit8 v4, v4, 0x1

    .line 660
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestData:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    add-int/2addr v5, v3

    .line 664
    :cond_5
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-static {}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->newBuilder()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->setPath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestData:Lcom/google/protobuf/ByteString;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->addRequest(Lcom/google/googlex/glass/common/proto/RequestWrapper;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    .line 669
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestData:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    add-int/2addr v13, v3

    .line 673
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_6

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iget-object v3, v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestData:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    add-int/2addr v3, v13

    const/high16 v24, 0x2

    move/from16 v0, v24

    if-lt v3, v0, :cond_4

    .line 677
    :cond_6
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader;->newBuilder()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v14

    .line 678
    .local v14, batchHeaderBuilder:Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v14, v0, v1}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->setDispatcherId(J)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    if-eqz v3, :cond_7

    .line 680
    new-instance v3, Lcom/google/glass/util/AuthUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/glass/util/AuthUtils;->createBatchAuthToken()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v12

    .line 681
    .local v12, authToken:Lcom/google/googlex/glass/common/proto/AuthToken;
    if-eqz v12, :cond_7

    .line 682
    invoke-virtual {v14, v12}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->addAuthToken(Lcom/google/googlex/glass/common/proto/AuthToken;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    .line 685
    .end local v12           #authToken:Lcom/google/googlex/glass/common/proto/AuthToken;
    :cond_7
    invoke-virtual {v15, v14}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->setHeader(Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    .line 688
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 691
    .local v7, beforeHttpTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getBatchUrl()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual {v15}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/google/googlex/glass/common/proto/BatchRequest;->toByteArray()[B

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v3, v0, v1, v2}, Lcom/google/glass/net/HttpRequestDispatcher;->post(Ljava/lang/String;Ljava/util/Map;[B)Landroid/util/Pair;

    move-result-object v23

    .line 695
    .local v23, response:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 698
    .local v9, afterHttpTime:J
    const/4 v11, 0x0

    .line 701
    .local v11, logError:Z
    if-eqz v23, :cond_8

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v3, :cond_9

    .line 704
    :cond_8
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->TAG:Ljava/lang/String;

    const-string v24, "Batch request failed due to network error."

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 706
    .local v17, batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    const/4 v11, 0x1

    .line 707
    sget-object v3, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->NETWORK_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    goto :goto_2

    .line 642
    .end local v4           #logNumRequests:I
    .end local v5           #logNumBytes:I
    .end local v7           #beforeHttpTime:J
    .end local v9           #afterHttpTime:J
    .end local v11           #logError:Z
    .end local v13           #batchBytes:I
    .end local v14           #batchHeaderBuilder:Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .end local v15           #batchRequestBuilder:Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .end local v17           #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    .end local v18           #batchedRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;>;"
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #request:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    .end local v23           #response:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 709
    .restart local v4       #logNumRequests:I
    .restart local v5       #logNumBytes:I
    .restart local v7       #beforeHttpTime:J
    .restart local v9       #afterHttpTime:J
    .restart local v11       #logError:Z
    .restart local v13       #batchBytes:I
    .restart local v14       #batchHeaderBuilder:Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .restart local v15       #batchRequestBuilder:Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .restart local v18       #batchedRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;>;"
    .restart local v21       #request:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    .restart local v23       #response:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    :cond_9
    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v24, 0xc8

    move/from16 v0, v24

    if-eq v3, v0, :cond_a

    .line 712
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->TAG:Ljava/lang/String;

    const-string v24, "Batch request failed due to internal server error."

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 714
    .restart local v17       #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    const/4 v11, 0x1

    .line 715
    sget-object v3, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    goto :goto_3

    .line 719
    .end local v17           #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    .end local v20           #i$:Ljava/util/Iterator;
    :cond_a
    :try_start_1
    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/BatchResponse;->parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-result-object v16

    .line 720
    .local v16, batchResponse:Lcom/google/googlex/glass/common/proto/BatchResponse;
    invoke-virtual/range {v16 .. v16}, Lcom/google/googlex/glass/common/proto/BatchResponse;->getResponseCount()I

    move-result v3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-eq v3, v0, :cond_b

    .line 723
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->TAG:Ljava/lang/String;

    const-string v24, "Batch request failed due to batch size mismatch."

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 725
    .restart local v17       #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    const/4 v11, 0x1

    .line 726
    sget-object v3, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 735
    .end local v16           #batchResponse:Lcom/google/googlex/glass/common/proto/BatchResponse;
    .end local v17           #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    .end local v20           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v19

    .line 738
    .local v19, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->TAG:Ljava/lang/String;

    const-string v24, "Batch request failed due to batch protocol fault."

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 740
    .restart local v17       #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    const/4 v11, 0x1

    .line 741
    sget-object v3, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INVALID_PROTO:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    goto :goto_5

    .line 731
    .end local v17           #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;,"Lcom/google/glass/net/ProtoRequestDispatcher$Request<*>;"
    .end local v19           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v20           #i$:Ljava/util/Iterator;
    .restart local v16       #batchResponse:Lcom/google/googlex/glass/common/proto/BatchResponse;
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/glass/net/ProtoRequestDispatcher;->parseResponses(Ljava/util/List;Lcom/google/googlex/glass/common/proto/BatchResponse;)Z
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_c

    .line 732
    const/4 v11, 0x1

    .line 751
    .end local v16           #batchResponse:Lcom/google/googlex/glass/common/proto/BatchResponse;
    :cond_c
    if-lez v4, :cond_0

    .line 754
    const/4 v6, 0x0

    .line 755
    .local v6, numBytesResponse:I
    if-eqz v23, :cond_d

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_d

    .line 756
    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    array-length v6, v3

    :cond_d
    move-object/from16 v3, p0

    .line 759
    invoke-virtual/range {v3 .. v11}, Lcom/google/glass/net/ProtoRequestDispatcher;->logBatchMetrics(IIIJJZ)V

    goto/16 :goto_0
.end method

.method unlockQueueForTest()V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 872
    return-void
.end method
