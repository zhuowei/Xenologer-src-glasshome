.class public Lcom/google/glass/home/companion/PingRequester;
.super Ljava/lang/Object;
.source "PingRequester.java"

# interfaces
.implements Lcom/google/glass/companion/UuidFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/companion/PingRequester$PingDelay;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final WHAT_PING:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private volatile expectedDevice:Lcom/google/glass/companion/BluetoothDeviceWrapper;

.field private handler:Landroid/os/Handler;

.field private oldBtcCtsMode:Ljava/lang/Boolean;

.field private final uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/home/companion/PingRequester;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/companion/PingRequester;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/glass/home/companion/PingRequester$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/companion/PingRequester$1;-><init>(Lcom/google/glass/home/companion/PingRequester;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->handler:Landroid/os/Handler;

    .line 66
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 67
    new-instance v0, Lcom/google/glass/companion/UuidFetcher;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/companion/UuidFetcher;-><init>(Landroid/content/Context;Lcom/google/glass/companion/UuidFetcher$Callback;)V

    iput-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

    .line 68
    iput-object p1, p0, Lcom/google/glass/home/companion/PingRequester;->context:Landroid/content/Context;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/companion/PingRequester;)Lcom/google/glass/companion/BluetoothDeviceWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->expectedDevice:Lcom/google/glass/companion/BluetoothDeviceWrapper;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/home/companion/PingRequester;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/companion/PingRequester;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/home/companion/PingRequester;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/glass/home/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/home/companion/PingRequester;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/companion/PingRequester;)Lcom/google/glass/companion/UuidFetcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

    return-object v0
.end method


# virtual methods
.method getPingInterval()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 124
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public getUuidFetcherForTesting()Lcom/google/glass/companion/UuidFetcher;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

    return-object v0
.end method

.method public onUuidFetchCallback(Lcom/google/glass/companion/BluetoothDeviceWrapper;)V
    .locals 2
    .parameter "wrapper"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/google/glass/home/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/hidden/HiddenWifiManager;->setBtcCtsMode(Landroid/net/wifi/WifiManager;Z)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->expectedDevice:Lcom/google/glass/companion/BluetoothDeviceWrapper;

    sget-object v1, Lcom/google/glass/home/companion/PingRequester$PingDelay;->DEFAULT:Lcom/google/glass/home/companion/PingRequester$PingDelay;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/companion/PingRequester;->ping(Lcom/google/glass/companion/BluetoothDeviceWrapper;Lcom/google/glass/home/companion/PingRequester$PingDelay;)V

    .line 114
    return-void
.end method

.method public declared-synchronized ping(Lcom/google/glass/companion/BluetoothDeviceWrapper;Lcom/google/glass/home/companion/PingRequester$PingDelay;)V
    .locals 5
    .parameter "device"
    .parameter "delay"

    .prologue
    .line 72
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/glass/companion/BluetoothDeviceWrapper;->hasWrappedDevice()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/home/companion/PingRequester;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/google/glass/home/companion/PingRequester;->context:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/google/glass/home/companion/PingRequester;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/google/glass/home/companion/PingRequester;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iput-object p1, p0, Lcom/google/glass/home/companion/PingRequester;->expectedDevice:Lcom/google/glass/companion/BluetoothDeviceWrapper;

    .line 83
    iget-object v2, p0, Lcom/google/glass/home/companion/PingRequester;->uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

    invoke-virtual {v2}, Lcom/google/glass/companion/UuidFetcher;->register()V

    .line 84
    const-wide/16 v0, 0x0

    .line 85
    .local v0, interval:J
    sget-object v2, Lcom/google/glass/home/companion/PingRequester$PingDelay;->AT_ONCE:Lcom/google/glass/home/companion/PingRequester$PingDelay;

    if-ne p2, v2, :cond_3

    .line 86
    const-wide/16 v0, 0x0

    .line 93
    :goto_1
    iget-object v2, p0, Lcom/google/glass/home/companion/PingRequester;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    .end local v0           #interval:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 87
    .restart local v0       #interval:J
    :cond_3
    :try_start_2
    sget-object v2, Lcom/google/glass/home/companion/PingRequester$PingDelay;->DEFAULT:Lcom/google/glass/home/companion/PingRequester$PingDelay;

    if-ne p2, v2, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/google/glass/home/companion/PingRequester;->getPingInterval()J

    move-result-wide v0

    goto :goto_1

    .line 90
    :cond_4
    sget-object v2, Lcom/google/glass/home/companion/PingRequester;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown ping delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Pinging at once."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stopPing()V
    .locals 2

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->uuidFetcher:Lcom/google/glass/companion/UuidFetcher;

    invoke-virtual {v0}, Lcom/google/glass/companion/UuidFetcher;->unregister()V

    .line 98
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->expectedDevice:Lcom/google/glass/companion/BluetoothDeviceWrapper;

    .line 100
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/google/glass/home/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/hidden/HiddenWifiManager;->setBtcCtsMode(Landroid/net/wifi/WifiManager;Z)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
