.class public Lcom/google/glass/location/LocationDelivery;
.super Ljava/lang/Object;
.source "LocationDelivery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/location/LocationDelivery$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/location/LocationDelivery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/LocationDelivery;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static deliver(Lcom/google/glass/companion/Proto$LocationMessage;Landroid/location/LocationListener;)V
    .locals 3
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    sget-object v1, Lcom/google/glass/location/LocationDelivery;->TAG:Ljava/lang/String;

    const-string v2, "Dropping location message because we have no location listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, provider:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    sget-object v1, Lcom/google/glass/location/LocationDelivery;->TAG:Ljava/lang/String;

    const-string v2, "Dropping location message because it has no provider."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :cond_1
    sget-object v1, Lcom/google/glass/location/LocationDelivery$1;->$SwitchMap$com$google$glass$companion$Proto$LocationMessage$MessageType:[I

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getType()Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 34
    :pswitch_0
    invoke-static {p0}, Lcom/google/glass/location/LocationDelivery;->parseLocation(Lcom/google/glass/companion/Proto$LocationMessage;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 38
    :pswitch_1
    invoke-interface {p1, v0}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getStatus()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseLocation(Lcom/google/glass/companion/Proto$LocationMessage;)Landroid/location/Location;
    .locals 5
    .parameter "message"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getLocation()Lcom/google/glass/companion/Proto$Location;

    move-result-object v2

    .line 53
    .local v2, proto:Lcom/google/glass/companion/Proto$Location;
    new-instance v1, Landroid/location/Location;

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, location:Landroid/location/Location;
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 55
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 56
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 59
    :cond_0
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setAltitude(D)V

    .line 62
    :cond_1
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getBearing()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/Location;->setBearing(F)V

    .line 65
    :cond_2
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getSpeed()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/Location;->setSpeed(F)V

    .line 68
    :cond_3
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasTime()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 69
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setTime(J)V

    .line 71
    :cond_4
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasSatellitesUsedInFix()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasVisibleSatellites()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasLevelId()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasLevelNumberE3()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->hasReceiver()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 73
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, extras:Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasSatellitesUsedInFix()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 75
    const-string v3, "satellites"

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getSatellitesUsedInFix()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    :cond_6
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasVisibleSatellites()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 78
    const-string v3, "visible_satellites"

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getVisibleSatellites()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    :cond_7
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasLevelId()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 81
    const-string v3, "levelId"

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getLevelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_8
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasLevelNumberE3()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 84
    const-string v3, "levelNumberE3"

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getLevelNumberE3()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    :cond_9
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->hasReceiver()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 87
    const-string v3, "receiver"

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getReceiver()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_a
    invoke-virtual {v1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 91
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_b
    return-object v1
.end method
