.class Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;
.super Landroid/os/AsyncTask;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->onPictureTaken([BLandroid/hardware/Camera;)V
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
.field final synthetic this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

.field final synthetic val$data:[B

.field final synthetic val$postviewSize:Lcom/google/glass/camera/Size;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;[BLcom/google/glass/camera/Size;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->val$data:[B

    iput-object p3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->val$postviewSize:Lcom/google/glass/camera/Size;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    .line 299
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->picture:Lcom/google/glass/camera/Picture;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1000(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/Picture;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->val$data:[B

    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->val$postviewSize:Lcom/google/glass/camera/Size;

    iget v5, v5, Lcom/google/glass/camera/Size;->width:I

    iget-object v6, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->val$postviewSize:Lcom/google/glass/camera/Size;

    iget v6, v6, Lcom/google/glass/camera/Size;->height:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/glass/camera/Picture;->saveThumbnail([BII)V

    .line 302
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    iget-object v4, v4, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->picture:Lcom/google/glass/camera/Picture;
    invoke-static {v4}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1000(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/Picture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/camera/SharedCameraClient;->dispatchPictureTaken(Lcom/google/glass/camera/Picture;)V

    .line 306
    :cond_0
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Showing the picture took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    iget-object v7, v7, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

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

    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 313
    .local v1, scanBarcodeTimeMillis:J
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->getBarcodeRecognizer()Lcom/google/glass/barcode/BarcodeRecognizer;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager;->access$1600(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/barcode/BarcodeRecognizer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->val$data:[B

    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->val$postviewSize:Lcom/google/glass/camera/Size;

    iget v5, v5, Lcom/google/glass/camera/Size;->width:I

    iget-object v6, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->val$postviewSize:Lcom/google/glass/camera/Size;

    iget v6, v6, Lcom/google/glass/camera/Size;->height:I

    invoke-interface {v3, v4, v5, v6}, Lcom/google/glass/barcode/BarcodeRecognizer;->recognize([BII)Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v0

    .line 315
    .local v0, barcode:Lcom/google/android/libraries/barhopper/Barcode;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/glass/camera/SharedCameraClient;->dispatchBarcodeFound(Lcom/google/android/libraries/barhopper/Barcode;)V

    .line 318
    :cond_1
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2$1;->this$2:Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;

    iget-object v3, v3, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$2;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v3}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scanning for a barcode took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 321
    const/4 v3, 0x0

    return-object v3
.end method
