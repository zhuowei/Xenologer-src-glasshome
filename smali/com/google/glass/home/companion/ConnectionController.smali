.class public Lcom/google/glass/home/companion/ConnectionController;
.super Lcom/google/glass/home/companion/CompanionService$SimpleCompanionListener;
.source "ConnectionController.java"

# interfaces
.implements Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;


# static fields
.field private static final CHECK_INTERVAL:J = 0xc350L

.field private static final JELLY_BEAN_MR1_VERSION_CODE:I = 0x11

.field private static final LAST_CONNECTED_DEVICE_ADDRESS:Ljava/lang/String; = "LAST_CONNECTED_DEVICE_ADDRESS"

.field private static final MAX_CONTINUAL_TETHERING_ERROR:I = 0x5

.field private static final REPORT_INTERVAL:J = 0xc350L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final companionMessageHandler:Lcom/google/glass/home/companion/MessageHandler;

.field private final context:Landroid/content/Context;

.field private volatile isConnected:Z

.field private lastCheckTime:J

.field private lastConnectedDevice:Landroid/bluetooth/BluetoothDevice;

.field private lastDeviceAddress:Ljava/lang/String;

.field private lastReportErrorTime:J

.field private final requester:Lcom/google/glass/home/companion/PingRequester;

.field private tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/glass/home/companion/ConnectionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/companion/ConnectionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-wide/16 v0, 0x0

    .line 101
    invoke-direct {p0}, Lcom/google/glass/home/companion/CompanionService$SimpleCompanionListener;-><init>()V

    .line 47
    iput-wide v0, p0, Lcom/google/glass/home/companion/ConnectionController;->lastCheckTime:J

    .line 49
    iput-wide v0, p0, Lcom/google/glass/home/companion/ConnectionController;->lastReportErrorTime:J

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Lcom/google/glass/home/companion/ConnectionController$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/companion/ConnectionController$1;-><init>(Lcom/google/glass/home/companion/ConnectionController;)V

    iput-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->companionMessageHandler:Lcom/google/glass/home/companion/MessageHandler;

    .line 102
    iput-object p1, p0, Lcom/google/glass/home/companion/ConnectionController;->context:Landroid/content/Context;

    .line 103
    new-instance v0, Lcom/google/glass/home/companion/PingRequester;

    invoke-direct {v0, p1}, Lcom/google/glass/home/companion/PingRequester;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->requester:Lcom/google/glass/home/companion/PingRequester;

    .line 104
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/home/companion/ConnectionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/companion/ConnectionController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/companion/ConnectionController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/home/companion/ConnectionController;->sendTetheringErrorMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/companion/ConnectionController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/companion/ConnectionController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->lastDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/home/companion/ConnectionController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/home/companion/ConnectionController;->lastDeviceAddress:Ljava/lang/String;

    return-object p1
.end method

