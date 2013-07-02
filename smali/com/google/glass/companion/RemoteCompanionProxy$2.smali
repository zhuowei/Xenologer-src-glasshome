.class Lcom/google/glass/companion/RemoteCompanionProxy$2;
.super Ljava/lang/Object;
.source "RemoteCompanionProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/RemoteCompanionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 112
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$000()Ljava/lang/String;

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

    .line 113
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {p2}, Lcom/google/glass/companion/IRemoteCompanionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/companion/IRemoteCompanionService;

    move-result-object v1

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$502(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;

    .line 114
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$700(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;
    invoke-static {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$600(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #calls: Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 117
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 101
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$000()Ljava/lang/String;

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

    .line 102
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$502(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;

    .line 103
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$700(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;
    invoke-static {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$600(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$102(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 107
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #calls: Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 108
    return-void
.end method
