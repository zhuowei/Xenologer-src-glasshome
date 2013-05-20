.class public Lcom/google/glass/maps/MapHelper;
.super Ljava/lang/Object;
.source "MapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/maps/MapHelper$ConnectionState;,
        Lcom/google/glass/maps/MapHelper$MapRendererFuture;,
        Lcom/google/glass/maps/MapHelper$MapRendererException;,
        Lcom/google/glass/maps/MapHelper$SimpleOnMapRenderedListener;,
        Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "map"

.field public static final KEY_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final MAP_CACHE_MAX_BYTES:I = 0x400000

.field private static final MAP_RENDERING_SERVICE:Landroid/content/ComponentName; = null

.field private static final SCHEME:Ljava/lang/String; = "glass"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/google/glass/maps/MapHelper;


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final connectionLock:Ljava/lang/Object;

.field private connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

.field private final context:Landroid/content/Context;

.field private final futures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/maps/MapHelper$MapRendererFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final incoming:Landroid/os/Messenger;

.field private final mapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/google/glass/proto/MapRenderRequest;",
            "[B>;"
        }
    .end annotation
.end field

.field private outgoing:Landroid/os/Messenger;

.field private final outstandingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/proto/MapRenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/glass/proto/MapRenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final requestStateLock:Ljava/lang/Object;

