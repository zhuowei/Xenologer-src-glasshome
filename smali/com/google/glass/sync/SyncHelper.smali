.class public Lcom/google/glass/sync/SyncHelper;
.super Ljava/lang/Object;
.source "SyncHelper.java"


# static fields
.field public static final CONNECTIVITY_ESTABLISHED_SYNC:Ljava/lang/String; = "com.google.glass.sync.CONNECTIVITY_ESTABLISHED_SYNC"

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_SYNC_INTERVAL_SECONDS:J = 0x0L

.field public static final GCM_SYNC:Ljava/lang/String; = "com.google.glass.sync.GCM_SYNC"

.field private static final LAST_SYNC_TIME_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final LOCATION_SYNC_INTERVAL_SECONDS:J = 0x0L

.field public static final PERIODIC_SYNC:Ljava/lang/String; = "com.google.glass.sync.PERIODIC_SYNC"

.field public static final POWER_CONNECTED_SYNC:Ljava/lang/String; = "com.google.glass.sync.POWER_CONNECTED_SYNC"

.field private static final SHORT_TIMELINE_SYNC_INTERVAL_SECONDS:J = 0x1eL

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/sync/SyncHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->TAG:Ljava/lang/String;

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->DEFAULT_SYNC_INTERVAL_SECONDS:J

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->LOCATION_SYNC_INTERVAL_SECONDS:J

    .line 61
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static clearLastSyncTimes()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    .line 169
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 170
    return-void
.end method

.method public static enableSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5
    .parameter "primaryAccount"
    .parameter "authority"

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-static {p1}, Lcom/google/glass/sync/SyncHelper;->getSyncIntervalSeconds(Ljava/lang/String;)J

    move-result-wide v1

    .line 71
    .local v1, intervalSeconds:J
    invoke-static {p0, p1, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 72
    invoke-static {p0, p1, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "com.google.glass.sync.PERIODIC_SYNC"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    invoke-static {p0, p1, v0, v1, v2}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 76
    return-void
.end method

.method private static getSyncIntervalSeconds(Ljava/lang/String;)J
    .locals 2
    .parameter "authority"

    .prologue
    .line 162
    const-string v0, "com.google.glass.location"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/google/glass/sync/SyncHelper;->LOCATION_SYNC_INTERVAL_SECONDS:J

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/google/glass/sync/SyncHelper;->DEFAULT_SYNC_INTERVAL_SECONDS:J

    goto :goto_0
.end method

.method public static shouldPerformConnectivityEstablishedSync(Lcom/google/glass/util/Clock;Ljava/lang/String;)Z
    .locals 1
    .parameter "clock"
    .parameter "authority"

    .prologue
    .line 144
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SHORT_TIMELINE_POLL:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/google/glass/sync/SyncHelper;->shouldPerformConnectivityEstablishedSyncInternal(Lcom/google/glass/util/Clock;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static shouldPerformConnectivityEstablishedSyncInternal(Lcom/google/glass/util/Clock;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "clock"
    .parameter "authority"
    .parameter "useShortTimelineSyncInternal"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 151
    if-eqz p2, :cond_2

    const-string v4, "com.google.glass.timeline"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    sget-object v4, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 154
    .local v2, lastSyncTime:J
    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 155
    .local v0, intervalMillis:J
    invoke-interface {p0}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    const/4 v4, 0x1

    .line 157
    .end local v0           #intervalMillis:J
    .end local v2           #lastSyncTime:J
    :goto_1
    return v4

    .line 152
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 155
    .restart local v0       #intervalMillis:J
    .restart local v2       #lastSyncTime:J
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 157
    .end local v0           #intervalMillis:J
    .end local v2           #lastSyncTime:J
    :cond_2
    invoke-static {p0, p1}, Lcom/google/glass/sync/SyncHelper;->shouldPerformPeriodicSync(Lcom/google/glass/util/Clock;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1
.end method

.method public static shouldPerformPeriodicSync(Lcom/google/glass/util/Clock;Ljava/lang/String;)Z
    .locals 7
    .parameter "clock"
    .parameter "authority"

    .prologue
    .line 133
    sget-object v4, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 135
    .local v2, lastSyncTime:J
    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/google/glass/sync/SyncHelper;->getSyncIntervalSeconds(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 136
    .local v0, intervalMillis:J
    invoke-interface {p0}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 133
    .end local v0           #intervalMillis:J
    .end local v2           #lastSyncTime:J
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 136
    .restart local v0       #intervalMillis:J
    .restart local v2       #lastSyncTime:J
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static triggerSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "primaryAccount"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 98
    if-eqz p0, :cond_0

    .line 99
    new-instance v0, Lcom/google/glass/sync/SyncHelper$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/glass/sync/SyncHelper$1;-><init>(Landroid/os/Bundle;Ljava/lang/String;Landroid/accounts/Account;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no account to sync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static triggerSync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "authority"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public static triggerSync(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 89
    new-instance v1, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v1, p0}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 90
    .local v0, primaryAccount:Landroid/accounts/Account;
    invoke-static {v0, p1, p2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public static updateLastSyncTime(Lcom/google/glass/util/Clock;Ljava/lang/String;)V
    .locals 3
    .parameter "clock"
    .parameter "authority"

    .prologue
    .line 125
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method
