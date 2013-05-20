.class Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;
.super Landroid/os/AsyncTask;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->onPictureTaken([BLandroid/hardware/Camera;)V
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
.field final synthetic this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->val$data:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 361
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 368
    .local v0, saveJpegTimeMillis:J
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

    iget-object v2, v2, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->picture:Lcom/google/glass/camera/Picture;
    invoke-static {v2}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1000(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/Picture;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager;->access$1200(Lcom/google/glass/camera/SharedCameraManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->val$data:[B

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/camera/Picture;->saveJpeg(Landroid/content/Context;[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

    iget-object v2, v2, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v2}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v2

    const-string v3, "Failed to save the picture."

    #calls: Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/glass/camera/SharedCameraManager;->access$2100(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 384
    :goto_0
    return-object v8

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

    iget-object v2, v2, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v2}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving the JPEG took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

    iget-object v2, v2, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v2}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

    iget-object v2, v2, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v2}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->picture:Lcom/google/glass/camera/Picture;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1000(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/Picture;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/SharedCameraClient;->dispatchPictureSaved(Lcom/google/glass/camera/Picture;)V

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

    iget-object v2, v2, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v2}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Taking the picture took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;

    iget-object v6, v6, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->requestTimeMillis:J
    invoke-static {v6}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1400(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms total."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_0
.end method
