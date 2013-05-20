.class Lcom/google/glass/util/WifiHelper$4;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "WifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/WifiHelper;->createConnectivityReceiver(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/WifiHelper;

.field final synthetic val$callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;


# direct methods
.method constructor <init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper$4;->this$0:Lcom/google/glass/util/WifiHelper;

    iput-object p2, p0, Lcom/google/glass/util/WifiHelper$4;->val$callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/util/WifiHelper;->access$100()Ljava/lang/String;

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
    .line 404
    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$4;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connectivity receiver received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 406
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$4;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiManager claims we are connected to wifi."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper$4;->this$0:Lcom/google/glass/util/WifiHelper;

    #getter for: Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/google/glass/util/WifiHelper;->access$200(Lcom/google/glass/util/WifiHelper;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/google/glass/util/WifiHelper$4;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectivityManager agrees with WifiManager, progressing..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper$4;->this$0:Lcom/google/glass/util/WifiHelper;

    #calls: Lcom/google/glass/util/WifiHelper;->cancelTimeout()V
    invoke-static {v1}, Lcom/google/glass/util/WifiHelper;->access$300(Lcom/google/glass/util/WifiHelper;)V

    .line 417
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper$4;->this$0:Lcom/google/glass/util/WifiHelper;

    #calls: Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V
    invoke-static {v1}, Lcom/google/glass/util/WifiHelper;->access$400(Lcom/google/glass/util/WifiHelper;)V

    .line 418
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper$4;->val$callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    invoke-interface {v1}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnected()V

    .line 421
    :cond_0
    return-void
.end method
