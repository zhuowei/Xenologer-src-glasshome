.class Lcom/google/glass/camera/SharedCameraManager$1$1;
.super Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraManager$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/SharedCameraManager$1;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager$1;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$1$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$1;

    iget-object v0, p1, Lcom/google/glass/camera/SharedCameraManager$1;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraManager$1;)V

    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$1$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$1;

    iget-object v0, v0, Lcom/google/glass/camera/SharedCameraManager$1;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->stopPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraManager;->access$100(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    .line 153
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$1$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$1;

    iget-object v0, v0, Lcom/google/glass/camera/SharedCameraManager$1;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->recordingClient:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$200(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "Not releasing the camera after prepare camera timed out, because video is being recorded."

    invoke-static {v1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$1$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$1;

    iget-object v0, v0, Lcom/google/glass/camera/SharedCameraManager$1;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraManager;->access$300(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    goto :goto_0
.end method
