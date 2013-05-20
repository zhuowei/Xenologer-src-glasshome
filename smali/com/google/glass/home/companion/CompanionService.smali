.class public Lcom/google/glass/home/companion/CompanionService;
.super Landroid/app/Service;
.source "CompanionService.java"

# interfaces
.implements Lcom/google/glass/location/LocationProxy;
.implements Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/companion/CompanionService$4;,
        Lcom/google/glass/home/companion/CompanionService$ConnectedThread;,
        Lcom/google/glass/home/companion/CompanionService$AcceptThread;,
        Lcom/google/glass/home/companion/CompanionService$UpgradeListener;,
        Lcom/google/glass/home/companion/CompanionService$SimpleCompanionListener;,
        Lcom/google/glass/home/companion/CompanionService$CompanionListener;,
        Lcom/google/glass/home/companion/CompanionService$CompanionBinder;,
        Lcom/google/glass/home/companion/CompanionService$ConnectionState;
    }
.end annotation


# static fields
.field private static final MAX_PENDING_ITEMS:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static final WHAT_START_LISTENING:I

.field private static volatile state:Lcom/google/glass/home/companion/CompanionService$ConnectionState;


# instance fields
.field private acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

.field private final adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

.field private final binder:Landroid/os/Binder;

.field private final btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private connectedThread:Lcom/google/glass/home/companion/CompanionService$ConnectedThread;

.field private volatile connection:Lcom/google/glass/home/companion/CompanionConnection;

.field private final connectionController:Lcom/google/glass/home/companion/ConnectionController;

.field private final handler:Landroid/os/Handler;

.field private final incoming:Landroid/os/Messenger;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/home/companion/CompanionService$CompanionListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationListener:Landroid/location/LocationListener;

.field private final pendingMessageHandlers:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/glass/home/companion/MessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private previouslyConnectedCompanionDevice:Landroid/bluetooth/BluetoothDevice;

.field private remoteVersion:I

.field private temporaryScreencastDevice:Landroid/bluetooth/BluetoothDevice;

.field private timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private final upgradeListener:Lcom/google/glass/home/companion/CompanionService$UpgradeListener;

