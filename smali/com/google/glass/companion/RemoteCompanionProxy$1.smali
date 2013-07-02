.class Lcom/google/glass/companion/RemoteCompanionProxy$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "RemoteCompanionProxy.java"


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
    .line 77
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/companionStateListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 80
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-string v1, "com.google.glass.extra.STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$102(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 83
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-string v1, "com.google.glass.extra.COMPANION_REMOTE_VERSION"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$202(Lcom/google/glass/companion/RemoteCompanionProxy;I)I

    .line 84
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-string v1, "com.google.glass.extra.COMPANION_REMOTE_VERSION"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$302(Lcom/google/glass/companion/RemoteCompanionProxy;I)I

    .line 85
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z
    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$100(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", companionRemoteVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I
    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$200(Lcom/google/glass/companion/RemoteCompanionProxy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", companionLocalVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I
    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$300(Lcom/google/glass/companion/RemoteCompanionProxy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #calls: Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 90
    :cond_0
    return-void
.end method
