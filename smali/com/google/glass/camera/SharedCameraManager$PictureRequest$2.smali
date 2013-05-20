.class Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;
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
    .line 284
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 289
    .local v1, postviewTimeMillis:J
    sget-object v0, Lcom/google/glass/camera/SharedCameraConstants;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    .line 290
    .local v0, postviewSize:Lcom/google/glass/camera/Size;
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/google/glass/camera/Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/google/glass/camera/Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " postview from the camera after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->requestTimeMillis:J
    invoke-static {v7}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1400(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 294
    new-instance v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;-><init>(Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;[BLcom/google/glass/camera/Size;)V

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v4, v4, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v4}, Lcom/google/glass/camera/SharedCameraManager;->access$1500(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    return-void
.end method
