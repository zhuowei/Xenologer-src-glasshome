.class public Lcom/google/glass/location/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/location/LocationService$UpdateRunnable;,
        Lcom/google/glass/location/LocationService$RemoteLocationListener;,
        Lcom/google/glass/location/LocationService$LocalLocationListener;,
        Lcom/google/glass/location/LocationService$RequestState;
    }
.end annotation


# static fields
.field private static final GPS_STALENESS_THRESHOLD_MS:J = 0x4e20L

.field private static final NETWORK_STALENESS_THRESHOLD_MS:J = 0x1d4c0L

.field private static final NO_TIME:J = -0x4000000000000000L

.field private static final TAG:Ljava/lang/String;

.field private static runningInstance:Lcom/google/glass/location/LocationService;


# instance fields
.field private final clientNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

.field private combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

.field private connectedToCompanion:Z

.field private final gpsUpdateRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final incoming:Landroid/os/Messenger;

.field private final lastKnownLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

.field private final localGpsState:Lcom/google/glass/location/LocationService$RequestState;

.field private final localNetworkListener:Landroid/location/LocationListener;

.field private final localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

.field private localProvider:Landroid/location/LocationManager;

.field private final networkUpdateRunnable:Ljava/lang/Runnable;

.field private final outgoing:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

.field private final remoteLocationListener:Landroid/location/LocationListener;

.field private final remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

.field private remoteProvider:Lcom/google/glass/location/LocationProxy;

