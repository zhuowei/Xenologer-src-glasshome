.class public Lcom/google/glass/home/sync/TimelineSyncService;
.super Landroid/app/Service;
.source "TimelineSyncService.java"


# static fields
.field public static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static syncAdapter:Lcom/google/glass/home/sync/TimelineSyncAdapter;


# instance fields
.field private final connectivityChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final powerLostReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/home/sync/TimelineSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/TimelineSyncService;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/home/sync/TimelineSyncService;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/google/glass/home/sync/TimelineSyncService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/sync/TimelineSyncService$1;-><init>(Lcom/google/glass/home/sync/TimelineSyncService;)V

    iput-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncService;->powerLostReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 48
    new-instance v0, Lcom/google/glass/home/sync/TimelineSyncService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/sync/TimelineSyncService$2;-><init>(Lcom/google/glass/home/sync/TimelineSyncService;)V

    iput-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncService;->connectivityChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/home/sync/TimelineSyncAdapter;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/home/sync/TimelineSyncService;->syncAdapter:Lcom/google/glass/home/sync/TimelineSyncAdapter;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/home/sync/TimelineSyncService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/sync/TimelineSyncService;)Lcom/google/glass/util/WifiHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncService;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 89
    sget-object v0, Lcom/google/glass/home/sync/TimelineSyncService;->syncAdapter:Lcom/google/glass/home/sync/TimelineSyncAdapter;

    invoke-virtual {v0}, Lcom/google/glass/home/sync/TimelineSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncService;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 71
    sget-object v1, Lcom/google/glass/home/sync/TimelineSyncService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/google/glass/home/sync/TimelineSyncService;->syncAdapter:Lcom/google/glass/home/sync/TimelineSyncAdapter;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/google/glass/home/sync/TimelineSyncAdapter;

    invoke-virtual {p0}, Lcom/google/glass/home/sync/TimelineSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/google/glass/home/sync/TimelineSyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/glass/home/sync/TimelineSyncService;->syncAdapter:Lcom/google/glass/home/sync/TimelineSyncAdapter;

    .line 75
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncService;->powerLostReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncService;->connectivityChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    return-void

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncService;->powerLostReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncService;->connectivityChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 85
    return-void
.end method
