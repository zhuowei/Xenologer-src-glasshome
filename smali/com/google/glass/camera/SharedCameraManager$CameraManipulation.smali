.class abstract Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;
.super Ljava/lang/Object;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/SharedCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CameraManipulation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraManager;


# direct methods
.method private constructor <init>(Lcom/google/glass/camera/SharedCameraManager;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;-><init>(Lcom/google/glass/camera/SharedCameraManager;)V

    return-void
.end method


# virtual methods
.method public enqueue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutorLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$500(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "Ignoring camera manipulation request, because the executor is locked."

    invoke-static {v1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$600(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "Ignoring camera manipulation request, because the executor has been shut down."

    invoke-static {v1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$600(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation$1;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation$1;-><init>(Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public abstract onExecute()V
.end method
