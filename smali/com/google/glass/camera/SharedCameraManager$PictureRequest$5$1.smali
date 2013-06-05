.class Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;
.super Landroid/os/AsyncTask;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->val$data:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 400
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x0

    .line 404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 407
    .local v5, saveJpegTimeMillis:J
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iget-object v7, v7, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->picture:Lcom/google/glass/camera/PictureWrapper;
    invoke-static {v7}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1000(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/PictureWrapper;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iget-object v8, v8, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v8, v8, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/glass/camera/SharedCameraManager;->access$1200(Lcom/google/glass/camera/SharedCameraManager;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->val$data:[B

    invoke-virtual {v7, v8, v9}, Lcom/google/glass/camera/PictureWrapper;->saveJpeg(Landroid/content/Context;[B)Z

    move-result v7

    if-nez v7, :cond_0

    .line 408
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iget-object v7, v7, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v7}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v7

    const-string v8, "Failed to save the picture."

    #calls: Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/google/glass/camera/SharedCameraManager;->access$2100(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 437
    :goto_0
    return-object v13

    .line 412
    :cond_0
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iget-object v7, v7, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v7}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saving the JPEG took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v7

    if-nez v7, :cond_1

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 420
    .local v2, beforeAwaitTaken:J
    :try_start_0
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iget-object v7, v7, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->pictureTakenDispatched:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v7}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1600(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 425
    .local v0, afterAwaitTaken:J
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iget-object v7, v7, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v7}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Waited "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v0, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms for \"picture taken\" dispatch."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 430
    .end local v0           #afterAwaitTaken:J
    .end local v2           #beforeAwaitTaken:J
    :cond_1
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iget-object v7, v7, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v7}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 431
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iget-object v7, v7, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v7}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iget-object v8, v8, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->picture:Lcom/google/glass/camera/PictureWrapper;
    invoke-static {v8}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1000(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/PictureWrapper;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/glass/camera/SharedCameraClient;->dispatchPictureSaved(Lcom/google/glass/camera/Picture;)V

    .line 434
    :cond_2
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iget-object v7, v7, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v7}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Taking the picture took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;

    iget-object v11, v11, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$5;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->requestTimeMillis:J
    invoke-static {v11}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1400(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms total."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    .restart local v2       #beforeAwaitTaken:J
    :catch_0
    move-exception v4

    .line 422
    .local v4, e:Ljava/lang/InterruptedException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
