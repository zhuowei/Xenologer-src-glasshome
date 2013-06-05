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
    .line 361
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #getter for: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1300(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)Lcom/google/glass/camera/SharedCameraClient;

    move-result-object v0

    const-string v1, "Google camera capture complete."

    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest$3;->this$1:Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    #calls: Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->allowPictureRequestToContinue()V
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->access$1800(Lcom/google/glass/camera/SharedCameraManager$PictureRequest;)V

    .line 367
    return-void
.end method