.method private sendTetheringErrorMessage()V
    .locals 3

    .prologue
    .line 246
    sget-object v1, Lcom/google/glass/home/companion/ConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "Send tethering error message to glass."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->newBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/companion/Proto$Error$ErrorType;->TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/Proto$Error$Builder;->setType(Lcom/google/glass/companion/Proto$Error$ErrorType;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Error$Builder;->build()Lcom/google/glass/companion/Proto$Error;

    move-result-object v0

    .line 249
    .local v0, error:Lcom/google/glass/companion/Proto$Error;
    iget-object v1, p0, Lcom/google/glass/home/companion/ConnectionController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/home/HomeApplication;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 251
    return-void
.end method


# virtual methods
.method public check()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xc350

    .line 187
    iget-wide v0, p0, Lcom/google/glass/home/companion/ConnectionController;->lastCheckTime:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/home/companion/ConnectionController;->isConnected:Z

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    monitor-enter p0

    .line 192
    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/home/companion/ConnectionController;->lastCheckTime:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/home/companion/ConnectionController;->isConnected:Z

    if-eqz v0, :cond_3

    .line 193
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 195
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/companion/ConnectionController;->lastCheckTime:J

    .line 196
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->requester:Lcom/google/glass/home/companion/PingRequester;

    new-instance v1, Lcom/google/glass/companion/BluetoothDeviceWrapper;

    iget-object v2, p0, Lcom/google/glass/home/companion/ConnectionController;->lastConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, v2}, Lcom/google/glass/companion/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    sget-object v2, Lcom/google/glass/home/companion/PingRequester$PingDelay;->AT_ONCE:Lcom/google/glass/home/companion/PingRequester$PingDelay;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/companion/PingRequester;->ping(Lcom/google/glass/companion/BluetoothDeviceWrapper;Lcom/google/glass/home/companion/PingRequester$PingDelay;)V

    .line 198
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized checkImmediate()V
    .locals 3

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/home/companion/ConnectionController;->isConnected:Z

    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/companion/ConnectionController;->lastCheckTime:J

    .line 179
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->requester:Lcom/google/glass/home/companion/PingRequester;

    new-instance v1, Lcom/google/glass/companion/BluetoothDeviceWrapper;

    iget-object v2, p0, Lcom/google/glass/home/companion/ConnectionController;->lastConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, v2}, Lcom/google/glass/companion/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    sget-object v2, Lcom/google/glass/home/companion/PingRequester$PingDelay;->AT_ONCE:Lcom/google/glass/home/companion/PingRequester$PingDelay;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/companion/PingRequester;->ping(Lcom/google/glass/companion/BluetoothDeviceWrapper;Lcom/google/glass/home/companion/PingRequester$PingDelay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/google/glass/net/NetworkUtil;->setNetworkChecker(Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;)V

    .line 115
    new-instance v0, Lcom/google/glass/home/companion/ConnectionController$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/companion/ConnectionController$2;-><init>(Lcom/google/glass/home/companion/ConnectionController;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTetheringErrorDetected()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onCompanionConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/companion/ConnectionController;->lastDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/glass/home/companion/ConnectionController;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_CONNECTED_DEVICE_ADDRESS"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    sget-object v0, Lcom/google/glass/home/companion/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving last connected device address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/google/glass/home/companion/ConnectionController;->lastConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 160
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->lastConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->lastDeviceAddress:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->requester:Lcom/google/glass/home/companion/PingRequester;

    invoke-virtual {v0}, Lcom/google/glass/home/companion/PingRequester;->stopPing()V

    .line 162
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/glass/util/BluetoothHelper;->tether(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/companion/ConnectionController;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCompanionDisconnected()V
    .locals 2

    .prologue
    .line 168
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/home/companion/ConnectionController;->isConnected:Z

    .line 169
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recover()V
    .locals 6

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/glass/home/companion/ConnectionController;->lastDeviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/home/companion/ConnectionController;->lastConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_1

    .line 138
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 139
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 141
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/companion/ConnectionController;->lastDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/google/glass/home/companion/ConnectionController;->requester:Lcom/google/glass/home/companion/PingRequester;

    new-instance v4, Lcom/google/glass/companion/BluetoothDeviceWrapper;

    invoke-direct {v4, v1}, Lcom/google/glass/companion/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    sget-object v5, Lcom/google/glass/home/companion/PingRequester$PingDelay;->AT_ONCE:Lcom/google/glass/home/companion/PingRequester$PingDelay;

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/home/companion/PingRequester;->ping(Lcom/google/glass/companion/BluetoothDeviceWrapper;Lcom/google/glass/home/companion/PingRequester$PingDelay;)V

    .line 144
    iput-object v1, p0, Lcom/google/glass/home/companion/ConnectionController;->lastConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public reportError()V
    .locals 10

    .prologue
    const-wide/32 v8, 0xc350

    .line 204
    iget-wide v4, p0, Lcom/google/glass/home/companion/ConnectionController;->lastReportErrorTime:J

    add-long/2addr v4, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lcom/google/glass/home/companion/ConnectionController;->isConnected:Z

    if-nez v4, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    monitor-enter p0

    .line 210
    :try_start_0
    iget-wide v4, p0, Lcom/google/glass/home/companion/ConnectionController;->lastReportErrorTime:J

    add-long/2addr v4, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    iget-boolean v4, p0, Lcom/google/glass/home/companion/ConnectionController;->isConnected:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/glass/home/companion/ConnectionController;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/glass/net/NetworkUtil;->hasTetheredConnectivity(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 214
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 216
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/home/companion/ConnectionController;->lastReportErrorTime:J

    .line 218
    iget-object v4, p0, Lcom/google/glass/home/companion/ConnectionController;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    .line 219
    .local v0, application:Lcom/google/glass/home/HomeApplication;
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->getNextUniqueReplyableId()J

    move-result-wide v1

    .line 220
    .local v1, replyableId:J
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setId(J)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->build()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v3

    .line 222
    .local v3, request:Lcom/google/glass/companion/Proto$CompanionInfo;
    iget-object v4, p0, Lcom/google/glass/home/companion/ConnectionController;->companionMessageHandler:Lcom/google/glass/home/companion/MessageHandler;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/glass/home/HomeApplication;->registerCompanionHandler(JLcom/google/glass/home/companion/MessageHandler;)Z

    .line 223
    sget-object v4, Lcom/google/glass/home/companion/ConnectionController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting companion info, replyable id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/glass/home/HomeApplication;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 226
    sget-object v4, Lcom/google/glass/home/companion/ConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "Failed to request companion info"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/glass/home/HomeApplication;->registerCompanionHandler(JLcom/google/glass/home/companion/MessageHandler;)Z

    .line 229
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public reportOK()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/glass/home/companion/ConnectionController;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 235
    return-void
.end method
