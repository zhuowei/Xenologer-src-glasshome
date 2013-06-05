.class public Lcom/google/glass/location/CompanionLocationProxy;
.super Ljava/lang/Object;
.source "CompanionLocationProxy.java"

# interfaces
.implements Lcom/google/glass/location/LocationProxy;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private locationListener:Landroid/location/LocationListener;

.field private messenger:Landroid/os/Messenger;

.field private final remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/location/CompanionLocationProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/CompanionLocationProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 2
    .parameter "remoteCompanionProxy"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/location/CompanionLocationProxy$1;

    invoke-direct {v1, p0}, Lcom/google/glass/location/CompanionLocationProxy$1;-><init>(Lcom/google/glass/location/CompanionLocationProxy;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/location/CompanionLocationProxy;->messenger:Landroid/os/Messenger;

    .line 43
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 44
    iput-object p1, p0, Lcom/google/glass/location/CompanionLocationProxy;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/location/CompanionLocationProxy;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/location/CompanionLocationProxy;->locationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/location/CompanionLocationProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private sendLocationRequest(Lcom/google/glass/companion/Proto$LocationRequest;)V
    .locals 3
    .parameter "req"

    .prologue
    .line 79
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 80
    iget-object v1, p0, Lcom/google/glass/location/CompanionLocationProxy;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/location/CompanionLocationProxy;->messenger:Landroid/os/Messenger;

    invoke-static {v1, v2}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/glass/location/CompanionLocationProxy;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v1, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    .line 88
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v1, Lcom/google/glass/location/CompanionLocationProxy;->TAG:Ljava/lang/String;

    const-string v2, "CompanionConnection is not present"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public removeLocationUpdates(Ljava/lang/String;)V
    .locals 4
    .parameter "provider"

    .prologue
    .line 69
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 70
    sget-object v1, Lcom/google/glass/location/CompanionLocationProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing location updates: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->STOP_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setType(Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setProvider(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->build()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    .line 75
    .local v0, req:Lcom/google/glass/companion/Proto$LocationRequest;
    invoke-direct {p0, v0}, Lcom/google/glass/location/CompanionLocationProxy;->sendLocationRequest(Lcom/google/glass/companion/Proto$LocationRequest;)V

    .line 76
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFZ)V
    .locals 4
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "sendLastKnownLocation"

    .prologue
    .line 55
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 56
    sget-object v1, Lcom/google/glass/location/CompanionLocationProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting location updates: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->newBuilder()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->START_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setType(Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setProvider(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setMinTime(J)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setMinDistance(F)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setSendLastKnownLocation(Z)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->build()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    .line 64
    .local v0, req:Lcom/google/glass/companion/Proto$LocationRequest;
    invoke-direct {p0, v0}, Lcom/google/glass/location/CompanionLocationProxy;->sendLocationRequest(Lcom/google/glass/companion/Proto$LocationRequest;)V

    .line 65
    return-void
.end method

.method public setLocationListener(Landroid/location/LocationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/location/CompanionLocationProxy;->locationListener:Landroid/location/LocationListener;

    .line 50
    return-void
.end method
