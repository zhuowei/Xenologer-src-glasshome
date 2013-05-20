.class abstract Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;
.super Ljava/lang/Object;
.source "AbstractTimelineSyncHelper.java"


# instance fields
.field protected final application:Lcom/google/glass/home/HomeApplication;

.field protected final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field protected final powerHelper:Lcom/google/glass/util/PowerHelper;

.field protected final syncReporter:Lcom/google/glass/home/sync/SyncStatusReporter;

.field protected final wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .parameter "application"
    .parameter "syncReporter"
    .parameter "batteryHelper"
    .parameter "powerHelper"
    .parameter "wifiHelper"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    .line 29
    iput-object p2, p0, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;->syncReporter:Lcom/google/glass/home/sync/SyncStatusReporter;

    .line 30
    iput-object p3, p0, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 31
    iput-object p4, p0, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 32
    iput-object p5, p0, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 33
    return-void
.end method


# virtual methods
.method protected createSyncRequestBuilder(Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "settingsSecure"

    .prologue
    .line 40
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    const-string v1, "android_id"

    invoke-virtual {p1, v1}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    return-object v0
.end method

.method protected logSyncMetrics(Lcom/google/glass/logging/UserEventAction;JJ)V
    .locals 10
    .parameter "event"
    .parameter "bytes"
    .parameter "duration"

    .prologue
    .line 44
    iget-object v5, p0, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v1, "1"

    .line 45
    .local v1, isPowered:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "1"

    .line 46
    .local v2, isScreenOn:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "1"

    .line 47
    .local v3, isWifiConnected:Ljava/lang/String;
    :goto_2
    const-string v5, "b"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "l"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "p"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v1, v7, v8

    const/4 v8, 0x4

    const-string v9, "s"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v2, v7, v8

    const/4 v8, 0x6

    const-string v9, "w"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    aput-object v3, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, data:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/home/sync/AbstractTimelineSyncHelper;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v5}, Lcom/google/glass/home/HomeApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v4

    .line 54
    .local v4, userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    invoke-virtual {v4, p1, v0}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 55
    return-void

    .line 44
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #isPowered:Ljava/lang/String;
    .end local v2           #isScreenOn:Ljava/lang/String;
    .end local v3           #isWifiConnected:Ljava/lang/String;
    .end local v4           #userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 45
    .restart local v1       #isPowered:Ljava/lang/String;
    :cond_1
    const-string v2, "0"

    goto :goto_1

    .line 46
    .restart local v2       #isScreenOn:Ljava/lang/String;
    :cond_2
    const-string v3, "0"

    goto :goto_2
.end method
