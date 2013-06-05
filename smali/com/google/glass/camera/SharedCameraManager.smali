.class Lcom/google/glass/camera/SharedCameraManager;
.super Ljava/lang/Object;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/camera/SharedCameraManager$CameraParameter;,
        Lcom/google/glass/camera/SharedCameraManager$PictureRequest;,
        Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;
    }
.end annotation


# static fields
.field private static final MEDIA_RECORDER_ERROR_MALFORMED:I = -0x3ef

.field private static final MESSAGE_PREPARE_CAMERA_TIMEOUT:I = 0x1

.field private static final NUM_PREVIEW_BUFFERS:I = 0x3

.field private static final PRELOAD_RUN_PREVIEW_MILLIS:J = 0x1f4L

#the value of this static final field might be set in the static constructor
.field private static final PREPARE_TIMEOUT_MILLIS:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final PREVIEW_SURFACE_WAIT_TIMEOUT_NANOS:J = 0x0L

.field private static final RECYCLE_TIMEOUT_SECONDS:J = 0x5L

.field private static final TAG:Ljava/lang/String;

.field private static final TAKE_PICTURE_TIMEOUT_NANOS:J

.field private static final VIDEO_RECORDER_START_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;


# instance fields
.field private barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

.field private camera:Landroid/hardware/Camera;

.field private final cameraLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final cameraManipulationExecutor:Ljava/util/concurrent/ExecutorService;

.field private final cameraManipulationExecutorLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private cliplet:Lcom/google/glass/camera/VideoWrapper;

.field private context:Landroid/content/Context;

.field private invisiblePreviewSurface:Landroid/graphics/SurfaceTexture;

