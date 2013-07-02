.class public Lcom/google/glass/sync/SyncHelper;
.super Ljava/lang/Object;
.source "SyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/SyncHelper$SyncSource;
    }
.end annotation


# static fields
.field private static final BACKOFF_SYNC_MODE_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/sync/SyncHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->TAG:Ljava/lang/String;

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->DEFAULT_SYNC_INTERVAL_SECONDS:J

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->LOCATION_SYNC_INTERVAL_SECONDS:J

    .line 62
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    .line 69
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->BACKOFF_SYNC_MODE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->BACKOFF_SYNC_MODE_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static clearLastSyncTimes()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    .line 167
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 168
    return-void
.end method

.method public static enableSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5
    .parameter "primaryAccount"
    .parameter "authority"

    .prologue
    const/4 v4, 0x1

    .line 78
    invoke-static {p1}, Lcom/google/glass/sync/SyncHelper;->getSyncIntervalSeconds(Ljava/lang/String;)J

    move-result-wide v1

    .line 79
    .local v1, intervalSeconds:J
    invoke-static {p0, p1, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 80
    invoke-static {p0, p1, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "com.google.glass.sync.PERIODIC_SYNC"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    invoke-static {p0, p1, v0, v1, v2}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 84
    return-void
.end method

.method private static getSyncIntervalSeconds(Ljava/lang/String;)J
    .locals 2
    .parameter "authority"

    .prologue
    .line 160
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

.method public static shouldPerformPeriodicSync(Lcom/google/glass/util/Clock;Ljava/lang/String;)Z
    .locals 7
    .parameter "clock"
    .parameter "authority"

    .prologue
    .line 153
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

    .line 155
    .local v2, lastSyncTime:J
    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/google/glass/sync/SyncHelper;->getSyncIntervalSeconds(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 156
    .local v0, intervalMillis:J
    invoke-interface {p0}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 153
    .end local v0           #intervalMillis:J
    .end local v2           #lastSyncTime:J
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 156
    .restart local v0       #intervalMillis:J
    .restart local v2       #lastSyncTime:J
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
    .locals 3
    .parameter "primaryAccount"
    .parameter "authority"
    .parameter "syncSource"

    .prologue
    .line 105
    if-eqz p0, :cond_0

    .line 106
    new-instance v0, Lcom/google/glass/sync/SyncHelper$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/glass/sync/SyncHelper$1;-><init>(Lcom/google/glass/sync/SyncHelper$SyncSource;Ljava/lang/String;Landroid/accounts/Account;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 133
    :goto_0
    return-void

    .line 131
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

.method public static triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
    .locals 2
    .parameter "context"
    .parameter "authority"
    .parameter "syncSource"

    .prologue
    .line 90
    new-instance v1, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v1, p0}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 91
    .local v0, primaryAccount:Landroid/accounts/Account;
    invoke-static {v0, p1, p2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 92
    return-void
.end method

.method public static updateBackoffSyncMode(Ljava/lang/String;Z)V
    .locals 2
    .parameter "authority"
    .parameter "shouldBackoff"

    .prologue
    .line 145
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->BACKOFF_SYNC_MODE_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public static updateLastSyncTime(Lcom/google/glass/util/Clock;Ljava/lang/String;)V
    .locals 3
    .parameter "clock"
    .parameter "authority"

    .prologue
    .line 137
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method
