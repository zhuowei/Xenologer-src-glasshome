.class Lcom/google/glass/camera/SharedCameraClient$1;
.super Ljava/lang/Object;
.source "SharedCameraClient.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/SharedCameraClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    const-string v1, "Surface available."

    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    #getter for: Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraClient;->access$000(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/camera/SharedCameraClient;->isPreviewSurfaceValid:Z
    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraClient;->access$102(Lcom/google/glass/camera/SharedCameraClient;Z)Z

    .line 70
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    #getter for: Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceAvailableCondition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraClient;->access$200(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    #getter for: Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraClient;->access$000(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    #getter for: Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraClient;->access$000(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .parameter "surface"

    .prologue
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    const-string v2, "Surface destroyed."

    invoke-static {v1, v2}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    #getter for: Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraClient;->access$000(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    const/4 v2, 0x0

    #setter for: Lcom/google/glass/camera/SharedCameraClient;->isPreviewSurfaceValid:Z
    invoke-static {v1, v2}, Lcom/google/glass/camera/SharedCameraClient;->access$102(Lcom/google/glass/camera/SharedCameraClient;Z)Z

    .line 86
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    #getter for: Lcom/google/glass/camera/SharedCameraClient;->isUsingViewfinder:Z
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraClient;->access$300(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    #getter for: Lcom/google/glass/camera/SharedCameraClient;->destroyedPreviewSurfaces:Ljava/util/Set;
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraClient;->access$400(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    #getter for: Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraClient;->access$000(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    :goto_0
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    #getter for: Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraClient;->access$000(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    #getter for: Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/google/glass/camera/SharedCameraClient;->access$000(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$1;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    const-string v1, "Surface changed."

    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 100
    return-void
.end method
