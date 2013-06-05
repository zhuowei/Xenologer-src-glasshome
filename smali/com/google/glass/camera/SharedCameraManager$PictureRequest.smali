.class Lcom/google/glass/camera/SharedCameraManager$PictureRequest;
.super Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/SharedCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureRequest"
.end annotation


# instance fields
.field private final client:Lcom/google/glass/camera/SharedCameraClient;

.field private final gcamCaptureComplete:Landroid/hardware/Camera$PictureCallback;

.field private final gcamHqFallbackCaptureComplete:Landroid/hardware/Camera$PictureCallback;

.field private isTakingPicture:Z

.field private final jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private final picture:Lcom/google/glass/camera/PictureWrapper;

.field private final pictureCallbackCondition:Ljava/util/concurrent/locks/Condition;

.field private pictureTakenDispatched:Ljava/util/concurrent/CountDownLatch;

.field private final postviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private final requestTimeMillis:J

.field private shouldTakeCliplet:Z

.field private final shutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private shutterTimeMillis:J

.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraManager;


# direct methods
.method public constructor <init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 3
    .parameter
    .parameter "client"

    .prologue
    const/4 v2, 0x1

    .line 450
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraManager$1;)V

    .line 254
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->pictureTakenDispatched:Ljava/util/concurrent/CountDownLatch;

    .line 257
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->cameraLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$900(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->pictureCallbackCondition:Ljava/util/concurrent/locks/Condition;

    .line 275
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$1;-><init>(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 298
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;-><init>(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->postviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 361
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;-><init>(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->gcamCaptureComplete:Landroid/hardware/Camera$PictureCallback;

    .line 372
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$4;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$4;-><init>(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->gcamHqFallbackCaptureComplete:Landroid/hardware/Camera$PictureCallback;

    .line 383
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;-><init>(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->requestTimeMillis:J

    .line 452
    new-instance v0, Lcom/google/glass/camera/PictureWrapper;

    invoke-direct {v0}, Lcom/google/glass/camera/PictureWrapper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->picture:Lcom/google/glass/camera/PictureWrapper;

    .line 453
    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    .line 454
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->CLIPLET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/glass/camera/SharedCameraClient;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordClipletActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iput-boolean v2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shouldTakeCliplet:Z

    .line 458
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/PictureWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->picture:Lcom/google/glass/camera/PictureWrapper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shutterTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    iput-wide p1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shutterTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->requestTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->pictureTakenDispatched:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->allowPictureRequestToContinue()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shouldTakeCliplet:Z

    return v0
.end method

.method private final allowPictureRequestToContinue()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->lockCamera()V
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$700(Lcom/google/glass/camera/SharedCameraManager;)V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->isTakingPicture:Z

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->pictureCallbackCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->unlockCamera()V
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$800(Lcom/google/glass/camera/SharedCameraManager;)V

    .line 358
    return-void

    .line 356
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->unlockCamera()V
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraManager;->access$800(Lcom/google/glass/camera/SharedCameraManager;)V

    throw v0
.end method


# virtual methods
.method public onExecute()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 462
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v4, "About to take a picture."

    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 464
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->stopRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2200(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 465
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v4, "Failed to stop recording for taking a picture."

    #calls: Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2100(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->acquireCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2300(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 469
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v4, "Failed to acquire the camera for taking a picture."

    #calls: Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2100(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_2
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 475
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->picture:Lcom/google/glass/camera/PictureWrapper;

    invoke-virtual {v3, v6}, Lcom/google/glass/camera/PictureWrapper;->setIsGcam(Z)V

    .line 476
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->startMeteringSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2400(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    .line 477
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager;->access$2500(Lcom/google/glass/camera/SharedCameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->gcamCaptureComplete:Landroid/hardware/Camera$PictureCallback;

    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->gcamHqFallbackCaptureComplete:Landroid/hardware/Camera$PictureCallback;

    invoke-static {v3, v4, v5}, Lcom/google/glass/hidden/HiddenCamera;->setGoogleCameraCaptureFinishCallback(Landroid/hardware/Camera;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 503
    :cond_3
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 504
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v4, "Adding delay for testing."

    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 506
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 512
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager;->access$2500(Lcom/google/glass/camera/SharedCameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->postviewBuffer:[B
    invoke-static {v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2900(Lcom/google/glass/camera/SharedCameraManager;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/glass/hidden/HiddenCamera;->addPostviewCallbackBuffer(Landroid/hardware/Camera;[B)V

    .line 515
    iput-boolean v6, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->isTakingPicture:Z

    .line 517
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager;->access$2500(Lcom/google/glass/camera/SharedCameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->postviewCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 520
    iget-boolean v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shouldTakeCliplet:Z

    if-eqz v3, :cond_5

    .line 521
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->cliplet:Lcom/google/glass/camera/VideoWrapper;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager;->access$2600(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/glass/camera/SharedCameraManager;->access$1200(Lcom/google/glass/camera/SharedCameraManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/VideoWrapper;->stop(Landroid/content/Context;)V

    .line 522
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->cliplet:Lcom/google/glass/camera/VideoWrapper;
    invoke-static {v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2600(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/SharedCameraClient;->dispatchClipletRecorded(Lcom/google/glass/camera/Video;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 529
    :cond_5
    iget-boolean v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shouldTakeCliplet:Z

    if-eqz v3, :cond_6

    .line 530
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #setter for: Lcom/google/glass/camera/SharedCameraManager;->cliplet:Lcom/google/glass/camera/VideoWrapper;
    invoke-static {v3, v8}, Lcom/google/glass/camera/SharedCameraManager;->access$2602(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/VideoWrapper;)Lcom/google/glass/camera/VideoWrapper;

    .line 536
    :cond_6
    :try_start_2
    iget-boolean v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->isTakingPicture:Z

    if-eqz v3, :cond_b

    .line 537
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->pictureCallbackCondition:Ljava/util/concurrent/locks/Condition;

    invoke-static {}, Lcom/google/glass/camera/SharedCameraManager;->access$3100()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v1

    .line 538
    .local v1, timeRemainingNanos:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_6

    .line 539
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v4, "Timed out while taking a picture."

    #calls: Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2100(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 543
    .end local v1           #timeRemainingNanos:J
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v4, "Interrupted while taking a picture."

    #calls: Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v3, v4, v0}, Lcom/google/glass/camera/SharedCameraManager;->access$3000(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 479
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_7
    iget-boolean v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shouldTakeCliplet:Z

    if-eqz v3, :cond_9

    .line 482
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    new-instance v4, Lcom/google/glass/camera/VideoWrapper;

    invoke-direct {v4}, Lcom/google/glass/camera/VideoWrapper;-><init>()V

    #setter for: Lcom/google/glass/camera/SharedCameraManager;->cliplet:Lcom/google/glass/camera/VideoWrapper;
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2602(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/VideoWrapper;)Lcom/google/glass/camera/VideoWrapper;

    .line 483
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->cliplet:Lcom/google/glass/camera/VideoWrapper;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager;->access$2600(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/camera/VideoWrapper;->start()Z

    move-result v3

    if-nez v3, :cond_8

    .line 484
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v4, "Unable to start cliplet video recording."

    #calls: Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2100(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 486
    :cond_8
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recording cliplet to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->cliplet:Lcom/google/glass/camera/VideoWrapper;
    invoke-static {v5}, Lcom/google/glass/camera/SharedCameraManager;->access$2600(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/camera/VideoWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->setClipletParametersSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2700(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 490
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v4, "Failed to set parameters for taking a Cliplet burst."

    #calls: Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2100(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    :cond_9
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->startPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2800(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 497
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v4, "Failed to start the preview for taking a picture."

    #calls: Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$2100(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    :catch_1
    move-exception v0

    .line 508
    .restart local v0       #e:Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v4, "Interrupted while adding delay for testing."

    invoke-static {v3, v4, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 524
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 525
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->isTakingPicture:Z

    .line 526
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v4, "Failed to take a picture."

    #calls: Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v3, v4, v0}, Lcom/google/glass/camera/SharedCameraManager;->access$3000(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 529
    iget-boolean v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shouldTakeCliplet:Z

    if-eqz v3, :cond_0

    .line 530
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #setter for: Lcom/google/glass/camera/SharedCameraManager;->cliplet:Lcom/google/glass/camera/VideoWrapper;
    invoke-static {v3, v8}, Lcom/google/glass/camera/SharedCameraManager;->access$2602(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/VideoWrapper;)Lcom/google/glass/camera/VideoWrapper;

    goto/16 :goto_0

    .line 529
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    iget-boolean v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->shouldTakeCliplet:Z

    if-eqz v4, :cond_a

    .line 530
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #setter for: Lcom/google/glass/camera/SharedCameraManager;->cliplet:Lcom/google/glass/camera/VideoWrapper;
    invoke-static {v4, v8}, Lcom/google/glass/camera/SharedCameraManager;->access$2602(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/VideoWrapper;)Lcom/google/glass/camera/VideoWrapper;

    :cond_a
    throw v3

    .line 549
    :cond_b
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraManager;->access$300(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    goto/16 :goto_0
.end method