.field private final serialNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-class v0, Lcom/google/glass/maps/MapHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.maps"

    const-string v2, "com.google.glass.maps.service.MapRenderingService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/maps/MapHelper;->MAP_RENDERING_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->serialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connectionLock:Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    .line 134
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    .line 135
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    .line 138
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/maps/MapHelper$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/MapHelper$1;-><init>(Lcom/google/glass/maps/MapHelper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->incoming:Landroid/os/Messenger;

    .line 145
    new-instance v0, Lcom/google/glass/maps/MapHelper$2;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/MapHelper$2;-><init>(Lcom/google/glass/maps/MapHelper;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connection:Landroid/content/ServiceConnection;

    .line 157
    new-instance v0, Lcom/google/glass/maps/MapHelper$3;

    const/high16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/MapHelper$3;-><init>(Lcom/google/glass/maps/MapHelper;I)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    .line 172
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;->cancelMapRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/maps/MapHelper;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/maps/MapHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->handleDisconnection()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/maps/MapHelper;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/MapHelper;->handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cancelMapRequest(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 277
    sget-object v1, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->newBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/proto/MapRenderRequest$Type;->CANCEL:Lcom/google/glass/proto/MapRenderRequest$Type;

    invoke-virtual {v1, v2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setType(Lcom/google/glass/proto/MapRenderRequest$Type;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/proto/MapRenderRequest$Builder;->build()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    .line 282
    .local v0, request:Lcom/google/glass/proto/MapRenderRequest;
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    monitor-exit v2

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private connectIfNecessary()V
    .locals 5

    .prologue
    .line 291
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->connectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    sget-object v3, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    if-ne v1, v3, :cond_0

    .line 293
    sget-object v1, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening connection to MapRenderingService from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/maps/MapHelper;->MAP_RENDERING_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    sget-object v1, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTING:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 302
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 303
    return-void

    .line 299
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    sget-object v1, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    const-string v3, "bindService() failed."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private flushQueue()V
    .locals 8

    .prologue
    .line 371
    iget-object v4, p0, Lcom/google/glass/maps/MapHelper;->connectionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 372
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 373
    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 374
    :try_start_1
    sget-object v3, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requests"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/proto/MapRenderRequest;

    .line 377
    .local v2, request:Lcom/google/glass/proto/MapRenderRequest;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 378
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "payload"

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderRequest;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 379
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->incoming:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 387
    :try_start_3
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 389
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #request:Lcom/google/glass/proto/MapRenderRequest;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 391
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 382
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #request:Lcom/google/glass/proto/MapRenderRequest;
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->handleDisconnection()V

    .line 384
    sget-object v3, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #request:Lcom/google/glass/proto/MapRenderRequest;
    :cond_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 391
    :cond_1
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 392
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;
    .locals 3
    .parameter "context"

    .prologue
    .line 109
    const-class v1, Lcom/google/glass/maps/MapHelper;

    monitor-enter v1

    .line 110
    :try_start_0
    sget-object v0, Lcom/google/glass/maps/MapHelper;->instance:Lcom/google/glass/maps/MapHelper;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/google/glass/maps/MapHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/glass/maps/MapHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/maps/MapHelper;->instance:Lcom/google/glass/maps/MapHelper;

    .line 113
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    sget-object v0, Lcom/google/glass/maps/MapHelper;->instance:Lcom/google/glass/maps/MapHelper;

    invoke-direct {v0}, Lcom/google/glass/maps/MapHelper;->connectIfNecessary()V

    .line 115
    sget-object v0, Lcom/google/glass/maps/MapHelper;->instance:Lcom/google/glass/maps/MapHelper;

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getNextId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->serialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 342
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 343
    sget-object v0, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    .line 346
    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 347
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->flushQueue()V

    .line 349
    return-void

    .line 347
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleDisconnection()V
    .locals 4

    .prologue
    .line 353
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 354
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->connectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 355
    :try_start_0
    sget-object v2, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v2, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 356
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    .line 357
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 359
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 360
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/MapHelper$MapRendererFuture;

    .line 361
    .local v0, future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    new-instance v2, Lcom/google/glass/maps/MapHelper$MapRendererException;

    invoke-direct {v2}, Lcom/google/glass/maps/MapHelper$MapRendererException;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 365
    .end local v0           #future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 357
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 363
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 364
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 365
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 366
    sget-object v2, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    const-string v3, "Disconnected from MapRenderingService!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 309
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "payload"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/proto/MapRenderResponse;->parseFrom([B)Lcom/google/glass/proto/MapRenderResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 317
    .local v4, response:Lcom/google/glass/proto/MapRenderResponse;
    iget-object v6, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 318
    :try_start_1
    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/glass/proto/MapRenderResponse;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/maps/MapHelper$MapRendererFuture;

    .line 319
    .local v2, future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/glass/proto/MapRenderResponse;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/proto/MapRenderRequest;

    .line 320
    .local v3, request:Lcom/google/glass/proto/MapRenderRequest;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {v4}, Lcom/google/glass/proto/MapRenderResponse;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 323
    invoke-virtual {v4}, Lcom/google/glass/proto/MapRenderResponse;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 324
    .local v0, data:[B
    sget-object v5, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rendering succeeded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/glass/proto/MapRenderResponse;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-eqz v3, :cond_1

    .line 326
    iget-object v6, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    monitor-enter v6

    .line 327
    :try_start_2
    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    invoke-virtual {v5, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 332
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->set([B)Z

    .line 338
    .end local v0           #data:[B
    .end local v2           #future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    .end local v3           #request:Lcom/google/glass/proto/MapRenderRequest;
    .end local v4           #response:Lcom/google/glass/proto/MapRenderResponse;
    :cond_0
    :goto_1
    return-void

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v5, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    const-string v6, "Invalid incoming message!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 320
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v4       #response:Lcom/google/glass/proto/MapRenderResponse;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 328
    .restart local v0       #data:[B
    .restart local v2       #future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    .restart local v3       #request:Lcom/google/glass/proto/MapRenderRequest;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 330
    :cond_1
    sget-object v5, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    const-string v6, "Corresponding request not found!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    .end local v0           #data:[B
    :cond_2
    sget-object v5, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rendering failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/glass/proto/MapRenderResponse;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v5, Lcom/google/glass/maps/MapHelper$MapRendererException;

    invoke-direct {v5}, Lcom/google/glass/maps/MapHelper$MapRendererException;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

.method public static isGlassMapUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "glass"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "map"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCachedMapPng(Lcom/google/glass/proto/MapRenderRequest;)[B
    .locals 2
    .parameter "request"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1

    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renderMap(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/proto/MapRenderRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper;->renderMapToPng(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/MapHelper$4;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/MapHelper$4;-><init>(Lcom/google/glass/maps/MapHelper;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public renderMap(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .parameter "request"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/proto/MapRenderRequest;",
            "Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper;->renderMap(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 257
    .local v0, future:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    new-instance v1, Lcom/google/glass/maps/MapHelper$5;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/glass/maps/MapHelper$5;-><init>(Lcom/google/glass/maps/MapHelper;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 272
    return-object v0
.end method

.method public renderMapToPng(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/proto/MapRenderRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper;->getCachedMapPng(Lcom/google/glass/proto/MapRenderRequest;)[B

    move-result-object v0

    .line 194
    .local v0, cachedData:[B
    if-eqz v0, :cond_0

    .line 195
    sget-object v4, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    const-string v5, "Returning map from cache"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 213
    :goto_0
    return-object v1

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->getNextId()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, id:Ljava/lang/String;
    sget-object v4, Lcom/google/glass/maps/MapHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding RENDER_MAP request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->toBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    invoke-virtual {v4, v5}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setType(Lcom/google/glass/proto/MapRenderRequest$Type;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/proto/MapRenderRequest$Builder;->build()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v3

    .line 206
    .local v3, serviceRequest:Lcom/google/glass/proto/MapRenderRequest;
    new-instance v1, Lcom/google/glass/maps/MapHelper$MapRendererFuture;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;-><init>(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V

    .line 207
    .local v1, future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 208
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v4, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v4, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->flushQueue()V

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
