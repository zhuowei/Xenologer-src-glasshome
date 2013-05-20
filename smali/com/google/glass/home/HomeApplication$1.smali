.class Lcom/google/glass/home/HomeApplication$1;
.super Lcom/google/glass/home/companion/CompanionService$SimpleCompanionListener;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-direct {p0}, Lcom/google/glass/home/companion/CompanionService$SimpleCompanionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompanionConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    #getter for: Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/LocationService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    #getter for: Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/location/LocationService;->onCompanionConnected()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    const-string v1, "com.google.glass.location"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onCompanionDisconnected()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    #getter for: Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/LocationService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    #getter for: Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/location/LocationService;->onCompanionDisconnected()V

    .line 79
    :cond_0
    return-void
.end method
