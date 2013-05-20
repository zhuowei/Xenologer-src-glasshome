.class Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;
.super Ljava/lang/Object;
.source "SharedCameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/SharedCameraManager$PictureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 6

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->picture:Lcom/google/glass/camera/Picture;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1000(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/Picture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/Picture;->setCaptureTimeNow()V

    .line 268
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shutterTimeMillis:J
    invoke-static {v0, v1, v2}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1102(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;J)J

    .line 271
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v0, v0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$1200(Lcom/google/glass/camera/SharedCameraManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.camera.action.SHUTTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraClient;->dispatchCameraShutter()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fired shutter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shutterTimeMillis:J
    invoke-static {v2}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1100(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->requestTimeMillis:J
    invoke-static {v4}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1400(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms after request."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 280
    return-void
.end method
