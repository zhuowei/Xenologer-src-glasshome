.class Lcom/google/glass/home/HomeApplication$2;
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
    .line 91
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 105
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$100()Ljava/lang/String;

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

    .line 106
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/glass/location/LocationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {}, Lcom/google/glass/location/LocationService;->getRunningInstance()Lcom/google/glass/location/LocationService;

    move-result-object v1

    #setter for: Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;
    invoke-static {v0, v1}, Lcom/google/glass/home/HomeApplication;->access$002(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/location/LocationService;)Lcom/google/glass/location/LocationService;

    .line 112
    .end local p2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    #calls: Lcom/google/glass/home/HomeApplication;->onServiceConnected()V
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$400(Lcom/google/glass/home/HomeApplication;)V

    .line 113
    return-void

    .line 108
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    check-cast p2, Lcom/google/glass/home/companion/CompanionService$CompanionBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/google/glass/home/companion/CompanionService$CompanionBinder;->getService()Lcom/google/glass/home/companion/CompanionService;

    move-result-object v1

    #setter for: Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v0, v1}, Lcom/google/glass/home/HomeApplication;->access$202(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionService;

    .line 110
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    #getter for: Lcom/google/glass/home/HomeApplication;->companionState:Lcom/google/glass/home/companion/CompanionState;
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$300(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/home/companion/CompanionState;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    #getter for: Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v1}, Lcom/google/glass/home/HomeApplication;->access$200(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/home/companion/CompanionService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/companion/CompanionState;->update(Lcom/google/glass/home/companion/CompanionService;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$100()Ljava/lang/String;

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

    .line 95
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/glass/location/LocationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    #setter for: Lcom/google/glass/home/HomeApplication;->locationService:Lcom/google/glass/location/LocationService;
    invoke-static {v0, v3}, Lcom/google/glass/home/HomeApplication;->access$002(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/location/LocationService;)Lcom/google/glass/location/LocationService;

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    #setter for: Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v0, v3}, Lcom/google/glass/home/HomeApplication;->access$202(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionService;

    .line 99
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    #getter for: Lcom/google/glass/home/HomeApplication;->companionState:Lcom/google/glass/home/companion/CompanionState;
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$300(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/home/companion/CompanionState;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    #getter for: Lcom/google/glass/home/HomeApplication;->companionService:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v1}, Lcom/google/glass/home/HomeApplication;->access$200(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/home/companion/CompanionService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/companion/CompanionState;->update(Lcom/google/glass/home/companion/CompanionService;)V

    goto :goto_0
.end method
