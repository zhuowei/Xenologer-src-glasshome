.class Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastUnderWakeLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/BroadcastUnderWakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakeLockHoldingReceiver"
.end annotation


# instance fields
.field private final wakeLock:Landroid/os/PowerManager$WakeLock;

.field private final wakeLockName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "wakeLockName"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLockName:Ljava/lang/String;

    .line 41
    #calls: Lcom/google/glass/util/BroadcastUnderWakeLock;->getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;
    invoke-static {p1}, Lcom/google/glass/util/BroadcastUnderWakeLock;->access$000(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 45
    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 46
    invoke-direct {p0}, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->acquireLock()V

    .line 47
    return-void
.end method

.method private acquireLock()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring broadcast wakelock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLockName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 52
    return-void
.end method

.method private declared-synchronized releaseLock()V
    .locals 3

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing broadcast wakelock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLockName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->releaseLock()V

    .line 65
    return-void
.end method
