.class Lcom/google/glass/camera/SharedCameraService$4;
.super Lcom/google/glass/util/SerialAsyncTask;
.source "SharedCameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/SerialAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private lockLatch:Ljava/util/concurrent/CountDownLatch;

.field private lockReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraService;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraService;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraService$4;->this$0:Lcom/google/glass/camera/SharedCameraService;

    invoke-direct {p0}, Lcom/google/glass/util/SerialAsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/camera/SharedCameraService$4;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$4;->lockLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method protected varargs serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .parameter "params"

    .prologue
    .line 443
    :try_start_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Waiting for other service instances to shut down..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraService$4;->lockLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$700()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 447
    :goto_0
    return-object v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interrupted while waiting for shutdown."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 409
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/SharedCameraService$4;->serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected serialOnPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "didShutDown"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$4;->lockReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraService$4;->this$0:Lcom/google/glass/camera/SharedCameraService;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 455
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Other service instances failed to shut down."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$4;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #calls: Lcom/google/glass/camera/SharedCameraService;->startUp()V
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$800(Lcom/google/glass/camera/SharedCameraService;)V

    .line 461
    return-void
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 409
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/SharedCameraService$4;->serialOnPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 421
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraService$4;->lockLatch:Ljava/util/concurrent/CountDownLatch;

    .line 422
    new-instance v0, Lcom/google/glass/camera/SharedCameraService$4$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraService$4$1;-><init>(Lcom/google/glass/camera/SharedCameraService$4;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraService$4;->lockReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 437
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$4;->lockReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraService$4;->this$0:Lcom/google/glass/camera/SharedCameraService;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.google.glass.action.CAMERA_LOCK"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    return-void
.end method
