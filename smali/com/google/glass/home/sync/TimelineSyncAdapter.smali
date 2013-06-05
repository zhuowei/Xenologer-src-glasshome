.class Lcom/google/glass/home/sync/TimelineSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "TimelineSyncAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final clock:Lcom/google/glass/util/Clock;

.field private final syncHandler:Lcom/google/glass/home/sync/TimelineSyncHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/glass/home/sync/TimelineSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/TimelineSyncAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "autoInitialize"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 33
    invoke-static {p1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    .line 34
    .local v0, application:Lcom/google/glass/home/HomeApplication;
    new-instance v1, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v1}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    iput-object v1, p0, Lcom/google/glass/home/sync/TimelineSyncAdapter;->clock:Lcom/google/glass/util/Clock;

    .line 35
    new-instance v1, Lcom/google/glass/home/sync/TimelineSyncHandler;

    new-instance v2, Lcom/google/glass/home/sync/TimelineSyncWindowHelper;

    invoke-direct {v2, v0}, Lcom/google/glass/home/sync/TimelineSyncWindowHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/google/glass/home/sync/TimelineSyncHandler;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/sync/TimelineSyncWindowHelper;)V

    iput-object v1, p0, Lcom/google/glass/home/sync/TimelineSyncAdapter;->syncHandler:Lcom/google/glass/home/sync/TimelineSyncHandler;

    .line 37
    return-void
.end method


# virtual methods
.method public cancelOpportunisticUpload()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncAdapter;->syncHandler:Lcom/google/glass/home/sync/TimelineSyncHandler;

    invoke-virtual {v0}, Lcom/google/glass/home/sync/TimelineSyncHandler;->cancelOpportunisticUpload()V

    .line 120
    return-void
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    .line 44
    .local v2, origThreadPriority:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/home/sync/TimelineSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    .line 53
    .local v0, application:Lcom/google/glass/home/HomeApplication;
    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    sget-object v4, Lcom/google/glass/home/sync/TimelineSyncAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Android lies: there is no connectivity but sync was triggered"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v4

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v4, v5}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 112
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_1
    const-string v4, "com.google.glass.sync.PERIODIC_SYNC"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/glass/home/sync/TimelineSyncAdapter;->clock:Lcom/google/glass/util/Clock;

    invoke-static {v4, p3}, Lcom/google/glass/sync/SyncHelper;->shouldPerformPeriodicSync(Lcom/google/glass/util/Clock;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    sget-object v4, Lcom/google/glass/home/sync/TimelineSyncAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Not performing periodic sync since it is too soon since our last sync"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    .line 68
    :cond_1
    :try_start_2
    const-string v4, "com.google.glass.sync.CONNECTIVITY_ESTABLISHED_SYNC"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/glass/home/sync/TimelineSyncAdapter;->clock:Lcom/google/glass/util/Clock;

    invoke-static {v4, p3}, Lcom/google/glass/sync/SyncHelper;->shouldPerformConnectivityEstablishedSync(Lcom/google/glass/util/Clock;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 70
    sget-object v4, Lcom/google/glass/home/sync/TimelineSyncAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Not performing connectivity established sync since it is too soon since our last sync"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    .line 75
    :cond_2
    :try_start_3
    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Lcom/google/glass/home/HomeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 77
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v4, 0x3

    const-class v5, Lcom/google/glass/home/sync/TimelineSyncAdapter;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 80
    .local v1, lock:Landroid/net/wifi/WifiManager$WifiLock;
    :try_start_4
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 81
    iget-object v4, p0, Lcom/google/glass/home/sync/TimelineSyncAdapter;->syncHandler:Lcom/google/glass/home/sync/TimelineSyncHandler;

    invoke-virtual {v4}, Lcom/google/glass/home/sync/TimelineSyncHandler;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    :try_start_5
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 88
    :cond_3
    iget-object v4, p0, Lcom/google/glass/home/sync/TimelineSyncAdapter;->syncHandler:Lcom/google/glass/home/sync/TimelineSyncHandler;

    invoke-virtual {v4}, Lcom/google/glass/home/sync/TimelineSyncHandler;->hasFailures()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    iget-object v4, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 94
    iget-object v4, p0, Lcom/google/glass/home/sync/TimelineSyncAdapter;->syncHandler:Lcom/google/glass/home/sync/TimelineSyncHandler;

    invoke-virtual {v4}, Lcom/google/glass/home/sync/TimelineSyncHandler;->getDelayRemainingSecs()J

    move-result-wide v4

    iput-wide v4, p5, Landroid/content/SyncResult;->delayUntil:J

    .line 98
    iget-object v4, p0, Lcom/google/glass/home/sync/TimelineSyncAdapter;->syncHandler:Lcom/google/glass/home/sync/TimelineSyncHandler;

    invoke-virtual {v4}, Lcom/google/glass/home/sync/TimelineSyncHandler;->hasServerFailures()Z

    move-result v4

    invoke-static {p3, v4}, Lcom/google/glass/sync/SyncHelper;->updateBackoffSyncMode(Ljava/lang/String;Z)V

    .line 100
    sget-object v4, Lcom/google/glass/home/sync/TimelineSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rescheduling another sync with backoff [delayUntil="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p5, Landroid/content/SyncResult;->delayUntil:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "secs, syncResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", authority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", extras="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 110
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setPriority(I)V

    goto/16 :goto_0

    .line 83
    :catchall_0
    move-exception v4

    :try_start_6
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 84
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_4
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 110
    .end local v0           #application:Lcom/google/glass/home/HomeApplication;
    .end local v1           #lock:Landroid/net/wifi/WifiManager$WifiLock;
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :catchall_1
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Thread;->setPriority(I)V

    throw v4

    .line 104
    .restart local v0       #application:Lcom/google/glass/home/HomeApplication;
    .restart local v1       #lock:Landroid/net/wifi/WifiManager$WifiLock;
    .restart local v3       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_5
    :try_start_7
    iget-object v4, p0, Lcom/google/glass/home/sync/TimelineSyncAdapter;->clock:Lcom/google/glass/util/Clock;

    invoke-static {v4, p3}, Lcom/google/glass/sync/SyncHelper;->updateLastSyncTime(Lcom/google/glass/util/Clock;Ljava/lang/String;)V

    .line 105
    const/4 v4, 0x0

    invoke-static {p3, v4}, Lcom/google/glass/sync/SyncHelper;->updateBackoffSyncMode(Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1
.end method
