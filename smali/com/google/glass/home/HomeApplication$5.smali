.class Lcom/google/glass/home/HomeApplication$5;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
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
.field private final handler:Landroid/os/Handler;

.field private final registerGcmRunnable:Ljava/lang/Runnable;

.field private retryDelayMs:J

.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 2
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    .line 195
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$400()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/HomeApplication$5;->retryDelayMs:J

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication$5;->handler:Landroid/os/Handler;

    .line 201
    new-instance v0, Lcom/google/glass/home/HomeApplication$5$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/HomeApplication$5$1;-><init>(Lcom/google/glass/home/HomeApplication$5;)V

    iput-object v0, p0, Lcom/google/glass/home/HomeApplication$5;->registerGcmRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/retryGcmRegistrationReceiver"

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
    .line 210
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication$5;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "retry_gcm_register"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-wide v0, p0, Lcom/google/glass/home/HomeApplication$5;->retryDelayMs:J

    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$600()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication$5;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling GCM retry as we\'ve gone past time limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$600()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$5;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$5;->registerGcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$5;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$5;->registerGcmRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/glass/home/HomeApplication$5;->retryDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    iget-wide v0, p0, Lcom/google/glass/home/HomeApplication$5;->retryDelayMs:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/home/HomeApplication$5;->retryDelayMs:J

    goto :goto_0
.end method
