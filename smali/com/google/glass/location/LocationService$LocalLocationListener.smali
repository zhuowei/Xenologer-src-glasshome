.class Lcom/google/glass/location/LocationService$LocalLocationListener;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalLocationListener"
.end annotation


# instance fields
.field private gpsStatus:Landroid/location/GpsStatus;

.field final synthetic this$0:Lcom/google/glass/location/LocationService;


# direct methods
.method private constructor <init>(Lcom/google/glass/location/LocationService;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/glass/location/LocationService$LocalLocationListener;->this$0:Lcom/google/glass/location/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/location/LocationService;Lcom/google/glass/location/LocationService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationService$LocalLocationListener;-><init>(Lcom/google/glass/location/LocationService;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/location/LocationService$LocalLocationListener;->this$0:Lcom/google/glass/location/LocationService;

    #getter for: Lcom/google/glass/location/LocationService;->localProvider:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/google/glass/location/LocationService;->access$100(Lcom/google/glass/location/LocationService;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/location/LocationService$LocalLocationListener;->gpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/LocationService$LocalLocationListener;->gpsStatus:Landroid/location/GpsStatus;

    .line 105
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/location/LocationService$LocalLocationListener;->gpsStatus:Landroid/location/GpsStatus;

    invoke-static {p1, v0}, Lcom/google/glass/location/LocationHelper;->addSatelliteExtras(Landroid/location/Location;Landroid/location/GpsStatus;)V

    .line 99
    iget-object v0, p0, Lcom/google/glass/location/LocationService$LocalLocationListener;->this$0:Lcom/google/glass/location/LocationService;

    const/4 v1, 0x1

    #calls: Lcom/google/glass/location/LocationService;->handleLocationChanged(Landroid/location/Location;Z)V
    invoke-static {v0, p1, v1}, Lcom/google/glass/location/LocationService;->access$000(Lcom/google/glass/location/LocationService;Landroid/location/Location;Z)V

    .line 100
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 112
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 110
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 114
    return-void
.end method
