.class public Lcom/google/glass/home/sync/EntitySyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "EntitySyncAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final clock:Lcom/google/glass/util/Clock;

.field private handler:Lcom/google/glass/home/sync/EntitySyncHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/home/sync/EntitySyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/home/HomeApplication;Z)V
    .locals 1
    .parameter "application"
    .parameter "autoInitialize"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 31
    new-instance v0, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v0}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->clock:Lcom/google/glass/util/Clock;

    .line 32
    new-instance v0, Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-direct {v0, p1}, Lcom/google/glass/home/sync/EntitySyncHandler;-><init>(Lcom/google/glass/home/HomeApplication;)V

    iput-object v0, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->handler:Lcom/google/glass/home/sync/EntitySyncHandler;

    .line 33
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    .line 40
    .local v1, origThreadPriority:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 42
    :try_start_0
    sget-object v4, Lcom/google/glass/home/sync/EntitySyncAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting Entity sync, extras are: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v4, "com.google.glass.sync.PERIODIC_SYNC"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->clock:Lcom/google/glass/util/Clock;

    invoke-static {v4, p3}, Lcom/google/glass/sync/SyncHelper;->shouldPerformPeriodicSync(Lcom/google/glass/util/Clock;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    sget-object v4, Lcom/google/glass/home/sync/EntitySyncAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Not performing periodic sync since it is too soon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 105
    :goto_0
    return-void

    .line 50
    :cond_0
    :try_start_1
    const-string v4, "com.google.glass.sync.CONNECTIVITY_ESTABLISHED_SYNC"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->clock:Lcom/google/glass/util/Clock;

    invoke-static {v4, p3}, Lcom/google/glass/sync/SyncHelper;->shouldPerformConnectivityEstablishedSync(Lcom/google/glass/util/Clock;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    sget-object v4, Lcom/google/glass/home/sync/EntitySyncAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Not performing connectivity established sync since it is too soon since our last sync"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    .line 57
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/glass/home/sync/EntitySyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/home/HomeApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v2

    .line 58
    .local v2, userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->handler:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v4}, Lcom/google/glass/home/sync/EntitySyncHandler;->shouldRetry()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 59
    sget-object v4, Lcom/google/glass/logging/UserEventAction;->ENTITY_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v2, v4}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/home/sync/EntitySyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lcom/google/glass/home/HomeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 63
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v4, 0x3

    const-class v5, Lcom/google/glass/home/sync/EntitySyncAdapter;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 66
    .local v0, lock:Landroid/net/wifi/WifiManager$WifiLock;
    :try_start_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 67
    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->handler:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v4}, Lcom/google/glass/home/sync/EntitySyncHandler;->fetchEntities()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :try_start_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 75
    :cond_2
    sget-object v4, Lcom/google/glass/logging/UserEventAction;->ENTITY_SYNC_FINISHED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v2, v4}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V

    .line 77
    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->handler:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v4}, Lcom/google/glass/home/sync/EntitySyncHandler;->hasFailures()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 80
    iget-object v4, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    .line 83
    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->handler:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v4}, Lcom/google/glass/home/sync/EntitySyncHandler;->getDelayRemainingSecs()J

    move-result-wide v4

    iput-wide v4, p5, Landroid/content/SyncResult;->delayUntil:J

    .line 87
    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->handler:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v4}, Lcom/google/glass/home/sync/EntitySyncHandler;->hasServerFailures()Z

    move-result v4

    invoke-static {p3, v4}, Lcom/google/glass/sync/SyncHelper;->updateBackoffSyncMode(Ljava/lang/String;Z)V

    .line 89
    sget-object v4, Lcom/google/glass/home/sync/EntitySyncAdapter;->TAG:Ljava/lang/String;

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
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 103
    .end local v0           #lock:Landroid/net/wifi/WifiManager$WifiLock;
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto/16 :goto_0

    .line 69
    .restart local v0       #lock:Landroid/net/wifi/WifiManager$WifiLock;
    .restart local v3       #wifiManager:Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_3
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 103
    .end local v0           #lock:Landroid/net/wifi/WifiManager$WifiLock;
    .end local v2           #userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :catchall_1
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Thread;->setPriority(I)V

    throw v4

    .line 93
    .restart local v0       #lock:Landroid/net/wifi/WifiManager$WifiLock;
    .restart local v2       #userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    .restart local v3       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_4
    :try_start_6
    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->clock:Lcom/google/glass/util/Clock;

    invoke-static {v4, p3}, Lcom/google/glass/sync/SyncHelper;->updateLastSyncTime(Lcom/google/glass/util/Clock;Ljava/lang/String;)V

    .line 94
    const/4 v4, 0x0

    invoke-static {p3, v4}, Lcom/google/glass/sync/SyncHelper;->updateBackoffSyncMode(Ljava/lang/String;Z)V

    goto :goto_1

    .line 98
    .end local v0           #lock:Landroid/net/wifi/WifiManager$WifiLock;
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_5
    sget-object v4, Lcom/google/glass/home/sync/EntitySyncAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Aborting sync because we are backing-off"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v4, Lcom/google/glass/logging/UserEventAction;->ENTITY_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v2, v4}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method