.field private wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 288
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/glass/home/companion/CompanionService;->remoteVersion:I

    .line 67
    new-instance v1, Lcom/google/glass/home/companion/CompanionService$1;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lcom/google/glass/home/companion/CompanionService$1;-><init>(Lcom/google/glass/home/companion/CompanionService;I)V

    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->pendingMessageHandlers:Landroid/util/LruCache;

    .line 90
    iput-object v3, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    .line 98
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    .line 108
    new-instance v1, Lcom/google/glass/home/companion/CompanionService$CompanionBinder;

    invoke-direct {v1, p0}, Lcom/google/glass/home/companion/CompanionService$CompanionBinder;-><init>(Lcom/google/glass/home/companion/CompanionService;)V

    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->binder:Landroid/os/Binder;

    .line 130
    new-instance v1, Lcom/google/glass/home/companion/CompanionService$2;

    invoke-direct {v1, p0}, Lcom/google/glass/home/companion/CompanionService$2;-><init>(Lcom/google/glass/home/companion/CompanionService;)V

    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->handler:Landroid/os/Handler;

    .line 194
    new-instance v1, Lcom/google/glass/home/companion/CompanionService$UpgradeListener;

    invoke-direct {v1, p0, v3}, Lcom/google/glass/home/companion/CompanionService$UpgradeListener;-><init>(Lcom/google/glass/home/companion/CompanionService;Lcom/google/glass/home/companion/CompanionService$1;)V

    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->upgradeListener:Lcom/google/glass/home/companion/CompanionService$UpgradeListener;

    .line 289
    new-instance v1, Lcom/google/glass/home/companion/ConnectionController;

    invoke-direct {v1, p0}, Lcom/google/glass/home/companion/ConnectionController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->connectionController:Lcom/google/glass/home/companion/ConnectionController;

    .line 290
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 291
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    .line 292
    sget-object v1, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->NONE:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    sput-object v1, Lcom/google/glass/home/companion/CompanionService;->state:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    .line 293
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CompanionService.incoming"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 296
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/google/glass/home/companion/CompanionService$3;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/glass/home/companion/CompanionService$3;-><init>(Lcom/google/glass/home/companion/CompanionService;Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->incoming:Landroid/os/Messenger;

    .line 335
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/companion/CompanionService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/companion/CompanionService;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->pendingMessageHandlers:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/companion/CompanionService;[B)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/glass/home/companion/CompanionService;->sendEnvelope([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/companion/CompanionService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$600()Lcom/google/glass/home/companion/CompanionService$ConnectionState;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/glass/home/companion/CompanionService;->state:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/home/companion/CompanionService$ConnectionState;)Lcom/google/glass/home/companion/CompanionService$ConnectionState;
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    sput-object p0, Lcom/google/glass/home/companion/CompanionService;->state:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/glass/home/companion/CompanionService;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/companion/CompanionService;->connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/home/companion/CompanionService;Lcom/google/glass/home/companion/CompanionConnection;)Lcom/google/glass/home/companion/CompanionConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/util/WifiHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    return-object v0
.end method

.method private connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "socket"
    .parameter "device"

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/google/glass/home/companion/CompanionService;->killConnectedThread()V

    .line 413
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->cancel()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    .line 418
    :cond_0
    sget-object v0, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    const-string v1, "Canceled AcceptThread, starting ConnectedThread..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;-><init>(Lcom/google/glass/home/companion/CompanionService;Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connectedThread:Lcom/google/glass/home/companion/CompanionService$ConnectedThread;

    .line 420
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connectedThread:Lcom/google/glass/home/companion/CompanionService$ConnectedThread;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->start()V

    .line 421
    return-void
.end method

.method public static getConnectionState()Lcom/google/glass/home/companion/CompanionService$ConnectionState;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 352
    sget-object v0, Lcom/google/glass/home/companion/CompanionService;->state:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    return-object v0
.end method

.method private killConnectedThread()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connectedThread:Lcom/google/glass/home/companion/CompanionService$ConnectedThread;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connectedThread:Lcom/google/glass/home/companion/CompanionService$ConnectedThread;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->cancel()V

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connectedThread:Lcom/google/glass/home/companion/CompanionService$ConnectedThread;

    .line 386
    :cond_0
    return-void
.end method

.method private sendEnvelope([B)Z
    .locals 2
    .parameter "envelopeData"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    .line 716
    .local v0, connectionCopy:Lcom/google/glass/home/companion/CompanionConnection;
    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionConnection;->getEnvelopeSender()Lcom/google/glass/home/companion/EnvelopeSender;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/home/companion/EnvelopeSender;->sendEnvelope([B)Z

    move-result v1

    .line 719
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setConnectionState(Lcom/google/glass/home/companion/CompanionService$ConnectionState;)V
    .locals 0
    .parameter "testState"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 347
    sput-object p0, Lcom/google/glass/home/companion/CompanionService;->state:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    .line 348
    return-void
.end method


# virtual methods
.method public addCompanionListener(Lcom/google/glass/home/companion/CompanionService$CompanionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connectionController:Lcom/google/glass/home/companion/ConnectionController;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/ConnectionController;->checkImmediate()V

    .line 201
    return-void
.end method

.method public closeSocket(Ljava/io/Closeable;)V
    .locals 3
    .parameter "closeable"

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 505
    sget-object v1, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    const-string v2, "No closeable provided"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    return-void

    .line 509
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to close unwanted closable."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLocationListener()Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->locationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method public getRemoteVersion()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/google/glass/home/companion/CompanionService;->remoteVersion:I

    return v0
.end method

.method public handle(Lcom/google/glass/companion/Proto$Envelope;J)V
    .locals 4
    .parameter "envelope"
    .parameter "id"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->pendingMessageHandlers:Landroid/util/LruCache;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/companion/MessageHandler;

    .line 81
    .local v0, handler:Lcom/google/glass/home/companion/MessageHandler;
    if-eqz v0, :cond_0

    .line 82
    sget-object v1, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-interface {v0, p1}, Lcom/google/glass/home/companion/MessageHandler;->handle(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v1, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no handle for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;)V
    .locals 3
    .parameter "item"
    .parameter "itemType"

    .prologue
    .line 573
    if-nez p1, :cond_0

    .line 574
    sget-object v0, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or no TimelineItem given [item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", itemType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :goto_0
    return-void

    .line 578
    :cond_0
    sget-object v0, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inserting item into timeline [id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", itemType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 584
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;I)V

    goto :goto_0
.end method

.method isConnected()Z
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lcom/google/glass/home/companion/CompanionService;->state:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    sget-object v1, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->CONNECTED:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTetheringErrorDetected()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connectionController:Lcom/google/glass/home/companion/ConnectionController;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/ConnectionController;->isTetheringErrorDetected()Z

    move-result v0

    return v0
.end method

.method public notifyCompanionConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "device"

    .prologue
    .line 210
    iget-object v3, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/home/companion/CompanionService$CompanionListener;

    .line 212
    .local v2, listener:Lcom/google/glass/home/companion/CompanionService$CompanionListener;
    invoke-interface {v2, p1}, Lcom/google/glass/home/companion/CompanionService$CompanionListener;->onCompanionConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 215
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/glass/home/companion/CompanionService$CompanionListener;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.google.glass.extra.STATE"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v1}, Lcom/google/glass/home/companion/CompanionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method public notifyCompanionConnectionFailed()V
    .locals 3

    .prologue
    .line 233
    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/companion/CompanionService$CompanionListener;

    .line 235
    .local v1, listener:Lcom/google/glass/home/companion/CompanionService$CompanionListener;
    invoke-interface {v1}, Lcom/google/glass/home/companion/CompanionService$CompanionListener;->onCompanionConnectionFailed()V

    goto :goto_0

    .line 238
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/glass/home/companion/CompanionService$CompanionListener;
    :cond_0
    return-void
.end method

.method public notifyCompanionDisconnected()V
    .locals 5

    .prologue
    .line 222
    iget-object v3, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/home/companion/CompanionService$CompanionListener;

    .line 224
    .local v2, listener:Lcom/google/glass/home/companion/CompanionService$CompanionListener;
    invoke-interface {v2}, Lcom/google/glass/home/companion/CompanionService$CompanionListener;->onCompanionDisconnected()V

    goto :goto_0

    .line 227
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/glass/home/companion/CompanionService$CompanionListener;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.google.glass.extra.STATE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v1}, Lcom/google/glass/home/companion/CompanionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    return-void
.end method

.method public notifyCompanionVersionMismatch(II)V
    .locals 3
    .parameter "glassVersion"
    .parameter "companionVersion"

    .prologue
    .line 241
    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/companion/CompanionService$CompanionListener;

    .line 243
    .local v1, listener:Lcom/google/glass/home/companion/CompanionService$CompanionListener;
    invoke-interface {v1, p1, p2}, Lcom/google/glass/home/companion/CompanionService$CompanionListener;->onCompanionVersionMismatch(II)V

    goto :goto_0

    .line 246
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/glass/home/companion/CompanionService$CompanionListener;
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 250
    sget-object v0, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service bound from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz p1, :cond_0

    const-string v0, "com.google.glass.companion.MESSENGER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->incoming:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->binder:Landroid/os/Binder;

    goto :goto_0
.end method

.method public onBluetoothAdapterDisabled()V
    .locals 0

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/glass/home/companion/CompanionService;->stop()V

    .line 378
    return-void
.end method

.method public onBluetoothAdapterEnabled()V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/glass/home/companion/CompanionService;->start()V

    .line 372
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connectionController:Lcom/google/glass/home/companion/ConnectionController;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/ConnectionController;->recover()V

    .line 373
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 358
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connectionController:Lcom/google/glass/home/companion/ConnectionController;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/ConnectionController;->init()V

    .line 359
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connectionController:Lcom/google/glass/home/companion/ConnectionController;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/companion/CompanionService;->addCompanionListener(Lcom/google/glass/home/companion/CompanionService$CompanionListener;)V

    .line 360
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->upgradeListener:Lcom/google/glass/home/companion/CompanionService$UpgradeListener;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/companion/CompanionService;->addCompanionListener(Lcom/google/glass/home/companion/CompanionService$CompanionListener;)V

    .line 361
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->addListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 362
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 363
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 364
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 365
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->removeListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 271
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connectionController:Lcom/google/glass/home/companion/ConnectionController;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/companion/CompanionService;->removeCompanionListener(Lcom/google/glass/home/companion/CompanionService$CompanionListener;)V

    .line 272
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->upgradeListener:Lcom/google/glass/home/companion/CompanionService$UpgradeListener;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/companion/CompanionService;->removeCompanionListener(Lcom/google/glass/home/companion/CompanionService$CompanionListener;)V

    .line 273
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionConnection;->close()V

    .line 275
    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/companion/CompanionService;->killConnectedThread()V

    .line 280
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->cancel()V

    .line 282
    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    .line 285
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 286
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 261
    sget-object v0, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    const-string v1, "Starting Companion connection service..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public registerCompanionHandler(JLcom/google/glass/home/companion/MessageHandler;)V
    .locals 2
    .parameter "replyableId"
    .parameter "handler"

    .prologue
    .line 729
    if-eqz p3, :cond_0

    .line 730
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->pendingMessageHandlers:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->pendingMessageHandlers:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeCompanionListener(Lcom/google/glass/home/companion/CompanionService$CompanionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    return-void
.end method

.method public removeLocationUpdates(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 607
    sget-object v2, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing location updates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->STOP_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setType(Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setProvider(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->build()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v1

    .line 612
    .local v1, req:Lcom/google/glass/companion/Proto$LocationRequest;
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    .line 613
    .local v0, connectionCopy:Lcom/google/glass/home/companion/CompanionConnection;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionConnection;->getEnvelopeSender()Lcom/google/glass/home/companion/EnvelopeSender;

    move-result-object v2

    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/companion/EnvelopeSender;->sendEnvelopeAsync(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 617
    :cond_0
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFZ)V
    .locals 5
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "sendLastKnownLocation"

    .prologue
    .line 590
    sget-object v2, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting location updates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->START_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setType(Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setProvider(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setMinTime(J)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setMinDistance(F)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setSendLastKnownLocation(Z)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->build()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v1

    .line 598
    .local v1, req:Lcom/google/glass/companion/Proto$LocationRequest;
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    .line 599
    .local v0, connectionCopy:Lcom/google/glass/home/companion/CompanionConnection;
    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionConnection;->getEnvelopeSender()Lcom/google/glass/home/companion/EnvelopeSender;

    move-result-object v2

    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/companion/EnvelopeSender;->sendEnvelopeAsync(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 603
    :cond_0
    return-void
.end method

.method public sendEnvelope(Lcom/google/glass/companion/Proto$Envelope;)Z
    .locals 2
    .parameter "envelope"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    .line 708
    .local v0, connectionCopy:Lcom/google/glass/home/companion/CompanionConnection;
    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionConnection;->getEnvelopeSender()Lcom/google/glass/home/companion/EnvelopeSender;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/home/companion/EnvelopeSender;->sendEnvelope(Lcom/google/glass/companion/Proto$Envelope;)Z

    move-result v1

    .line 711
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLocationListener(Landroid/location/LocationListener;)V
    .locals 0
    .parameter "remoteLocationListener"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionService;->locationListener:Landroid/location/LocationListener;

    .line 622
    return-void
.end method

.method setRemoteVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 629
    iput p1, p0, Lcom/google/glass/home/companion/CompanionService;->remoteVersion:I

    .line 630
    return-void
.end method

.method public setupScreencastAndPair(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "companionDevice"

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/google/glass/home/companion/CompanionService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionConnection;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->previouslyConnectedCompanionDevice:Landroid/bluetooth/BluetoothDevice;

    .line 647
    sget-object v0, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving currently connected Companion device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService;->previouslyConnectedCompanionDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2}, Lcom/google/glass/util/BluetoothHelper;->loggableDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :goto_0
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionService;->temporaryScreencastDevice:Landroid/bluetooth/BluetoothDevice;

    .line 655
    sget-object v0, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to pair to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/glass/util/BluetoothHelper;->loggableDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-static {p1}, Lcom/google/glass/hidden/HiddenBluetoothDevice;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 657
    return-void

    .line 650
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->previouslyConnectedCompanionDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/google/glass/home/companion/CompanionService;->killConnectedThread()V

    .line 391
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    invoke-direct {v0, p0}, Lcom/google/glass/home/companion/CompanionService$AcceptThread;-><init>(Lcom/google/glass/home/companion/CompanionService;)V

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    .line 393
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->start()V

    .line 396
    :cond_0
    sget-object v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->LISTENING:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    sput-object v0, Lcom/google/glass/home/companion/CompanionService;->state:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    .line 397
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/google/glass/home/companion/CompanionService;->killConnectedThread()V

    .line 402
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->cancel()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->acceptThread:Lcom/google/glass/home/companion/CompanionService$AcceptThread;

    .line 407
    :cond_0
    sget-object v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->NONE:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    sput-object v0, Lcom/google/glass/home/companion/CompanionService;->state:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    .line 408
    return-void
.end method

.method public stopScreencastAndRestorePairing()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 667
    invoke-virtual {p0}, Lcom/google/glass/home/companion/CompanionService;->isConnected()Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 672
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/logging/UserEventAction;->COMPANION_SCREENCAST:Lcom/google/glass/logging/UserEventAction;

    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->temporaryScreencastDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->temporaryScreencastDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;

    invoke-virtual {v1}, Lcom/google/glass/home/companion/CompanionConnection;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 680
    .local v0, screencastDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService;->temporaryScreencastDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 682
    sget-object v1, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forgetting temporary screencast device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->loggableDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-static {v0}, Lcom/google/glass/hidden/HiddenBluetoothDevice;->removeBond(Landroid/bluetooth/BluetoothDevice;)V

    .line 686
    iput-object v4, p0, Lcom/google/glass/home/companion/CompanionService;->temporaryScreencastDevice:Landroid/bluetooth/BluetoothDevice;

    .line 690
    .end local v0           #screencastDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->previouslyConnectedCompanionDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    .line 691
    sget-object v1, Lcom/google/glass/home/companion/CompanionService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-pairing with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/companion/CompanionService;->previouslyConnectedCompanionDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3}, Lcom/google/glass/util/BluetoothHelper;->loggableDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService;->previouslyConnectedCompanionDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/google/glass/hidden/HiddenBluetoothDevice;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    .line 695
    iput-object v4, p0, Lcom/google/glass/home/companion/CompanionService;->previouslyConnectedCompanionDevice:Landroid/bluetooth/BluetoothDevice;

    .line 697
    :cond_1
    return-void

    .line 672
    :cond_2
    const-string v1, "2"

    goto :goto_0
.end method

.method public wakeupScreen()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->wakeUp()V

    .line 517
    return-void
.end method
