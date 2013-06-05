.class public Lcom/google/glass/home/settings/GpsDebugSettingsItemView;
.super Lcom/google/glass/home/settings/SettingsCard;
.source "GpsDebugSettingsItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final locationListener:Landroid/location/LocationListener;

.field private final locationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/settings/GpsDebugSettingsItemView$1;-><init>(Lcom/google/glass/home/settings/GpsDebugSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;->locationListener:Landroid/location/LocationListener;

    .line 52
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;->locationManager:Landroid/location/LocationManager;

    .line 53
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onLoad()V
    .locals 6

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Requesting location updates."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 60
    return-void
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Removing location updates."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/home/settings/GpsDebugSettingsItemView;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 66
    invoke-super {p0}, Lcom/google/glass/home/settings/SettingsCard;->onUnload()V

    .line 67
    return-void
.end method
