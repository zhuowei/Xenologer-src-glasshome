.class Lcom/google/glass/camera/SharedCameraService$5;
.super Lcom/google/glass/util/SerialAsyncTask;
.source "SharedCameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraService;->shutDown(Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraService;

.field final synthetic val$shouldRestartSharedCamera:Z


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraService$5;->this$0:Lcom/google/glass/camera/SharedCameraService;

    iput-boolean p2, p0, Lcom/google/glass/camera/SharedCameraService$5;->val$shouldRestartSharedCamera:Z

    invoke-direct {p0}, Lcom/google/glass/util/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 545
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/SharedCameraService$5;->serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 556
    invoke-virtual {p0}, Lcom/google/glass/camera/SharedCameraService$5;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    :goto_0
    return-object v2

    .line 560
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shutting down the shared camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$5;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager;->shutDown()V

    goto :goto_0
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 545
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/SharedCameraService$5;->serialOnPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected serialOnPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$5;->this$0:Lcom/google/glass/camera/SharedCameraService;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraService;->access$302(Lcom/google/glass/camera/SharedCameraService;Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/SharedCameraManager;

    .line 571
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$5;->this$0:Lcom/google/glass/camera/SharedCameraService;

    const/4 v1, 0x0

    #calls: Lcom/google/glass/camera/SharedCameraService;->sendLockIntent(Z)V
    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraService;->access$900(Lcom/google/glass/camera/SharedCameraService;Z)V

    .line 574
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$5;->this$0:Lcom/google/glass/camera/SharedCameraService;

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraService;->stopSelf()V

    .line 576
    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraService$5;->val$shouldRestartSharedCamera:Z

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$5;->this$0:Lcom/google/glass/camera/SharedCameraService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.PRELOAD_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/SharedCameraService;->sendBroadcast(Landroid/content/Intent;)V

    .line 580
    :cond_0
    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$5;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 549
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Already shut down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/SharedCameraService$5;->cancel(Z)Z

    .line 552
    :cond_0
    return-void
.end method