.field private final postviewBuffer:[B

.field private final prepareCameraTimeoutHandler:Landroid/os/Handler;

.field private final previewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private final previewCallbackBuffers:[[B

.field private previewSurfaceTextureName:I

.field private final previewingClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/camera/SharedCameraClient;",
            ">;"
        }
    .end annotation
.end field

.field private final previouslyPreviewingClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/camera/SharedCameraClient;",
            ">;"
        }
    .end annotation
.end field

.field private recordingClient:Lcom/google/glass/camera/SharedCameraClient;

.field private final saveJpegExecutor:Ljava/util/concurrent/ExecutorService;

.field private final savePostviewExecutor:Ljava/util/concurrent/ExecutorService;

.field private video:Lcom/google/glass/camera/VideoWrapper;

.field private videoRecorder:Landroid/media/MediaRecorder;

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    const-class v0, Lcom/google/glass/camera/SharedCameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/SharedCameraManager;->TAG:Ljava/lang/String;

    .line 70
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3c

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/camera/SharedCameraManager;->TAKE_PICTURE_TIMEOUT_NANOS:J

    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/camera/SharedCameraManager;->PREVIEW_SURFACE_WAIT_TIMEOUT_NANOS:J

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/camera/SharedCameraManager;->PREPARE_TIMEOUT_MILLIS:J

    .line 89
    const/16 v0, 0x64

    const-wide/high16 v1, 0x4000

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/RetryStrategy;->exponentialBackoff(IDI)Lcom/google/glass/util/RetryStrategy;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/SharedCameraManager;->VIDEO_RECORDER_START_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

    return-void

    .line 70
    :cond_0
    const-wide/16 v0, 0xa

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v1, 0x3

    invoke-static {}, Lcom/google/glass/camera/SharedCameraManager;->calculatePreviewBufferSize()I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->previewCallbackBuffers:[[B

    .line 109
    invoke-static {}, Lcom/google/glass/camera/SharedCameraManager;->calculatePostviewBufferSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->postviewBuffer:[B

    .line 112
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 130
    new-instance v1, Lcom/google/glass/util/PriorityThreadFactory;

    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/glass/camera/SharedCameraManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cameraManipulationExecutor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutor:Ljava/util/concurrent/ExecutorService;

    .line 137
    new-instance v1, Lcom/google/glass/util/PriorityThreadFactory;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/glass/camera/SharedCameraManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/savePostviewBackgroundExecutor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->savePostviewExecutor:Ljava/util/concurrent/ExecutorService;

    .line 144
    new-instance v1, Lcom/google/glass/util/PriorityThreadFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/glass/camera/SharedCameraManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/saveJpegBackgroundExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->saveJpegExecutor:Ljava/util/concurrent/ExecutorService;

    .line 148
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutorLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 151
    new-instance v1, Lcom/google/glass/camera/SharedCameraManager$1;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraManager$1;-><init>(Lcom/google/glass/camera/SharedCameraManager;)V

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->prepareCameraTimeoutHandler:Landroid/os/Handler;

    .line 184
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;

    .line 188
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->previouslyPreviewingClients:Ljava/util/Set;

    .line 192
    new-instance v1, Lcom/google/glass/camera/SharedCameraManager$2;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraManager$2;-><init>(Lcom/google/glass/camera/SharedCameraManager;)V

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 570
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager;->context:Landroid/content/Context;

    .line 573
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 574
    .local v0, powerManager:Landroid/os/PowerManager;
    const-class v1, Lcom/google/glass/camera/SharedCameraManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 576
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 579
    new-instance v1, Lcom/google/glass/camera/SharedCameraManager$3;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraManager$3;-><init>(Lcom/google/glass/camera/SharedCameraManager;)V

    invoke-virtual {v1}, Lcom/google/glass/camera/SharedCameraManager$3;->enqueue()V

    .line 585
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->stopPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/glass/camera/SharedCameraManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->savePostviewExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/barcode/BarcodeRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->getBarcodeRecognizer()Lcom/google/glass/barcode/BarcodeRecognizer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/SharedCameraClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->recordingClient:Lcom/google/glass/camera/SharedCameraClient;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->saveJpegExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->stopRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->acquireCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->startMeteringSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/google/glass/camera/SharedCameraManager;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/VideoWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->cliplet:Lcom/google/glass/camera/VideoWrapper;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/VideoWrapper;)Lcom/google/glass/camera/VideoWrapper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager;->cliplet:Lcom/google/glass/camera/VideoWrapper;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->setClipletParametersSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->startPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/google/glass/camera/SharedCameraManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->postviewBuffer:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$3100()J
    .locals 2

    .prologue
    .line 60
    sget-wide v0, Lcom/google/glass/camera/SharedCameraManager;->TAKE_PICTURE_TIMEOUT_NANOS:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/google/glass/camera/SharedCameraManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->preloadCameraSynchronously()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->startRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/google/glass/camera/SharedCameraManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->isRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/google/glass/camera/SharedCameraManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->startPrepareCameraTimeout()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;ZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/camera/SharedCameraManager;->stopRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/VideoWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->video:Lcom/google/glass/camera/VideoWrapper;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/google/glass/camera/SharedCameraManager;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutorLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/camera/SharedCameraManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->lockCamera()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/camera/SharedCameraManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->unlockCamera()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private acquireCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 7
    .parameter "client"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 740
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 743
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v5, :cond_0

    .line 775
    :goto_0
    return v3

    .line 747
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->stopRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 748
    goto :goto_0

    .line 751
    :cond_1
    const-string v5, "About to acquire the camera."

    invoke-static {p1, v5}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 752
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 755
    .local v0, acquireCameraTimeMillis:J
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    if-nez v5, :cond_2

    .line 763
    const-string v3, "Failed to acquire the camera."

    invoke-static {p1, v3}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    move v3, v4

    .line 764
    goto :goto_0

    .line 756
    :catch_0
    move-exception v2

    .line 757
    .local v2, e:Ljava/lang/RuntimeException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    .line 758
    const-string v3, "Failed to acquire the camera."

    invoke-static {p1, v3, v2}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    move v3, v4

    .line 759
    goto :goto_0

    .line 768
    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_2
    if-eqz p1, :cond_3

    .line 769
    invoke-virtual {p1}, Lcom/google/glass/camera/SharedCameraClient;->dispatchCameraAcquired()V

    .line 772
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Acquiring the camera took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static applyVideoRecorderParameters(Lcom/google/glass/camera/SharedCameraClient;Landroid/media/MediaRecorder;)V
    .locals 5
    .parameter "client"
    .parameter "videoRecorder"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1437
    const-string v1, "Applying video recorder parameters."

    invoke-static {p0, v1}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p1, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1440
    invoke-virtual {p1, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1441
    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1442
    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 1443
    const v1, 0x4c4b40

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1444
    const/16 v1, 0x1e

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1445
    sget-object v0, Lcom/google/glass/camera/SharedCameraConstants;->RECORD_VIDEO_SIZE:Lcom/google/glass/camera/Size;

    .line 1446
    .local v0, videoSize:Lcom/google/glass/camera/Size;
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->VSTAB_CALIBRATION:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1447
    sget-object v0, Lcom/google/glass/camera/SharedCameraConstants;->VSTAB_CALIBRATION_RECORD_VIDEO_SIZE:Lcom/google/glass/camera/Size;

    .line 1451
    :cond_0
    :goto_0
    iget v1, v0, Lcom/google/glass/camera/Size;->width:I

    iget v2, v0, Lcom/google/glass/camera/Size;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1453
    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1454
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 1455
    const v1, 0x17700

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1456
    const v1, 0xac44

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1457
    invoke-virtual {p1, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1458
    return-void

    .line 1448
    :cond_1
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->VSTAB:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1449
    sget-object v0, Lcom/google/glass/camera/SharedCameraConstants;->VSTAB_RECORD_VIDEO_SIZE:Lcom/google/glass/camera/Size;

    goto :goto_0
.end method

.method private static calculatePostviewBufferSize()I
    .locals 5

    .prologue
    .line 1572
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x20

    .line 1575
    .local v1, bitsPerPixel:I
    :goto_0
    sget-object v3, Lcom/google/glass/camera/SharedCameraConstants;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v3, v3, Lcom/google/glass/camera/Size;->width:I

    sget-object v4, Lcom/google/glass/camera/SharedCameraConstants;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v4, v4, Lcom/google/glass/camera/Size;->height:I

    mul-int/2addr v3, v4

    mul-int v0, v3, v1

    .line 1577
    .local v0, bitsPerFrame:I
    add-int/lit8 v3, v0, 0x7

    div-int/lit8 v2, v3, 0x8

    .line 1578
    .local v2, postviewBufferSize:I
    return v2

    .line 1572
    .end local v0           #bitsPerFrame:I
    .end local v1           #bitsPerPixel:I
    .end local v2           #postviewBufferSize:I
    :cond_0
    sget v3, Lcom/google/glass/camera/SharedCameraConstants;->POSTVIEW_FORMAT:I

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    goto :goto_0
.end method

.method private static calculatePreviewBufferSize()I
    .locals 5

    .prologue
    .line 1563
    const/16 v3, 0x11

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    .line 1564
    .local v1, bitsPerPixel:I
    sget-object v3, Lcom/google/glass/camera/SharedCameraConstants;->PREVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v3, v3, Lcom/google/glass/camera/Size;->width:I

    sget-object v4, Lcom/google/glass/camera/SharedCameraConstants;->PREVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v4, v4, Lcom/google/glass/camera/Size;->height:I

    mul-int/2addr v3, v4

    mul-int v0, v3, v1

    .line 1566
    .local v0, bitsPerFrame:I
    add-int/lit8 v3, v0, 0x7

    div-int/lit8 v2, v3, 0x8

    .line 1567
    .local v2, previewBufferSize:I
    return v2
.end method

.method private cancelPrepareCameraTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 704
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->prepareCameraTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    const/4 v0, 0x0

    const-string v1, "Canceling prepare camera timeout."

    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->prepareCameraTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private createInvisiblePreviewSurface()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1591
    new-array v0, v3, [I

    .line 1592
    .local v0, names:[I
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1593
    aget v2, v0, v2

    iput v2, p0, Lcom/google/glass/camera/SharedCameraManager;->previewSurfaceTextureName:I

    .line 1594
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/google/glass/camera/SharedCameraManager;->previewSurfaceTextureName:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 1595
    .local v1, texture:Landroid/graphics/SurfaceTexture;
    iput-object v1, p0, Lcom/google/glass/camera/SharedCameraManager;->invisiblePreviewSurface:Landroid/graphics/SurfaceTexture;

    .line 1596
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created a surface texture (#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/glass/camera/SharedCameraManager;->previewSurfaceTextureName:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1598
    return-void
.end method

.method private destroyInvisiblePreviewSurface()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1602
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->invisiblePreviewSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->invisiblePreviewSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1604
    iput-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->invisiblePreviewSurface:Landroid/graphics/SurfaceTexture;

    .line 1605
    new-array v0, v3, [I

    iget v1, p0, Lcom/google/glass/camera/SharedCameraManager;->previewSurfaceTextureName:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroyed the surface texture (#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/camera/SharedCameraManager;->previewSurfaceTextureName:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1609
    :cond_0
    return-void
.end method

.method private enableVideoStabilizationSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 10
    .parameter "client"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1123
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1125
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->stopPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return v6

    .line 1129
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->acquireCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1133
    sget-object v8, Lcom/google/glass/util/Labs$Feature;->VSTAB:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v8}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/google/glass/util/Labs$Feature;->VSTAB_CALIBRATION:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v8}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move v5, v7

    .line 1136
    .local v5, vstabFeatureEnabled:Z
    :goto_1
    if-nez v5, :cond_4

    .line 1137
    const-string v7, "Video stabilization feature is not enabled"

    invoke-static {p1, v7}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_0

    .end local v5           #vstabFeatureEnabled:Z
    :cond_3
    move v5, v6

    .line 1133
    goto :goto_1

    .line 1141
    .restart local v5       #vstabFeatureEnabled:Z
    :cond_4
    const-string v8, "About to enable video stabilization"

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1144
    .local v2, enableVideoStabilizationTimeMillis:J
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 1146
    .local v4, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1147
    const-string v7, "VideoStabilization is not supported"

    invoke-static {p1, v7}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_0

    .line 1151
    :cond_5
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    .line 1153
    .local v0, currentVstabState:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current video stabilization state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1156
    if-eqz v5, :cond_6

    if-nez v0, :cond_6

    .line 1157
    const-string v8, "Enabling video stabilization"

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 1162
    :try_start_0
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v8, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enable video stabilization took "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ms."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    move v6, v7

    .line 1172
    goto/16 :goto_0

    .line 1163
    :catch_0
    move-exception v1

    .line 1164
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "Failed to set camera parameters."

    invoke-static {p1, v7, v1}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method private getBarcodeRecognizer()Lcom/google/glass/barcode/BarcodeRecognizer;
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

    if-nez v0, :cond_0

    .line 1719
    new-instance v0, Lcom/google/glass/barcode/BarhopperRecognizer;

    invoke-direct {v0}, Lcom/google/glass/barcode/BarhopperRecognizer;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

    return-object v0
.end method

.method private getInvisiblePreviewSurface()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->invisiblePreviewSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 1584
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->createInvisiblePreviewSurface()V

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->invisiblePreviewSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method private static handleAudioError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    .locals 1
    .parameter "client"
    .parameter "message"

    .prologue
    .line 1782
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleAudioError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1783
    return-void
.end method

.method private static handleAudioError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "client"
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 1765
    if-eqz p2, :cond_1

    .line 1766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1772
    :goto_0
    if-eqz p0, :cond_0

    .line 1773
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/SharedCameraClient;->dispatchAudioError(Ljava/lang/String;)V

    .line 1775
    :cond_0
    return-void

    .line 1768
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    .locals 1
    .parameter "client"
    .parameter "message"

    .prologue
    .line 1752
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1753
    return-void
.end method

.method private static handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "client"
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 1735
    if-eqz p2, :cond_1

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1742
    :goto_0
    if-eqz p0, :cond_0

    .line 1743
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/SharedCameraClient;->dispatchCameraError(Ljava/lang/String;)V

    .line 1745
    :cond_0
    return-void

    .line 1738
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isPreviewing()Z
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/google/glass/util/HiddenApiHelper;->previewEnabled(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecording()Z
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lockCamera()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 720
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 721
    return-void
.end method

.method private preloadCameraSynchronously()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1618
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1620
    invoke-direct {p0, v4}, Lcom/google/glass/camera/SharedCameraManager;->acquireCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return v1

    .line 1624
    :cond_1
    const-string v2, "About to preload the camera."

    invoke-static {v4, v2}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1627
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1628
    invoke-direct {p0, v4}, Lcom/google/glass/camera/SharedCameraManager;->startPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1635
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1641
    :goto_1
    invoke-direct {p0, v4}, Lcom/google/glass/camera/SharedCameraManager;->stopPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1648
    :goto_2
    invoke-direct {p0, v4}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1652
    const/4 v1, 0x1

    goto :goto_0

    .line 1636
    :catch_0
    move-exception v0

    .line 1637
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted while running the preview during camera preloading."

    invoke-static {v4, v2}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_1

    .line 1645
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    const-string v2, "Skipping preview preloading for testing."

    invoke-static {v4, v2}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 7
    .parameter "client"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 860
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 862
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->stopPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 901
    :cond_0
    :goto_0
    return v3

    .line 866
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->stopRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 871
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    if-nez v5, :cond_2

    move v3, v4

    .line 872
    goto :goto_0

    .line 875
    :cond_2
    const-string v5, "About to release the camera."

    invoke-static {p1, v5}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 876
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 878
    .local v1, releaseCameraTimeMillis:J
    const-string v5, "Releasing the camera."

    invoke-static {p1, v5}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 880
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    iput-object v6, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    .line 888
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/glass/util/Labs$Feature;->CLIPLET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 891
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->destroyInvisiblePreviewSurface()V

    .line 895
    :cond_4
    if-eqz p1, :cond_5

    .line 896
    invoke-virtual {p1}, Lcom/google/glass/camera/SharedCameraClient;->dispatchCameraReleased()V

    .line 899
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Releasing the camera took "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ms."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    move v3, v4

    .line 901
    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v4, "Failed to release the camera."

    invoke-static {p1, v4, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    iput-object v6, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    goto :goto_0

    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    iput-object v6, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    throw v3
.end method

.method private safeVideoRecorderStart(Lcom/google/glass/camera/SharedCameraClient;Landroid/media/MediaRecorder;Lcom/google/glass/camera/Video;)Z
    .locals 6
    .parameter "client"
    .parameter "videoRecorder"
    .parameter "video"

    .prologue
    const/4 v3, 0x0

    .line 1343
    const/4 v1, 0x0

    .local v1, numRetryAttempt:I
    :goto_0
    sget-object v4, Lcom/google/glass/camera/SharedCameraManager;->VIDEO_RECORDER_START_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

    invoke-virtual {v4, v1}, Lcom/google/glass/util/RetryStrategy;->tryAgain(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1345
    sget-object v4, Lcom/google/glass/camera/SharedCameraManager;->VIDEO_RECORDER_START_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

    invoke-virtual {v4, v1}, Lcom/google/glass/util/RetryStrategy;->getDelayMillis(I)I

    move-result v2

    .line 1346
    .local v2, retryDelay:I
    if-lez v2, :cond_0

    .line 1347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrying video recording in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1349
    int-to-long v4, v2

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/camera/SharedCameraClient;->isViewfinderValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1359
    const-string v4, "Surface Texture is no longer valid"

    invoke-static {p1, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1425
    .end local v2           #retryDelay:I
    :goto_1
    return v3

    .line 1350
    .restart local v2       #retryDelay:I
    :catch_0
    move-exception v0

    .line 1351
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "Interrupted while waiting to retry starting video recording."

    invoke-static {p1, v4, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1363
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->acquireCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1364
    const-string v4, "Failed to prepare video recording (unable to acquire camera)"

    invoke-static {p1, v4}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_1

    .line 1371
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/camera/SharedCameraClient;->startUsingViewfinder()V

    .line 1374
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->enableVideoStabilizationSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    .line 1377
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p2, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1380
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->unlock()V

    .line 1383
    invoke-static {p1, p2}, Lcom/google/glass/camera/SharedCameraManager;->applyVideoRecorderParameters(Lcom/google/glass/camera/SharedCameraClient;Landroid/media/MediaRecorder;)V

    .line 1384
    invoke-virtual {p3}, Lcom/google/glass/camera/Video;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1387
    :try_start_1
    const-string v4, "Preparing video recorder."

    invoke-static {p1, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1402
    :try_start_2
    const-string v4, "Starting video recording."

    invoke-static {p1, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->start()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1404
    const/4 v3, 0x1

    goto :goto_1

    .line 1389
    :catch_1
    move-exception v0

    .line 1390
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "Failed to prepare video recording."

    invoke-static {p1, v4, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1392
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 1393
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Failed to prepare video recording."

    invoke-static {p1, v4, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1395
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1396
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "Failed to prepare video recording."

    invoke-static {p1, v4, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1405
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    .line 1409
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "Failed to start video recording."

    invoke-static {p1, v4, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1410
    const-string v4, "Resetting video recorder."

    invoke-static {p1, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->reset()V

    .line 1415
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->lock()V

    .line 1416
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    .line 1344
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1417
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v0

    .line 1418
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "Failed to start video recording."

    invoke-static {p1, v4, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1424
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v2           #retryDelay:I
    :cond_3
    const-string v4, "Failed to start video recording due to Audio Contention."

    invoke-static {p1, v4}, Lcom/google/glass/camera/SharedCameraManager;->handleAudioError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setClipletParametersSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 5
    .parameter "client"

    .prologue
    .line 843
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/camera/SharedCameraManager$CameraParameter;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;

    const-string v3, "mode"

    const-string v4, "cp-cam"

    invoke-direct {v2, p0, v3, v4}, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;-><init>(Lcom/google/glass/camera/SharedCameraManager;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;

    const-string v3, "usecase"

    const-string v4, "cliplet"

    invoke-direct {v2, p0, v3, v4}, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;-><init>(Lcom/google/glass/camera/SharedCameraManager;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;

    const-string v3, "cliplet-videofile"

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->cliplet:Lcom/google/glass/camera/VideoWrapper;

    invoke-virtual {v4}, Lcom/google/glass/camera/VideoWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;-><init>(Lcom/google/glass/camera/SharedCameraManager;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/camera/SharedCameraManager;->setParametersSynchronously(Lcom/google/glass/camera/SharedCameraClient;[Lcom/google/glass/camera/SharedCameraManager$CameraParameter;)Z

    move-result v0

    return v0
.end method

.method private varargs setParametersSynchronously(Lcom/google/glass/camera/SharedCameraClient;[Lcom/google/glass/camera/SharedCameraManager$CameraParameter;)Z
    .locals 12
    .parameter "client"
    .parameter "parameters"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 793
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 795
    array-length v10, p2

    if-nez v10, :cond_0

    .line 796
    const-string v9, "No parameters to set."

    invoke-static {p1, v9}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 832
    :goto_0
    return v8

    .line 800
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->acquireCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v10

    if-nez v10, :cond_1

    move v8, v9

    .line 801
    goto :goto_0

    .line 804
    :cond_1
    const-string v10, "About to set parameters."

    invoke-static {p1, v10}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 805
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 807
    .local v6, setParametersTimeMillis:J
    iget-object v10, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 810
    .local v1, cameraParameters:Landroid/hardware/Camera$Parameters;
    move-object v0, p2

    .local v0, arr$:[Lcom/google/glass/camera/SharedCameraManager$CameraParameter;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 811
    .local v5, parameter:Lcom/google/glass/camera/SharedCameraManager$CameraParameter;
    iget-object v10, v5, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;->value:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 812
    iget-object v10, v5, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;->key:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 813
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing parameter \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 810
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 815
    :cond_2
    iget-object v10, v5, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;->key:Ljava/lang/String;

    iget-object v11, v5, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting parameter \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" to \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;->value:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_2

    .line 823
    .end local v5           #parameter:Lcom/google/glass/camera/SharedCameraManager$CameraParameter;
    :cond_3
    :try_start_0
    iget-object v10, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting parameters took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 824
    :catch_0
    move-exception v2

    .line 825
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v8, "Failed to set camera parameters."

    invoke-static {p1, v8, v2}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    move v8, v9

    .line 826
    goto/16 :goto_0
.end method

.method private shutDownCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 8
    .parameter "client"

    .prologue
    const/4 v3, 0x0

    .line 1663
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1665
    const-string v4, "About to shut down the camera."

    invoke-static {p1, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1666
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1668
    .local v1, shutDownCameraTimeMillis:J
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1670
    :try_start_0
    const-string v4, "Discarding any pending camera manipulations."

    invoke-static {p1, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1673
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v5, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1677
    const-string v4, "Timed out while discarding camera manipulations."

    invoke-static {p1, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1695
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v3

    .line 1680
    :catch_0
    move-exception v0

    .line 1681
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "Interrupted while discarding camera manipulations."

    invoke-static {p1, v4, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1695
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1687
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 1695
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1691
    :cond_1
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shutting down the camera took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1693
    const/4 v3, 0x1

    .line 1695
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraManipulationExecutorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private startMeteringSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 5
    .parameter "client"

    .prologue
    const/4 v2, 0x0

    .line 1012
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1014
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->stopRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return v2

    .line 1018
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->acquireCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1022
    const-string v3, "About to start GCam metering."

    invoke-static {p1, v3}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1025
    .local v0, startMeteringTimeMillis:J
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-static {v3}, Lcom/google/glass/hidden/HiddenCamera;->startGoogleCameraMetering(Landroid/hardware/Camera;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1026
    const-string v3, "GCam Metering failed."

    invoke-static {p1, v3}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCam Metering took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1033
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startPrepareCameraTimeout()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 687
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->prepareCameraTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    const-string v0, "Extending prepare camera timeout."

    invoke-static {v1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->prepareCameraTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    :goto_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->prepareCameraTimeoutHandler:Landroid/os/Handler;

    sget-wide v1, Lcom/google/glass/camera/SharedCameraManager;->PREPARE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 695
    return-void

    .line 691
    :cond_0
    const-string v0, "Starting prepare camera timeout."

    invoke-static {v1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 12
    .parameter "client"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 913
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 915
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->stopRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return v6

    .line 919
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->acquireCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->isPreviewing()Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 925
    goto :goto_0

    .line 928
    :cond_2
    const-string v8, "About to start the preview."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 931
    .local v3, startPreviewTimeMillis:J
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/glass/camera/SharedCameraClient;->getViewfinder()Landroid/view/TextureView;

    move-result-object v5

    .line 933
    .local v5, viewfinder:Landroid/view/TextureView;
    :goto_1
    if-eqz v5, :cond_6

    .line 934
    const-string v8, "Using the preview surface provided by the client."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 939
    invoke-virtual {p1}, Lcom/google/glass/camera/SharedCameraClient;->startUsingViewfinder()V

    .line 940
    sget-wide v8, Lcom/google/glass/camera/SharedCameraManager;->PREVIEW_SURFACE_WAIT_TIMEOUT_NANOS:J

    invoke-virtual {p1, v8, v9}, Lcom/google/glass/camera/SharedCameraClient;->waitForPreviewSurface(J)Z

    move-result v8

    if-nez v8, :cond_4

    .line 944
    const-string v7, "Aborting preview."

    invoke-static {p1, v7}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_0

    .line 931
    .end local v5           #viewfinder:Landroid/view/TextureView;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 947
    .restart local v5       #viewfinder:Landroid/view/TextureView;
    :cond_4
    invoke-virtual {v5}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 951
    .local v2, previewSurface:Landroid/graphics/SurfaceTexture;
    const-string v8, "Setting preview frame rate to 30 FPS."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 952
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/glass/camera/SharedCameraManager$CameraParameter;

    new-instance v9, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;

    const-string v10, "preview-frame-rate"

    const-string v11, "30"

    invoke-direct {v9, p0, v10, v11}, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;-><init>(Lcom/google/glass/camera/SharedCameraManager;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v6

    new-instance v9, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;

    const-string v10, "preview-fps-range"

    const-string v11, "30000,30000"

    invoke-direct {v9, p0, v10, v11}, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;-><init>(Lcom/google/glass/camera/SharedCameraManager;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v7

    invoke-direct {p0, p1, v8}, Lcom/google/glass/camera/SharedCameraManager;->setParametersSynchronously(Lcom/google/glass/camera/SharedCameraClient;[Lcom/google/glass/camera/SharedCameraManager$CameraParameter;)Z

    .line 957
    const-string v8, "Adding 3preview buffers."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 958
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v8, 0x3

    if-ge v1, v8, :cond_5

    .line 959
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    iget-object v9, p0, Lcom/google/glass/camera/SharedCameraManager;->previewCallbackBuffers:[[B

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 961
    :cond_5
    const-string v8, "Registering the preview callback."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 962
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    iget-object v9, p0, Lcom/google/glass/camera/SharedCameraManager;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v8, v9}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 968
    .end local v1           #i:I
    :goto_3
    :try_start_0
    const-string v8, "Adding the preview surface."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 969
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v8, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    const-string v8, "Starting the preview."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 977
    :try_start_1
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 983
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->isPreviewing()Z

    move-result v8

    if-nez v8, :cond_7

    .line 984
    const-string v7, "Failed to start the preview."

    invoke-static {p1, v7}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 964
    .end local v2           #previewSurface:Landroid/graphics/SurfaceTexture;
    :cond_6
    const-string v8, "Using the invisible preview surface."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 965
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->getInvisiblePreviewSurface()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .restart local v2       #previewSurface:Landroid/graphics/SurfaceTexture;
    goto :goto_3

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, e:Ljava/io/IOException;
    const-string v7, "Failed to add the preview surface."

    invoke-static {p1, v7, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 978
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 979
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v7, "Failed to start the preview."

    invoke-static {p1, v7, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 988
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_7
    if-eqz p1, :cond_8

    .line 989
    const-string v6, "Adding client to the previewing clients."

    invoke-static {p1, v6}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 990
    iget-object v6, p0, Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 993
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting the preview took "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ms."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 996
    if-eqz p1, :cond_9

    .line 997
    invoke-virtual {p1}, Lcom/google/glass/camera/SharedCameraClient;->dispatchStartPreview()V

    :cond_9
    move v6, v7

    .line 1000
    goto/16 :goto_0
.end method

.method private startRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 12
    .parameter "client"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1184
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1187
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->isRecording()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return v7

    .line 1197
    :cond_1
    iget-object v10, p0, Lcom/google/glass/camera/SharedCameraManager;->previouslyPreviewingClients:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 1198
    iget-object v10, p0, Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/camera/SharedCameraClient;

    .line 1199
    .local v2, previewingClient:Lcom/google/glass/camera/SharedCameraClient;
    iget-object v10, p0, Lcom/google/glass/camera/SharedCameraManager;->previouslyPreviewingClients:Ljava/util/Set;

    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1200
    invoke-direct {p0, v2}, Lcom/google/glass/camera/SharedCameraManager;->stopPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v10

    if-nez v10, :cond_2

    move v7, v8

    .line 1201
    goto :goto_0

    .line 1205
    .end local v2           #previewingClient:Lcom/google/glass/camera/SharedCameraClient;
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v10

    if-nez v10, :cond_4

    move v7, v8

    .line 1206
    goto :goto_0

    .line 1209
    :cond_4
    const-string v10, "About to start recording video."

    invoke-static {p1, v10}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1213
    .local v4, startRecordingTimeMillis:J
    new-instance v10, Lcom/google/glass/camera/VideoWrapper;

    invoke-direct {v10}, Lcom/google/glass/camera/VideoWrapper;-><init>()V

    iput-object v10, p0, Lcom/google/glass/camera/SharedCameraManager;->video:Lcom/google/glass/camera/VideoWrapper;

    .line 1214
    iget-object v10, p0, Lcom/google/glass/camera/SharedCameraManager;->video:Lcom/google/glass/camera/VideoWrapper;

    invoke-virtual {v10}, Lcom/google/glass/camera/VideoWrapper;->start()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1215
    const-string v7, "Unable to start video recording."

    invoke-static {p1, v7}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    move v7, v8

    .line 1216
    goto :goto_0

    .line 1218
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Recording video to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/glass/camera/SharedCameraManager;->video:Lcom/google/glass/camera/VideoWrapper;

    invoke-virtual {v11}, Lcom/google/glass/camera/VideoWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1220
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    .line 1221
    .local v3, recorder:Landroid/media/MediaRecorder;
    new-instance v10, Lcom/google/glass/camera/SharedCameraManager$9;

    invoke-direct {v10, p0, p1}, Lcom/google/glass/camera/SharedCameraManager$9;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v3, v10}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1247
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/glass/camera/SharedCameraClient;->getViewfinder()Landroid/view/TextureView;

    move-result-object v6

    .line 1249
    .local v6, viewfinder:Landroid/view/TextureView;
    :goto_1
    if-eqz v6, :cond_8

    .line 1250
    const-string v10, "Using the preview surface provided by the client for video recording."

    invoke-static {p1, v10}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p1}, Lcom/google/glass/camera/SharedCameraClient;->startUsingViewfinder()V

    .line 1257
    sget-wide v10, Lcom/google/glass/camera/SharedCameraManager;->PREVIEW_SURFACE_WAIT_TIMEOUT_NANOS:J

    invoke-virtual {p1, v10, v11}, Lcom/google/glass/camera/SharedCameraClient;->waitForPreviewSurface(J)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1262
    const-string v7, "Aborting video recording."

    invoke-static {p1, v7}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1263
    iput-object v9, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    move v7, v8

    .line 1264
    goto/16 :goto_0

    .end local v6           #viewfinder:Landroid/view/TextureView;
    :cond_6
    move-object v6, v9

    .line 1247
    goto :goto_1

    .line 1266
    .restart local v6       #viewfinder:Landroid/view/TextureView;
    :cond_7
    invoke-virtual {v6}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 1273
    .local v1, previewSurface:Landroid/graphics/SurfaceTexture;
    :goto_2
    const-string v10, "Adding the preview surface for video recording."

    invoke-static {p1, v10}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1274
    invoke-static {v3, v1}, Lcom/google/glass/util/HiddenApiHelper;->setSurfaceTexture(Landroid/media/MediaRecorder;Landroid/graphics/SurfaceTexture;)V

    .line 1276
    iget-object v10, p0, Lcom/google/glass/camera/SharedCameraManager;->video:Lcom/google/glass/camera/VideoWrapper;

    invoke-direct {p0, p1, v3, v10}, Lcom/google/glass/camera/SharedCameraManager;->safeVideoRecorderStart(Lcom/google/glass/camera/SharedCameraClient;Landroid/media/MediaRecorder;Lcom/google/glass/camera/Video;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1277
    iput-object v9, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    .line 1279
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move v7, v8

    .line 1280
    goto/16 :goto_0

    .line 1268
    .end local v1           #previewSurface:Landroid/graphics/SurfaceTexture;
    :cond_8
    const-string v10, "Using the invisible preview surface for video recording."

    invoke-static {p1, v10}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1270
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->getInvisiblePreviewSurface()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .restart local v1       #previewSurface:Landroid/graphics/SurfaceTexture;
    goto :goto_2

    .line 1283
    :cond_9
    iput-object v3, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    .line 1286
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    new-instance v9, Lcom/google/glass/camera/SharedCameraManager$10;

    invoke-direct {v9, p0, p1}, Lcom/google/glass/camera/SharedCameraManager$10;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1316
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager;->recordingClient:Lcom/google/glass/camera/SharedCameraClient;

    .line 1318
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting recording took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1321
    if-eqz p1, :cond_0

    .line 1322
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->video:Lcom/google/glass/camera/VideoWrapper;

    invoke-virtual {p1, v8}, Lcom/google/glass/camera/SharedCameraClient;->dispatchStartRecording(Lcom/google/glass/camera/Video;)V

    goto/16 :goto_0
.end method

.method private stopPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 9
    .parameter "client"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1048
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1050
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1051
    const-string v7, "Removing client from the previewing clients."

    invoke-static {p1, v7}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1052
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1056
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->isPreviewing()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1112
    :cond_1
    :goto_0
    return v5

    .line 1060
    :cond_2
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1061
    const-string v5, "Not stopping the preview, because there are still clients receiving frames."

    invoke-static {p1, v5}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1063
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/camera/SharedCameraClient;

    .line 1064
    .local v2, previewingClient:Lcom/google/glass/camera/SharedCameraClient;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\" is still receiving preview frames."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    goto :goto_1

    .end local v2           #previewingClient:Lcom/google/glass/camera/SharedCameraClient;
    :cond_3
    move v5, v6

    .line 1067
    goto :goto_0

    .line 1070
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v7, "About to stop the preview."

    invoke-static {p1, v7}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1073
    .local v3, stopPreviewTimeMillis:J
    const-string v7, "Stopping the preview."

    invoke-static {p1, v7}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1075
    :try_start_0
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->isPreviewing()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1082
    const-string v5, "Failed to stop the preview."

    invoke-static {p1, v5}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    move v5, v6

    .line 1083
    goto :goto_0

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "Failed to stop the preview."

    invoke-static {p1, v5, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    move v5, v6

    .line 1078
    goto :goto_0

    .line 1086
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_5
    const-string v7, "Removing the preview surface."

    invoke-static {p1, v7}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1088
    :try_start_1
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1089
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1095
    if-eqz p1, :cond_6

    .line 1096
    const-string v6, "Releasing previously destroyed preview surfaces."

    invoke-static {p1, v6}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p1}, Lcom/google/glass/camera/SharedCameraClient;->releaseDestroyedPreviewSurfaces()V

    .line 1100
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping the preview took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1103
    if-eqz p1, :cond_7

    .line 1104
    invoke-virtual {p1}, Lcom/google/glass/camera/SharedCameraClient;->dispatchStopPreview()V

    .line 1108
    :cond_7
    iget-object v6, p0, Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1109
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    goto/16 :goto_0

    .line 1090
    :catch_1
    move-exception v0

    .line 1091
    .local v0, e:Ljava/io/IOException;
    const-string v5, "Failed to remove the preview surface."

    invoke-static {p1, v5, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V

    move v5, v6

    .line 1092
    goto/16 :goto_0
.end method

.method private stopRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 1
    .parameter "client"

    .prologue
    const/4 v0, 0x0

    .line 1468
    invoke-direct {p0, p1, v0, v0}, Lcom/google/glass/camera/SharedCameraManager;->stopRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;ZZ)Z

    move-result v0

    return v0
.end method

.method private stopRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;ZZ)Z
    .locals 12
    .parameter "client"
    .parameter "reachedMaxDuration"
    .parameter "storageFull"

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 1484
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1485
    const/4 v3, 0x0

    .line 1487
    .local v3, stopRecordErrored:Z
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->isRecording()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1558
    :cond_0
    :goto_0
    return v6

    .line 1491
    :cond_1
    const-string v8, "About to stop recording video."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1492
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1495
    .local v4, stopRecordingTimeMillis:J
    :try_start_0
    const-string v8, "Stopping video recording."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1496
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1506
    const-string v8, "Releasing media recorder."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1507
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    if-eqz v8, :cond_2

    .line 1508
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->release()V

    .line 1510
    :cond_2
    if-eqz v3, :cond_3

    .line 1512
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    .line 1517
    :cond_3
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->video:Lcom/google/glass/camera/VideoWrapper;

    iget-object v9, p0, Lcom/google/glass/camera/SharedCameraManager;->context:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/google/glass/camera/VideoWrapper;->stop(Landroid/content/Context;)V

    .line 1519
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stopping recording took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1523
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->recordingClient:Lcom/google/glass/camera/SharedCameraClient;

    iget-object v9, p0, Lcom/google/glass/camera/SharedCameraManager;->video:Lcom/google/glass/camera/VideoWrapper;

    invoke-virtual {v8, v9, p2, p3}, Lcom/google/glass/camera/SharedCameraClient;->dispatchStopRecording(Lcom/google/glass/camera/Video;ZZ)V

    .line 1526
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->recordingClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v8, p1}, Lcom/google/glass/camera/SharedCameraClient;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1527
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->video:Lcom/google/glass/camera/VideoWrapper;

    invoke-virtual {p1, v8, p2, p3}, Lcom/google/glass/camera/SharedCameraClient;->dispatchStopRecording(Lcom/google/glass/camera/Video;ZZ)V

    .line 1530
    :cond_4
    iput-object v11, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    .line 1534
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->lock()V

    .line 1537
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    .line 1539
    const-string v8, "Releasing previously destroyed preview surfaces for video recording."

    invoke-static {p1, v8}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1541
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->recordingClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v8}, Lcom/google/glass/camera/SharedCameraClient;->releaseDestroyedPreviewSurfaces()V

    .line 1543
    iput-object v11, p0, Lcom/google/glass/camera/SharedCameraManager;->video:Lcom/google/glass/camera/VideoWrapper;

    .line 1544
    iput-object v11, p0, Lcom/google/glass/camera/SharedCameraManager;->recordingClient:Lcom/google/glass/camera/SharedCameraClient;

    .line 1547
    iget-object v8, p0, Lcom/google/glass/camera/SharedCameraManager;->previouslyPreviewingClients:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/camera/SharedCameraClient;

    .line 1548
    .local v2, previewingClient:Lcom/google/glass/camera/SharedCameraClient;
    invoke-direct {p0, v2}, Lcom/google/glass/camera/SharedCameraManager;->startPreviewSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    move-result v8

    if-nez v8, :cond_5

    move v6, v7

    .line 1549
    goto/16 :goto_0

    .line 1497
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #previewingClient:Lcom/google/glass/camera/SharedCameraClient;
    :catch_0
    move-exception v0

    .line 1498
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v6, "Unable to stop video recording."

    invoke-static {p1, v6, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1499
    const/4 v3, 0x1

    .line 1506
    const-string v6, "Releasing media recorder."

    invoke-static {p1, v6}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1507
    iget-object v6, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    if-eqz v6, :cond_6

    .line 1508
    iget-object v6, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->release()V

    .line 1510
    :cond_6
    if-eqz v3, :cond_7

    .line 1512
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    :cond_7
    move v6, v7

    goto/16 :goto_0

    .line 1501
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 1502
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v6, "Unable to stop video recording."

    invoke-static {p1, v6, v0}, Lcom/google/glass/camera/SharedCameraManager;->handleCameraError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1503
    const/4 v3, 0x1

    .line 1506
    const-string v6, "Releasing media recorder."

    invoke-static {p1, v6}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1507
    iget-object v6, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    if-eqz v6, :cond_8

    .line 1508
    iget-object v6, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->release()V

    .line 1510
    :cond_8
    if-eqz v3, :cond_9

    .line 1512
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    :cond_9
    move v6, v7

    goto/16 :goto_0

    .line 1506
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    const-string v7, "Releasing media recorder."

    invoke-static {p1, v7}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1507
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    if-eqz v7, :cond_a

    .line 1508
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager;->videoRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->release()V

    .line 1510
    :cond_a
    if-eqz v3, :cond_b

    .line 1512
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    :cond_b
    throw v6

    .line 1554
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_c
    iget-object v7, p0, Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1555
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraManager;->releaseCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    goto/16 :goto_0
.end method

.method private unlockCamera()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager;->cameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 729
    return-void
.end method


# virtual methods
.method prepareCamera()V
    .locals 2

    .prologue
    .line 654
    const/4 v0, 0x0

    const-string v1, "Prepare camera requested."

    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 655
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->cancelPrepareCameraTimeout()V

    .line 657
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$8;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraManager$8;-><init>(Lcom/google/glass/camera/SharedCameraManager;)V

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager$8;->enqueue()V

    .line 679
    return-void
.end method

.method shutDown()V
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraManager;->shutDownCameraSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z

    .line 715
    return-void
.end method

.method startPreview(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 599
    const-string v0, "Start preview requested."

    invoke-static {p1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 601
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->cancelPrepareCameraTimeout()V

    .line 603
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$4;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/SharedCameraManager$4;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager$4;->enqueue()V

    .line 609
    return-void
.end method

.method startRecording(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 625
    const-string v0, "Start recording requested."

    invoke-static {p1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 627
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->cancelPrepareCameraTimeout()V

    .line 629
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$6;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/SharedCameraManager$6;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager$6;->enqueue()V

    .line 635
    return-void
.end method

.method stopPreview(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 613
    const-string v0, "Stop preview requested."

    invoke-static {p1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 615
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$5;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/SharedCameraManager$5;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager$5;->enqueue()V

    .line 621
    return-void
.end method

.method stopRecording(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 639
    const-string v0, "Stop recording requested."

    invoke-static {p1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 641
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$7;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/SharedCameraManager$7;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager$7;->enqueue()V

    .line 647
    return-void
.end method

.method takePicture(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 589
    const-string v0, "Take picture requested."

    invoke-static {p1, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraManager;->cancelPrepareCameraTimeout()V

    .line 594
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager$PictureRequest;->enqueue()V

    .line 595
    return-void
.end method
