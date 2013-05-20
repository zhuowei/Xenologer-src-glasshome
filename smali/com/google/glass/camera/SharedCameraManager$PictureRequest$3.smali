.class Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;
.super Ljava/lang/Object;
.source "SharedCameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    .line 336
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v7, 0x0

    .line 341
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #calls: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->isGcamCaptureFinished([B)Z
    invoke-static {v1, p1}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1700(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;[B)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shouldTakeCliplet:Z
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1800(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v1, v1, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->lockCamera()V
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraManager;->access$700(Lcom/google/glass/camera/SharedCameraManager;)V

    .line 345
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #setter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->isTakingPicture:Z
    invoke-static {v1, v7}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1902(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;Z)Z

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->pictureCallbackCondition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$2000(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v1, v1, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->unlockCamera()V
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraManager;->access$800(Lcom/google/glass/camera/SharedCameraManager;)V

    .line 401
    :cond_2
    :goto_0
    return-void

    .line 349
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v2, v2, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->unlockCamera()V
    invoke-static {v2}, Lcom/google/glass/camera/SharedCameraManager;->access$800(Lcom/google/glass/camera/SharedCameraManager;)V

    throw v1

    .line 354
    :cond_3
    sget-object v0, Lcom/google/glass/camera/SharedCameraConstants;->PICTURE_SIZE:Lcom/google/glass/camera/Size;

    .line 355
    .local v0, pictureSize:Lcom/google/glass/camera/Size;
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/glass/camera/Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/glass/camera/Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " picture from the camera after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->requestTimeMillis:J
    invoke-static {v5}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1400(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 361
    new-instance v1, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;-><init>(Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;[B)V

    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v2, v2, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v2}, Lcom/google/glass/camera/SharedCameraManager;->access$1500(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 389
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shouldTakeCliplet:Z
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1800(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v1, v1, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->lockCamera()V
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraManager;->access$700(Lcom/google/glass/camera/SharedCameraManager;)V

    .line 394
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #setter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->isTakingPicture:Z
    invoke-static {v1, v7}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1902(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;Z)Z

    .line 396
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->pictureCallbackCondition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$2000(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 398
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v1, v1, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->unlockCamera()V
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraManager;->access$800(Lcom/google/glass/camera/SharedCameraManager;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v2, v2, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->unlockCamera()V
    invoke-static {v2}, Lcom/google/glass/camera/SharedCameraManager;->access$800(Lcom/google/glass/camera/SharedCameraManager;)V

    throw v1
.end method
