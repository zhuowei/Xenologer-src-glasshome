.class Lcom/google/glass/camera/SharedCameraManager$10;
.super Ljava/lang/Object;
.source "SharedCameraManager.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraManager;->startRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraManager;

.field final synthetic val$client:Lcom/google/glass/camera/SharedCameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$10;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraManager$10;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1248
    const/16 v0, -0x3ef

    if-ne p3, v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$10;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v1, "Canceling video due to ERROR_MALFORMED from MediaRecorder."

    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$10;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->video:Lcom/google/glass/camera/Video;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$3700(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/camera/Video;->cancel()V

    .line 1256
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$10$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraManager$10$1;-><init>(Lcom/google/glass/camera/SharedCameraManager$10;)V

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager$10$1;->enqueue()V

    .line 1270
    :goto_0
    return-void

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$10;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video recorder error (what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraManager;->access$2100(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$10;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraManager;->access$3802(Lcom/google/glass/camera/SharedCameraManager;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    goto :goto_0
.end method
