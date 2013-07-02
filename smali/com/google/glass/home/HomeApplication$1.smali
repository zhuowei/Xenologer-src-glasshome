.class Lcom/google/glass/home/HomeApplication$1;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 86
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 97
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/glass/location/LocationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {}, Lcom/google/glass/location/LocationService;->getRunningInstance()Lcom/google/glass/location/LocationService;

    move-result-object v1

    #setter for: Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;
    invoke-static {v0, v1}, Lcom/google/glass/home/HomeApplication;->access$102(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/location/LocationService;)Lcom/google/glass/location/LocationService;

    .line 100
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    #getter for: Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$100(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/LocationService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    #getter for: Lcom/google/glass/home/HomeApplication;->companionLocationProxy:Lcom/google/glass/location/CompanionLocationProxy;
    invoke-static {v1}, Lcom/google/glass/home/HomeApplication;->access$200(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/CompanionLocationProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/location/LocationService;->setLocationProxy(Lcom/google/glass/location/LocationProxy;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 89
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/glass/location/LocationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;
    invoke-static {v0, v1}, Lcom/google/glass/home/HomeApplication;->access$102(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/location/LocationService;)Lcom/google/glass/location/LocationService;

    .line 93
    :cond_0
    return-void
.end method
