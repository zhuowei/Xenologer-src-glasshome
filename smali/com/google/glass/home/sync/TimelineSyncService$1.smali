.class Lcom/google/glass/home/sync/TimelineSyncService$1;
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
    .line 29
    iput-object p1, p0, Lcom/google/glass/home/sync/TimelineSyncService$1;->this$0:Lcom/google/glass/home/sync/TimelineSyncService;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/sync/TimelineSyncService;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/powerLostReceiver"

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
    .line 32
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/google/glass/home/sync/TimelineSyncService$1;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Caught power disconnection, notifying sync adapter to cancel opportunistic upload."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/google/glass/home/sync/TimelineSyncService;->access$000()Lcom/google/glass/home/sync/TimelineSyncAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/sync/TimelineSyncAdapter;->cancelOpportunisticUpload()V

    .line 40
    :cond_0
    return-void
.end method
