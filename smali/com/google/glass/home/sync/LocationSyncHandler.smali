.class public Lcom/google/glass/home/sync/LocationSyncHandler;
.super Lcom/google/glass/sync/BackOffSyncHandler;
.source "LocationSyncHandler.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/sync/BackOffSyncHandler;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOCATION_UPDATE_TIMEOUT_MS:J

.field private static final MAX_LOCATION_AGE_MS:J

.field private static final MIN_SYNC_INTERVAL_MS:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private lastSuccessTime:J

.field private final locationManager:Lcom/google/glass/location/GlassLocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lcom/google/glass/home/sync/LocationSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/sync/LocationSyncHandler;->LOCATION_UPDATE_TIMEOUT_MS:J

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/sync/LocationSyncHandler;->MAX_LOCATION_AGE_MS:J

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/sync/LocationSyncHandler;->MIN_SYNC_INTERVAL_MS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/glass/sync/BackOffSyncHandler;-><init>()V

    .line 50
    invoke-static {}, Lcom/google/glass/location/GlassLocationManager;->getInstance()Lcom/google/glass/location/GlassLocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->locationManager:Lcom/google/glass/location/GlassLocationManager;

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->lastSuccessTime:J

    .line 54
    iput-object p1, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->context:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private awaitLocationUpdate()Landroid/location/Location;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 122
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 123
    .local v8, locationRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Landroid/location/Location;>;"
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 124
    .local v7, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Lcom/google/glass/home/sync/LocationSyncHandler$1;

    invoke-direct {v5, p0, v8, v7}, Lcom/google/glass/home/sync/LocationSyncHandler$1;-><init>(Lcom/google/glass/home/sync/LocationSyncHandler;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 135
    .local v5, listener:Landroid/location/LocationListener;
    iget-object v0, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->locationManager:Lcom/google/glass/location/GlassLocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/location/GlassLocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 137
    :try_start_0
    sget-wide v0, Lcom/google/glass/home/sync/LocationSyncHandler;->LOCATION_UPDATE_TIMEOUT_MS:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    iget-object v0, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->locationManager:Lcom/google/glass/location/GlassLocationManager;

    invoke-virtual {v0, v5}, Lcom/google/glass/location/GlassLocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 144
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v6

    .line 139
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->locationManager:Lcom/google/glass/location/GlassLocationManager;

    invoke-virtual {v0, v5}, Lcom/google/glass/location/GlassLocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    move-object v0, v9

    goto :goto_0

    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->locationManager:Lcom/google/glass/location/GlassLocationManager;

    invoke-virtual {v1, v5}, Lcom/google/glass/location/GlassLocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    throw v0
.end method

.method private static isUsableLocation(Landroid/location/Location;)Z
    .locals 5
    .parameter "location"

    .prologue
    const/4 v0, 0x0

    .line 167
    if-nez p0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/google/glass/home/sync/LocationSyncHandler;->MAX_LOCATION_AGE_MS:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reportLocation(Landroid/location/Location;)V
    .locals 11
    .parameter "location"

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long v6, v1, v3

    .line 150
    .local v6, ageMs:J
    sget-object v1, Lcom/google/glass/home/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location found, age: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms. Reporting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v1, Lcom/google/glass/util/SettingsSecure;

    iget-object v2, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v2, "android_id"

    invoke-virtual {v1, v2}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, deviceId:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, source:Ljava/lang/String;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v1

    invoke-static {p1, v10}, Lcom/google/glass/location/LocationHelper;->toLocationProto(Landroid/location/Location;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->setLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v9

    .line 159
    .local v9, request:Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    iget-object v1, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 160
    .local v0, dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    if-eqz v0, :cond_0

    .line 161
    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->REPORT_LOCATION:Lcom/google/glass/net/ServerConstants$Action;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v2

    sget-object v3, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    const/4 v5, 0x1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;Z)Z

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/glass/home/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/google/glass/home/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "Sync request cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 69
    sget-object v0, Lcom/google/glass/home/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/glass/home/sync/LocationSyncHandler;->handleFail(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    .line 71
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;)V
    .locals 2
    .parameter "responseProto"

    .prologue
    .line 75
    sget-object v0, Lcom/google/glass/home/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "Successfully reported location."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->lastSuccessTime:J

    .line 77
    invoke-virtual {p0}, Lcom/google/glass/home/sync/LocationSyncHandler;->handleSuccess()V

    .line 78
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/sync/LocationSyncHandler;->onSuccess(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;)V

    return-void
.end method

.method public performLocationSync()V
    .locals 10

    .prologue
    .line 81
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 86
    .local v3, now:J
    iget-wide v5, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->lastSuccessTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 87
    sget-object v5, Lcom/google/glass/home/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    const-string v6, "Starting sync."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    iget-object v5, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->locationManager:Lcom/google/glass/location/GlassLocationManager;

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Lcom/google/glass/location/GlassLocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 98
    .local v1, gpsLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/glass/home/sync/LocationSyncHandler;->isUsableLocation(Landroid/location/Location;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    invoke-direct {p0, v1}, Lcom/google/glass/home/sync/LocationSyncHandler;->reportLocation(Landroid/location/Location;)V

    .line 119
    .end local v1           #gpsLocation:Landroid/location/Location;
    :goto_1
    return-void

    .line 88
    :cond_0
    iget-wide v5, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->lastSuccessTime:J

    sub-long v5, v3, v5

    sget-wide v7, Lcom/google/glass/home/sync/LocationSyncHandler;->MIN_SYNC_INTERVAL_MS:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 89
    sget-object v5, Lcom/google/glass/home/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting sync. Last successful sync was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->lastSuccessTime:J

    sub-long v8, v3, v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sec ago."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_1
    sget-object v5, Lcom/google/glass/home/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping sync. Last successful sync was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->lastSuccessTime:J

    sub-long v8, v3, v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sec ago."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    .restart local v1       #gpsLocation:Landroid/location/Location;
    :cond_2
    iget-object v5, p0, Lcom/google/glass/home/sync/LocationSyncHandler;->locationManager:Lcom/google/glass/location/GlassLocationManager;

    const-string v6, "network"

    invoke-virtual {v5, v6}, Lcom/google/glass/location/GlassLocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 104
    .local v2, netLocation:Landroid/location/Location;
    invoke-static {v2}, Lcom/google/glass/home/sync/LocationSyncHandler;->isUsableLocation(Landroid/location/Location;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    invoke-direct {p0, v2}, Lcom/google/glass/home/sync/LocationSyncHandler;->reportLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 109
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/home/sync/LocationSyncHandler;->awaitLocationUpdate()Landroid/location/Location;

    move-result-object v0

    .line 110
    .local v0, freshLocation:Landroid/location/Location;
    if-eqz v0, :cond_4

    .line 111
    invoke-direct {p0, v0}, Lcom/google/glass/home/sync/LocationSyncHandler;->reportLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 117
    :cond_4
    sget-object v5, Lcom/google/glass/home/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    const-string v6, "No location found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/google/glass/home/sync/LocationSyncHandler;->handleSuccess()V

    goto/16 :goto_1
.end method
