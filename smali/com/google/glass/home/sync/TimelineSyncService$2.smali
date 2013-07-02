.class Lcom/google/glass/home/sync/TimelineSyncService$2;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "TimelineSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/sync/TimelineSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/sync/TimelineSyncService;


# direct methods
.method constructor <init>(Lcom/google/glass/home/sync/TimelineSyncService;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/glass/home/sync/TimelineSyncService$2;->this$0:Lcom/google/glass/home/sync/TimelineSyncService;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/sync/TimelineSyncService;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/connectivityChangeReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncService$2;->this$0:Lcom/google/glass/home/sync/TimelineSyncService;

    #getter for: Lcom/google/glass/home/sync/TimelineSyncService;->wifiHelper:Lcom/google/glass/util/WifiHelper;
    invoke-static {v0}, Lcom/google/glass/home/sync/TimelineSyncService;->access$200(Lcom/google/glass/home/sync/TimelineSyncService;)Lcom/google/glass/util/WifiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/sync/TimelineSyncService$2;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Caught wifi disconnection, notifying sync adapter to cancel opportunistic upload."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/google/glass/home/sync/TimelineSyncService;->access$000()Lcom/google/glass/home/sync/TimelineSyncAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/sync/TimelineSyncAdapter;->cancelOpportunisticUpload()V

    .line 59
    :cond_0
    return-void
.end method
