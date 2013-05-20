.class public Lcom/google/glass/camera/SharedCameraService;
.super Landroid/app/Service;
.source "SharedCameraService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/camera/SharedCameraService$SharedCamera;,
        Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;
    }
.end annotation


# static fields
.field public static final ACTION_CAMERA_LOCK:Ljava/lang/String; = "com.google.glass.action.CAMERA_LOCK"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ACTION_PRELOAD_CAMERA:Ljava/lang/String; = "com.google.glass.action.PRELOAD_CAMERA"

.field private static final ACTION_PREPARE_CAMERA:Ljava/lang/String; = "com.google.glass.action.PREPARE_CAMERA"

.field private static final ACTION_SHUTDOWN_CAMERA:Ljava/lang/String; = "com.google.glass.action.SHUTDOWN_CAMERA"

.field public static final EXTRA_LOCKED:Ljava/lang/String; = "locked"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_PID:Ljava/lang/String; = "pid"

.field private static final SHUTDOWN_TIMEOUT_MILLIS:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cameraManager:Lcom/google/glass/camera/SharedCameraManager;

.field private final onStartUpTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final prepareCameraReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

.field private final shutdownCameraReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final shutdownExecutor:Ljava/util/concurrent/ExecutorService;

.field private final storageReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const-class v0, Lcom/google/glass/camera/SharedCameraService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/SharedCameraService;->TAG:Ljava/lang/String;

    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/camera/SharedCameraService;->SHUTDOWN_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 107
    new-instance v0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;-><init>(Lcom/google/glass/camera/SharedCameraService;Lcom/google/glass/camera/SharedCameraService$1;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->onStartUpTasks:Ljava/util/List;

    .line 113
    new-instance v0, Lcom/google/glass/util/PriorityThreadFactory;

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/glass/camera/SharedCameraService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/shutdownExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->shutdownExecutor:Ljava/util/concurrent/ExecutorService;

    .line 117
    new-instance v0, Lcom/google/glass/camera/SharedCameraService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraService$1;-><init>(Lcom/google/glass/camera/SharedCameraService;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->storageReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 358
    new-instance v0, Lcom/google/glass/camera/SharedCameraService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraService$2;-><init>(Lcom/google/glass/camera/SharedCameraService;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->shutdownCameraReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 377
    new-instance v0, Lcom/google/glass/camera/SharedCameraService$3;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraService$3;-><init>(Lcom/google/glass/camera/SharedCameraService;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->prepareCameraReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/glass/camera/SharedCameraService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/camera/SharedCameraService;Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/SharedCameraManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/camera/SharedCameraService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->onStartUpTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 73
    sget-wide v0, Lcom/google/glass/camera/SharedCameraService;->SHUTDOWN_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/glass/camera/SharedCameraService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraService;->startUp()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/camera/SharedCameraService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraService;->sendLockIntent(Z)V

    return-void
.end method

.method public static prepareCamera(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.PREPARE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    return-void
.end method

.method private sendLockIntent(Z)V
    .locals 3
    .parameter "isLocked"

    .prologue
    .line 590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.CAMERA_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, unlockIntent:Landroid/content/Intent;
    const-string v1, "locked"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 592
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/SharedCameraService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 594
    return-void
.end method

.method private shutDown(Z)V
    .locals 3
    .parameter "shouldRestartSharedCamera"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->shutdownCameraReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 544
    sget-object v0, Lcom/google/glass/camera/SharedCameraService;->TAG:Ljava/lang/String;

    const-string v1, "Shutdown requested."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v0, Lcom/google/glass/camera/SharedCameraService$5;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/SharedCameraService$5;-><init>(Lcom/google/glass/camera/SharedCameraService;Z)V

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraService;->shutdownExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/SharedCameraService$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 582
    return-void
.end method

.method private startUp()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 516
    sget-object v2, Lcom/google/glass/camera/SharedCameraService;->TAG:Ljava/lang/String;

    const-string v3, "Initializing the shared camera."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v2, Lcom/google/glass/camera/SharedCameraManager;

    invoke-direct {v2, p0}, Lcom/google/glass/camera/SharedCameraManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;

    .line 520
    invoke-direct {p0, v4}, Lcom/google/glass/camera/SharedCameraService;->sendLockIntent(Z)V

    .line 523
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraService;->shutdownCameraReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "com.google.glass.action.SHUTDOWN_CAMERA"

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraService;->onStartUpTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 527
    .local v1, task:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 529
    .end local v1           #task:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraService;->onStartUpTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 530
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 397
    sget-object v1, Lcom/google/glass/camera/SharedCameraService;->TAG:Ljava/lang/String;

    const-string v2, "Created."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 401
    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.glass.action.CAMERA_LOCK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/camera/SharedCameraService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 402
    .local v0, getLockIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "locked"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    sget-object v1, Lcom/google/glass/camera/SharedCameraService;->TAG:Ljava/lang/String;

    const-string v2, "Requesting shutdown of other service instances."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.SHUTDOWN_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/camera/SharedCameraService;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    new-instance v1, Lcom/google/glass/camera/SharedCameraService$4;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraService$4;-><init>(Lcom/google/glass/camera/SharedCameraService;)V

    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraService;->shutdownExecutor:Ljava/util/concurrent/ExecutorService;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/camera/SharedCameraService$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 470
    :goto_0
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraService;->storageReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.intent.action.DEVICE_STORAGE_FULL"

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    return-void

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraService;->startUp()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 475
    sget-object v1, Lcom/google/glass/camera/SharedCameraService;->TAG:Ljava/lang/String;

    const-string v2, "Destroyed."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraService;->storageReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 483
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraService;->prepareCameraReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 486
    .local v0, shouldRestartSharedCamera:Z
    :goto_0
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraService;->prepareCameraReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 489
    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraService;->shutDown(Z)V

    .line 491
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 492
    return-void

    .line 483
    .end local v0           #shouldRestartSharedCamera:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    .line 506
    sget-object v0, Lcom/google/glass/camera/SharedCameraService;->TAG:Ljava/lang/String;

    const-string v1, "Starting service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService;->prepareCameraReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.glass.action.PREPARE_CAMERA"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    return v4
.end method
