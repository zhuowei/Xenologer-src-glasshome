.class Lcom/google/glass/util/InetConnectionState$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/InetConnectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/InetConnectionState;


# direct methods
.method constructor <init>(Lcom/google/glass/util/InetConnectionState;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/glass/util/InetConnectionState$1;->this$0:Lcom/google/glass/util/InetConnectionState;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/util/InetConnectionState;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/connectivityReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    iget-object v3, p0, Lcom/google/glass/util/InetConnectionState$1;->this$0:Lcom/google/glass/util/InetConnectionState;

    invoke-virtual {v3}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v1

    .line 45
    .local v1, isConnected:Z
    iget-object v3, p0, Lcom/google/glass/util/InetConnectionState$1;->this$0:Lcom/google/glass/util/InetConnectionState;

    #getter for: Lcom/google/glass/util/InetConnectionState;->prevState:Z
    invoke-static {v3}, Lcom/google/glass/util/InetConnectionState;->access$000(Lcom/google/glass/util/InetConnectionState;)Z

    move-result v3

    if-ne v1, v3, :cond_1

    .line 53
    :cond_0
    return-void

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/google/glass/util/InetConnectionState$1;->this$0:Lcom/google/glass/util/InetConnectionState;

    #setter for: Lcom/google/glass/util/InetConnectionState;->prevState:Z
    invoke-static {v3, v1}, Lcom/google/glass/util/InetConnectionState;->access$002(Lcom/google/glass/util/InetConnectionState;Z)Z

    .line 50
    iget-object v3, p0, Lcom/google/glass/util/InetConnectionState$1;->this$0:Lcom/google/glass/util/InetConnectionState;

    #getter for: Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/util/InetConnectionState;->access$100(Lcom/google/glass/util/InetConnectionState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/InetConnectionState$Listener;

    .line 51
    .local v2, listener:Lcom/google/glass/util/InetConnectionState$Listener;
    invoke-interface {v2, v1}, Lcom/google/glass/util/InetConnectionState$Listener;->onConnectivityChanged(Z)V

    goto :goto_0
.end method
