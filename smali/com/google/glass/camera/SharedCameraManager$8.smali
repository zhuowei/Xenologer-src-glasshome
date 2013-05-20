.class Lcom/google/glass/camera/SharedCameraManager$8;
.super Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraManager;->prepareCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraManager;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager;)V
    .locals 1
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$8;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraManager$1;)V

    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 617
    const-string v0, "About to prepare the camera."

    invoke-static {v1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$8;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->isRecording()Z
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$3400(Lcom/google/glass/camera/SharedCameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    const-string v0, "Not preparing the camera, because video is being recorded."

    invoke-static {v1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 634
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$8;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->acquireCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraManager;->access$2300(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    .line 626
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$8;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->startMeteringSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraManager;->access$2400(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    .line 633
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$8;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->startPrepareCameraTimeout()V
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$3500(Lcom/google/glass/camera/SharedCameraManager;)V

    goto :goto_0

    .line 628
    :cond_2
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->CLIPLET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$8;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->startPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraManager;->access$2700(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    goto :goto_1
.end method