.field private final requests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/location/LocationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->lastKnownLocations:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->clientNames:Ljava/util/HashMap;

    .line 149
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/location/LocationService$1;

    invoke-direct {v1, p0}, Lcom/google/glass/location/LocationService$1;-><init>(Lcom/google/glass/location/LocationService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->incoming:Landroid/os/Messenger;

    .line 161
    new-instance v0, Lcom/google/glass/location/LocationService$RequestState;

    invoke-direct {v0, v2}, Lcom/google/glass/location/LocationService$RequestState;-><init>(Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    .line 162
    new-instance v0, Lcom/google/glass/location/LocationService$RequestState;

    invoke-direct {v0, v2}, Lcom/google/glass/location/LocationService$RequestState;-><init>(Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    .line 163
    new-instance v0, Lcom/google/glass/location/LocationService$RequestState;

    invoke-direct {v0, v2}, Lcom/google/glass/location/LocationService$RequestState;-><init>(Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    .line 164
    new-instance v0, Lcom/google/glass/location/LocationService$RequestState;

    invoke-direct {v0, v2}, Lcom/google/glass/location/LocationService$RequestState;-><init>(Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    .line 171
    new-instance v0, Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/location/LocationService$LocalLocationListener;-><init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    .line 172
    new-instance v0, Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/location/LocationService$LocalLocationListener;-><init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->localNetworkListener:Landroid/location/LocationListener;

    .line 173
    new-instance v0, Lcom/google/glass/location/LocationService$RemoteLocationListener;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/location/LocationService$RemoteLocationListener;-><init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->remoteLocationListener:Landroid/location/LocationListener;

    .line 178
    new-instance v0, Lcom/google/glass/location/LocationService$UpdateRunnable;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/location/LocationService$UpdateRunnable;-><init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->gpsUpdateRunnable:Ljava/lang/Runnable;

    .line 179
    new-instance v0, Lcom/google/glass/location/LocationService$UpdateRunnable;

    invoke-direct {v0, p0, v2}, Lcom/google/glass/location/LocationService$UpdateRunnable;-><init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->networkUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/location/LocationService;Landroid/location/Location;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/glass/location/LocationService;->handleLocationChanged(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/location/LocationService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/location/LocationService;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->onClientDisconnected(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/location/LocationService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->updateLocationRequests()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/location/LocationService;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/location/LocationService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->handleCompanionConnected()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/location/LocationService;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->postOnClientDisconnected(Ljava/lang/Integer;)V

    return-void
.end method

.method private getClientName(I)Ljava/lang/String;
    .locals 3
    .parameter "pid"

    .prologue
    .line 581
    iget-object v1, p0, Lcom/google/glass/location/LocationService;->clientNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 582
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 583
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 585
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getCombinedRequest(Ljava/lang/String;)Lcom/google/glass/location/LocationRequest;
    .locals 9
    .parameter "provider"

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, combinedRequest:Lcom/google/glass/location/LocationRequest;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 514
    iget-object v4, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/location/LocationRequest;

    .line 515
    .local v3, request:Lcom/google/glass/location/LocationRequest;
    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    if-nez v0, :cond_1

    .line 517
    new-instance v0, Lcom/google/glass/location/LocationRequest;

    .end local v0           #combinedRequest:Lcom/google/glass/location/LocationRequest;
    invoke-direct {v0, v3}, Lcom/google/glass/location/LocationRequest;-><init>(Lcom/google/glass/location/LocationRequest;)V

    .line 513
    .restart local v0       #combinedRequest:Lcom/google/glass/location/LocationRequest;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 520
    :cond_2
    new-instance v1, Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v7

    invoke-virtual {v0}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/glass/location/LocationRequest;-><init>(Ljava/lang/String;JF)V

    .end local v0           #combinedRequest:Lcom/google/glass/location/LocationRequest;
    .local v1, combinedRequest:Lcom/google/glass/location/LocationRequest;
    move-object v0, v1

    .end local v1           #combinedRequest:Lcom/google/glass/location/LocationRequest;
    .restart local v0       #combinedRequest:Lcom/google/glass/location/LocationRequest;
    goto :goto_1

    .line 526
    .end local v3           #request:Lcom/google/glass/location/LocationRequest;
    :cond_3
    return-object v0
.end method

.method private getProviderState(Ljava/lang/String;Z)Lcom/google/glass/location/LocationService$RequestState;
    .locals 1
    .parameter "provider"
    .parameter "isLocal"

    .prologue
    .line 531
    if-eqz p2, :cond_1

    .line 532
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    .line 544
    :goto_0
    return-object v0

    .line 534
    :cond_0
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 535
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    goto :goto_0

    .line 538
    :cond_1
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    goto :goto_0

    .line 540
    :cond_2
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    goto :goto_0

    .line 544
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRunningInstance()Lcom/google/glass/location/LocationService;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 57
    sget-object v0, Lcom/google/glass/location/LocationService;->runningInstance:Lcom/google/glass/location/LocationService;

    return-object v0
.end method

.method private handleCompanionConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 244
    sget-object v0, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "onCompanionConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/location/LocationService;->connectedToCompanion:Z

    .line 248
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v2, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 249
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v2, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 251
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->updateLocationRequests()V

    .line 252
    return-void
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 264
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 265
    sget-object v0, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/google/glass/location/LocationConstants;->messageTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 268
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->handleRegisterClient(Landroid/os/Message;)V

    goto :goto_0

    .line 271
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->handleRequestUpdates(Landroid/os/Message;)V

    goto :goto_0

    .line 274
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->handleRemoveUpdates(Landroid/os/Message;)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleLocationChanged(Landroid/location/Location;Z)V
    .locals 9
    .parameter "location"
    .parameter "isLocal"

    .prologue
    const-wide/16 v7, 0x0

    .line 334
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 337
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, provider:Ljava/lang/String;
    sget-object v6, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocationChanged "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p2, :cond_4

    const-string v5, " local"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->lastKnownLocations:Ljava/util/HashMap;

    invoke-virtual {v5, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 345
    .local v3, uptime:J
    invoke-direct {p0, v1, p2}, Lcom/google/glass/location/LocationService;->getProviderState(Ljava/lang/String;Z)Lcom/google/glass/location/LocationService$RequestState;

    move-result-object v5

    iput-wide v3, v5, Lcom/google/glass/location/LocationService$RequestState;->lastLocationTime:J

    .line 347
    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->isStale(Landroid/location/Location;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 348
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 349
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/location/LocationRequest;

    .line 350
    .local v2, request:Lcom/google/glass/location/LocationRequest;
    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 351
    invoke-direct {p0, v2, p1}, Lcom/google/glass/location/LocationService;->sendLocationMessage(Lcom/google/glass/location/LocationRequest;Landroid/location/Location;)V

    .line 348
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 342
    .end local v0           #i:I
    .end local v2           #request:Lcom/google/glass/location/LocationRequest;
    .end local v3           #uptime:J
    :cond_4
    const-string v5, " remote"

    goto :goto_1

    .line 355
    .restart local v3       #uptime:J
    :cond_5
    sget-object v5, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    const-string v6, "Dropping stale remote location"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_6
    if-eqz p2, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->updateLocationRequests()V

    .line 363
    const-string v5, "gps"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 364
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/glass/location/LocationService;->gpsUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/glass/location/LocationService;->gpsUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x4e20

    add-long/2addr v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 366
    :cond_7
    const-string v5, "network"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/glass/location/LocationService;->networkUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/glass/location/LocationService;->networkUpdateRunnable:Ljava/lang/Runnable;

    const-wide/32 v7, 0x1d4c0

    add-long/2addr v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private handleRegisterClient(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 281
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 282
    .local v4, pid:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->clientNames:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v5, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registered client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/google/glass/location/LocationService;->getClientName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/google/glass/location/LocationService$4;

    invoke-direct {v6, p0, v4}, Lcom/google/glass/location/LocationService$4;-><init>(Lcom/google/glass/location/LocationService;I)V

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    iget-object v5, p0, Lcom/google/glass/location/LocationService;->lastKnownLocations:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 302
    .local v2, location:Landroid/location/Location;
    const/4 v5, -0x1

    invoke-direct {p0, v4, v5, v2}, Lcom/google/glass/location/LocationService;->sendLocationMessage(IILandroid/location/Location;)V

    goto :goto_1

    .line 296
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #location:Landroid/location/Location;
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/glass/location/LocationService;->onClientDisconnected(Ljava/lang/Integer;)V

    goto :goto_0

    .line 304
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private handleRemoveUpdates(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/location/LocationRequest;->fromBundle(Landroid/os/Bundle;)Lcom/google/glass/location/LocationRequest;

    move-result-object v1

    .line 319
    .local v1, request:Lcom/google/glass/location/LocationRequest;
    if-nez v1, :cond_0

    .line 320
    sget-object v2, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    const-string v3, "Malformed removeUpdates message!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    return-void

    .line 324
    :cond_0
    sget-object v2, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 326
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v2, v1}, Lcom/google/glass/location/LocationRequest;->matchesListener(Lcom/google/glass/location/LocationRequest;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 325
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 330
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->onListenersChanged()V

    goto :goto_0
.end method

.method private handleRequestUpdates(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/location/LocationRequest;->fromBundle(Landroid/os/Bundle;)Lcom/google/glass/location/LocationRequest;

    move-result-object v0

    .line 308
    .local v0, request:Lcom/google/glass/location/LocationRequest;
    if-nez v0, :cond_0

    .line 309
    sget-object v1, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    const-string v2, "Malformed requestUpdates message!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    sget-object v1, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/glass/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->onListenersChanged()V

    goto :goto_0
.end method

.method private static hasSameRequestParameters(Lcom/google/glass/location/LocationRequest;Lcom/google/glass/location/LocationRequest;)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 549
    if-ne p0, p1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 553
    goto :goto_0

    .line 555
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private isLocalGpsLocationStale()Z
    .locals 6

    .prologue
    .line 561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 562
    .local v0, now:J
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-wide v2, v2, Lcom/google/glass/location/LocationService$RequestState;->lastLocationTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isLocalNetworkLocationStale()Z
    .locals 6

    .prologue
    .line 566
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 567
    .local v0, now:J
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-wide v2, v2, Lcom/google/glass/location/LocationService$RequestState;->lastLocationTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isStale(Landroid/location/Location;)Z
    .locals 8
    .parameter "location"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 572
    .local v0, now:J
    const-string v4, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 573
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x4e20

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 573
    goto :goto_0

    .line 574
    :cond_2
    const-string v4, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 575
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private onClientDisconnected(Ljava/lang/Integer;)V
    .locals 5
    .parameter "pid"

    .prologue
    .line 401
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 402
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/glass/location/LocationService;->getClientName(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->clientNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 406
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getPid()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 407
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 405
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 410
    :cond_1
    sget-object v2, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnected from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remaining listeners)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->onListenersChanged()V

    .line 412
    return-void
.end method

.method private onListenersChanged()V
    .locals 1

    .prologue
    .line 428
    const-string v0, "gps"

    invoke-direct {p0, v0}, Lcom/google/glass/location/LocationService;->getCombinedRequest(Ljava/lang/String;)Lcom/google/glass/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    .line 429
    const-string v0, "network"

    invoke-direct {p0, v0}, Lcom/google/glass/location/LocationService;->getCombinedRequest(Ljava/lang/String;)Lcom/google/glass/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    .line 430
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->updateLocationRequests()V

    .line 431
    return-void
.end method

.method private postOnClientDisconnected(Ljava/lang/Integer;)V
    .locals 2
    .parameter "pid"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/location/LocationService$5;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/location/LocationService$5;-><init>(Lcom/google/glass/location/LocationService;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    return-void
.end method

.method private sendLocationMessage(IILandroid/location/Location;)V
    .locals 3
    .parameter "pid"
    .parameter "listenerId"
    .parameter "location"

    .prologue
    .line 378
    const/4 v1, 0x0

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 379
    .local v0, message:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 380
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/glass/location/LocationService;->sendMessage(Ljava/lang/Integer;Landroid/os/Message;)V

    .line 382
    return-void
.end method

.method private sendLocationMessage(Lcom/google/glass/location/LocationRequest;Landroid/location/Location;)V
    .locals 2
    .parameter "request"
    .parameter "location"

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/google/glass/location/LocationRequest;->getPid()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/glass/location/LocationRequest;->getListenerId()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/glass/location/LocationService;->sendLocationMessage(IILandroid/location/Location;)V

    .line 375
    return-void
.end method

.method private sendMessage(Ljava/lang/Integer;Landroid/os/Message;)V
    .locals 5
    .parameter "targetPid"
    .parameter "msg"

    .prologue
    .line 385
    iget-object v2, p0, Lcom/google/glass/location/LocationService;->outgoing:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 386
    .local v1, messenger:Landroid/os/Messenger;
    if-nez v1, :cond_0

    .line 387
    sget-object v2, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No messenger for pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_0
    return-void

    .line 392
    :cond_0
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 395
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService;->onClientDisconnected(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private updateLocationRequests()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 439
    const/4 v6, 0x0

    .line 442
    .local v6, changed:Z
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GPS_ENABLE_LOCAL:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v1, v1, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    invoke-static {v0, v1}, Lcom/google/glass/location/LocationService;->hasSameRequestParameters(Lcom/google/glass/location/LocationRequest;Lcom/google/glass/location/LocationRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 446
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 447
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v4

    iget-object v5, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 451
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    iput-object v1, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 454
    const/4 v6, 0x1

    .line 458
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->isLocalGpsLocationStale()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v7, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    .line 459
    .local v7, remoteGpsRequest:Lcom/google/glass/location/LocationRequest;
    :goto_0
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GPS_ENABLE_REMOTE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    invoke-static {v7, v0}, Lcom/google/glass/location/LocationService;->hasSameRequestParameters(Lcom/google/glass/location/LocationRequest;Lcom/google/glass/location/LocationRequest;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "gps"

    invoke-interface {v0, v1}, Lcom/google/glass/location/LocationProxy;->removeLocationUpdates(Ljava/lang/String;)V

    .line 463
    if-eqz v7, :cond_2

    .line 464
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->combinedGpsRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v4

    move v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/google/glass/location/LocationProxy;->requestLocationUpdates(Ljava/lang/String;JFZ)V

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v7, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 468
    const/4 v6, 0x1

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v1, v1, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    invoke-static {v0, v1}, Lcom/google/glass/location/LocationService;->hasSameRequestParameters(Lcom/google/glass/location/LocationRequest;Lcom/google/glass/location/LocationRequest;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 474
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localNetworkListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 475
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    if-eqz v0, :cond_4

    .line 476
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v2, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v4

    iget-object v5, p0, Lcom/google/glass/location/LocationService;->localNetworkListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    iput-object v1, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 481
    const/4 v6, 0x1

    .line 485
    :cond_5
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->isLocalNetworkLocationStale()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v8, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    .line 487
    .local v8, remoteNetworkRequest:Lcom/google/glass/location/LocationRequest;
    :goto_1
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    invoke-static {v8, v0}, Lcom/google/glass/location/LocationService;->hasSameRequestParameters(Lcom/google/glass/location/LocationRequest;Lcom/google/glass/location/LocationRequest;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 489
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "network"

    invoke-interface {v0, v1}, Lcom/google/glass/location/LocationProxy;->removeLocationUpdates(Ljava/lang/String;)V

    .line 490
    if-eqz v8, :cond_6

    .line 491
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "network"

    iget-object v2, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/location/LocationService;->combinedNetworkRequest:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v4}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v4

    move v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/google/glass/location/LocationProxy;->requestLocationUpdates(Ljava/lang/String;JFZ)V

    .line 494
    :cond_6
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v8, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 495
    const/4 v6, 0x1

    .line 498
    :cond_7
    if-eqz v6, :cond_8

    .line 499
    sget-object v1, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requests Updated:  localGps:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    if-nez v0, :cond_b

    const-string v0, "OFF"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " remoteGps:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    if-nez v0, :cond_c

    const-string v0, "OFF"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " localNetwork:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    if-nez v0, :cond_d

    const-string v0, "OFF"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " remoteNetwork:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iget-object v0, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    if-nez v0, :cond_e

    const-string v0, "OFF"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_8
    return-void

    .end local v7           #remoteGpsRequest:Lcom/google/glass/location/LocationRequest;
    .end local v8           #remoteNetworkRequest:Lcom/google/glass/location/LocationRequest;
    :cond_9
    move-object v7, v9

    .line 458
    goto/16 :goto_0

    .restart local v7       #remoteGpsRequest:Lcom/google/glass/location/LocationRequest;
    :cond_a
    move-object v8, v9

    .line 485
    goto/16 :goto_1

    .line 499
    .restart local v8       #remoteNetworkRequest:Lcom/google/glass/location/LocationRequest;
    :cond_b
    const-string v0, "ON"

    goto :goto_2

    :cond_c
    const-string v0, "ON"

    goto :goto_3

    :cond_d
    const-string v0, "ON"

    goto :goto_4

    :cond_e
    const-string v0, "ON"

    goto :goto_5
.end method


# virtual methods
.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nCurrent Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 591
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/glass/location/LocationService;->connectedToCompanion:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 593
    const-string v4, "\nClient Processes:\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 594
    iget-object v4, p0, Lcom/google/glass/location/LocationService;->clientNames:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 595
    .local v2, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 590
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 598
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v4, "\nListeners:\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 599
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/location/LocationService;->requests:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 603
    :cond_1
    const-string v4, "\nLast Known Locations:\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 604
    iget-object v4, p0, Lcom/google/glass/location/LocationService;->lastKnownLocations:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 605
    .local v3, provider:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/location/LocationService;->lastKnownLocations:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 608
    .end local v3           #provider:Ljava/lang/String;
    :cond_2
    const-string v4, "\nState:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 609
    const-string v4, "\n  Local GPS:      "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/location/LocationService;->localGpsState:Lcom/google/glass/location/LocationService$RequestState;

    invoke-virtual {v5}, Lcom/google/glass/location/LocationService$RequestState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 610
    const-string v4, "\n  Remote GPS:     "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    invoke-virtual {v5}, Lcom/google/glass/location/LocationService$RequestState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 611
    const-string v4, "\n  Local Network:  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/location/LocationService;->localNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    invoke-virtual {v5}, Lcom/google/glass/location/LocationService$RequestState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 612
    const-string v4, "\n  Remote Network: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    invoke-virtual {v5}, Lcom/google/glass/location/LocationService$RequestState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 613
    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    monitor-exit p0

    return-void
.end method

.method public handleCompanionDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 256
    sget-object v0, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "onCompanionDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/location/LocationService;->connectedToCompanion:Z

    .line 258
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteGpsState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v2, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 259
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteNetworkState:Lcom/google/glass/location/LocationService$RequestState;

    iput-object v2, v0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    .line 260
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 183
    sget-object v0, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->incoming:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCompanionConnected()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/location/LocationService$2;

    invoke-direct {v1, p0}, Lcom/google/glass/location/LocationService$2;-><init>(Lcom/google/glass/location/LocationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method public onCompanionDisconnected()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/location/LocationService$3;

    invoke-direct {v1, p0}, Lcom/google/glass/location/LocationService$3;-><init>(Lcom/google/glass/location/LocationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sput-object p0, Lcom/google/glass/location/LocationService;->runningInstance:Lcom/google/glass/location/LocationService;

    .line 191
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 193
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/glass/location/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    .line 194
    invoke-direct {p0}, Lcom/google/glass/location/LocationService;->updateLocationRequests()V

    .line 195
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    sget-object v0, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sput-object v2, Lcom/google/glass/location/LocationService;->runningInstance:Lcom/google/glass/location/LocationService;

    .line 203
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "gps"

    invoke-interface {v0, v1}, Lcom/google/glass/location/LocationProxy;->removeLocationUpdates(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    const-string v1, "network"

    invoke-interface {v0, v1}, Lcom/google/glass/location/LocationProxy;->removeLocationUpdates(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    invoke-interface {v0, v2}, Lcom/google/glass/location/LocationProxy;->setLocationListener(Landroid/location/LocationListener;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 209
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localGpsListener:Lcom/google/glass/location/LocationService$LocalLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 210
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->localNetworkListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 212
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 213
    return-void
.end method

.method public setLocationProxy(Lcom/google/glass/location/LocationProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 217
    sget-object v0, Lcom/google/glass/location/LocationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object p1, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    .line 219
    iget-object v0, p0, Lcom/google/glass/location/LocationService;->remoteProvider:Lcom/google/glass/location/LocationProxy;

    iget-object v1, p0, Lcom/google/glass/location/LocationService;->remoteLocationListener:Landroid/location/LocationListener;

    invoke-interface {v0, v1}, Lcom/google/glass/location/LocationProxy;->setLocationListener(Landroid/location/LocationListener;)V

    .line 220
    return-void
.end method
