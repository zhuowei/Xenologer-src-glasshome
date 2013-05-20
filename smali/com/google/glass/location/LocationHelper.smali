.class public Lcom/google/glass/location/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# static fields
.field public static final FRESHNESS_THRESHOLD_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/location/LocationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/LocationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSatelliteExtras(Landroid/location/Location;Landroid/location/GpsStatus;)V
    .locals 7
    .parameter "location"
    .parameter "status"

    .prologue
    .line 88
    if-eqz p1, :cond_0

    const-string v5, "gps"

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 94
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #extras:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_2
    const/4 v4, 0x0

    .line 98
    .local v4, visibleSatellites:I
    const/4 v3, 0x0

    .line 99
    .local v3, satellitesUsedInFix:I
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    .line 100
    .local v2, satellite:Landroid/location/GpsSatellite;
    add-int/lit8 v4, v4, 0x1

    .line 101
    invoke-virtual {v2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    .end local v2           #satellite:Landroid/location/GpsSatellite;
    :cond_4
    const-string v5, "visible_satellites"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string v5, "satellites"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static getLastKnownLocation()Landroid/location/Location;
    .locals 7

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/location/GlassLocationManager;->getInstance()Lcom/google/glass/location/GlassLocationManager;

    move-result-object v1

    .line 34
    .local v1, locationManager:Lcom/google/glass/location/GlassLocationManager;
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Lcom/google/glass/location/GlassLocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 36
    .local v0, gpsLocation:Landroid/location/Location;
    const-string v3, "network"

    invoke-virtual {v1, v3}, Lcom/google/glass/location/GlassLocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 40
    .local v2, networkLocation:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 41
    sget-object v3, Lcom/google/glass/location/LocationHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPS - accuracy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    if-eqz v2, :cond_1

    .line 45
    sget-object v3, Lcom/google/glass/location/LocationHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network - accuracy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    invoke-static {v0, v2}, Lcom/google/glass/location/LocationHelper;->isBetterThan(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_2

    .end local v0           #gpsLocation:Landroid/location/Location;
    :goto_0
    return-object v0

    .restart local v0       #gpsLocation:Landroid/location/Location;
    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method protected static isBetterThan(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8
    .parameter "a"
    .parameter "b"

    .prologue
    const-wide/32 v6, 0xea60

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    if-nez p0, :cond_1

    move v0, v1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v0, v1

    .line 129
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static toLocationProto(Landroid/location/Location;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 5
    .parameter "location"
    .parameter "source"

    .prologue
    .line 60
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->newBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLatitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLongitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    .line 65
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setAccuracy(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 69
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 70
    const-string v2, "levelId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const-string v2, "levelId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLevelId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 73
    :cond_1
    const-string v2, "levelNumberE3"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    const-string v2, "levelNumberE3"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLevelNumber(F)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 77
    :cond_2
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v2

    return-object v2
.end method
