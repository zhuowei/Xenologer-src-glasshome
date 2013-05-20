.class public abstract Lcom/google/glass/camera/SharedCameraClient;
.super Ljava/lang/Object;
.source "SharedCameraClient.java"


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private final destroyedPreviewSurfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private isPreviewSurfaceValid:Z

.field private isUsingViewfinder:Z

.field private final previewSurfaceAvailableCondition:Ljava/util/concurrent/locks/Condition;

.field private final previewSurfaceListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private viewfinder:Landroid/view/TextureView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraClient;-><init>(Landroid/os/Handler;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "callbackHandler"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceAvailableCondition:Ljava/util/concurrent/locks/Condition;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->destroyedPreviewSurfaces:Ljava/util/Set;

    .line 63
    new-instance v0, Lcom/google/glass/camera/SharedCameraClient$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraClient$1;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/camera/SharedCameraClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/glass/camera/SharedCameraClient;->isPreviewSurfaceValid:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceAvailableCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraClient;->isUsingViewfinder:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->destroyedPreviewSurfaces:Ljava/util/Set;

    return-object v0
.end method

.method private fadeViewfinder(Z)V
    .locals 2
    .parameter "shouldShow"

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/google/glass/camera/SharedCameraClient;->getViewfinder()Landroid/view/TextureView;

    move-result-object v0

    .line 522
    .local v0, viewfinder:Landroid/view/TextureView;
    if-eqz v0, :cond_0

    .line 523
    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$15;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/glass/camera/SharedCameraClient$15;-><init>(Lcom/google/glass/camera/SharedCameraClient;Landroid/view/TextureView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 533
    :cond_0
    return-void
.end method


# virtual methods
.method dispatchBarcodeFound(Lcom/google/android/libraries/barhopper/Barcode;)V
    .locals 2
    .parameter "barcode"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$9;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$9;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/android/libraries/barhopper/Barcode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    return-void
.end method

.method dispatchCameraAcquired()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$4;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraClient$4;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    return-void
.end method

.method dispatchCameraError(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$7;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$7;-><init>(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    return-void
.end method

.method dispatchCameraReleased()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$5;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraClient$5;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method

.method dispatchCameraShutter()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$6;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraClient$6;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    return-void
.end method

.method dispatchClipletRecorded(Lcom/google/glass/camera/Video;)V
    .locals 2
    .parameter "video"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$14;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$14;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Video;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 483
    return-void
.end method

.method dispatchPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 2
    .parameter "picture"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$3;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Picture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    return-void
.end method

.method dispatchPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 2
    .parameter "picture"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$2;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Picture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method

.method dispatchPreviewFrame([BJ)V
    .locals 2
    .parameter "previewFrame"
    .parameter "captureTimeNanos"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/camera/SharedCameraClient$8;-><init>(Lcom/google/glass/camera/SharedCameraClient;[BJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
.end method

.method dispatchStartPreview()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$10;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraClient$10;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method dispatchStartRecording(Lcom/google/glass/camera/Video;)V
    .locals 2
    .parameter "video"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$12;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$12;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Video;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    return-void
.end method

.method dispatchStopPreview()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$11;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraClient$11;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    return-void
.end method

.method dispatchStopRecording(Lcom/google/glass/camera/Video;ZZ)V
    .locals 2
    .parameter "video"
    .parameter "reachedMaxDuration"
    .parameter "storageFull"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/camera/SharedCameraClient$13;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Video;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 497
    instance-of v1, p1, Lcom/google/glass/camera/SharedCameraClient;

    if-nez v1, :cond_0

    .line 498
    const/4 v1, 0x0

    .line 501
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 500
    check-cast v0, Lcom/google/glass/camera/SharedCameraClient;

    .line 501
    .local v0, c:Lcom/google/glass/camera/SharedCameraClient;
    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraClient;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/camera/SharedCameraClient;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/camera/SharedCameraClient;->releaseDestroyedPreviewSurfaces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 513
    return-void

    .line 511
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public getViewfinder()Landroid/view/TextureView;
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/google/glass/camera/SharedCameraClient;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected isViewfinderValid()Z
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 230
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraClient;->isPreviewSurfaceValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onBarcodeFound(Lcom/google/android/libraries/barhopper/Barcode;)V
    .locals 0
    .parameter "barcode"

    .prologue
    .line 352
    return-void
.end method

.method protected onCameraAcquired()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method protected onCameraError(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 292
    return-void
.end method

.method protected onCameraReleased()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method protected onCameraShutter()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method protected onClipletRecorded(Lcom/google/glass/camera/Video;)V
    .locals 0
    .parameter "video"

    .prologue
    .line 331
    return-void
.end method

.method protected onPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 0
    .parameter "picture"

    .prologue
    .line 272
    return-void
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 0
    .parameter "picture"

    .prologue
    .line 264
    return-void
.end method

.method protected onPreviewFrame([BJ)V
    .locals 0
    .parameter "frame"
    .parameter "captureTimeNanos"

    .prologue
    .line 344
    return-void
.end method

.method protected onStartPreview()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraClient;->fadeViewfinder(Z)V

    .line 297
    return-void
.end method

.method protected onStartRecording(Lcom/google/glass/camera/Video;)V
    .locals 1
    .parameter "video"

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraClient;->fadeViewfinder(Z)V

    .line 311
    return-void
.end method

.method protected onStopPreview()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraClient;->fadeViewfinder(Z)V

    .line 302
    return-void
.end method

.method protected onStopRecording(Lcom/google/glass/camera/Video;ZZ)V
    .locals 1
    .parameter "video"
    .parameter "reachedMaxDuration"
    .parameter "storageFull"

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraClient;->fadeViewfinder(Z)V

    .line 323
    return-void
.end method

.method releaseDestroyedPreviewSurfaces()V
    .locals 4

    .prologue
    .line 172
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 175
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/google/glass/camera/SharedCameraClient;->isUsingViewfinder:Z

    .line 177
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraClient;->destroyedPreviewSurfaces:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 178
    .local v1, surface:Landroid/graphics/SurfaceTexture;
    const-string v2, "Releasing preview surface."

    invoke-static {p0, v2}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #surface:Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 181
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraClient;->destroyedPreviewSurfaces:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 185
    return-void
.end method

.method public setViewfinder(Landroid/view/TextureView;)V
    .locals 2
    .parameter "viewfinder"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 196
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "Ignoring previously set viewfinder."

    invoke-static {p0, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    :goto_0
    return-void

    .line 202
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 207
    :cond_1
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    .line 208
    if-eqz p1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected startUsingViewfinder()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 220
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/camera/SharedCameraClient;->isUsingViewfinder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 224
    return-void

    .line 222
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/glass/camera/SharedCameraClient;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method waitForPreviewSurface(J)Z
    .locals 7
    .parameter "timeoutNanos"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 130
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 133
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    :goto_0
    return v3

    .line 137
    :cond_0
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 139
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    const-string v4, "Preview surface already available."

    invoke-static {p0, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 144
    :cond_1
    :try_start_1
    const-string v5, "Preview surface not available yet. Waiting..."

    invoke-static {p0, v5}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 147
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceAvailableCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v1

    .line 149
    .local v1, timeRemainingNanos:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_2

    .line 150
    const-string v3, "Timed out while waiting for the preview surface."

    invoke-static {p0, v3}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    goto :goto_0

    .line 155
    .end local v1           #timeRemainingNanos:J
    :cond_3
    :try_start_3
    const-string v5, "Preview surface became available."

    invoke-static {p0, v5}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 163
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "Interrupted while waiting for the recording preview surface."

    invoke-static {p0, v3, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method
