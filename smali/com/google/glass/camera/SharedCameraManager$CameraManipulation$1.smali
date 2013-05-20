.class Lcom/google/glass/camera/SharedCameraManager$CameraManipulation$1;
.super Ljava/lang/Object;
.source "SharedCameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;->enqueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;

    iget-object v0, v0, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->lockCamera()V
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$700(Lcom/google/glass/camera/SharedCameraManager;)V

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;->onExecute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;

    iget-object v0, v0, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->unlockCamera()V
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$800(Lcom/google/glass/camera/SharedCameraManager;)V

    .line 231
    return-void

    .line 229
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;

    iget-object v1, v1, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->unlockCamera()V
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraManager;->access$800(Lcom/google/glass/camera/SharedCameraManager;)V

    throw v0
.end method
