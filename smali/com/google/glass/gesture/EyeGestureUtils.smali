.class public Lcom/google/glass/gesture/EyeGestureUtils;
.super Ljava/lang/Object;
.source "EyeGestureUtils.java"


# static fields
.field public static final ACTION_PRELOAD_RESOURCES:Ljava/lang/String; = "com.google.glass.gesture.action.PRELOAD_RESOURCES"

.field public static final ACTION_WINK_CALIBRATION:Ljava/lang/String; = "com.google.glass.action.ACTION_WINK_CALIBRATION"

.field public static final ACTION_WINK_CALIBRATION_TIPS:Ljava/lang/String; = "com.google.glass.action.ACTION_WINK_CALIBRATION_TIPS"

.field private static final MAX_WAKE_LOCK_DURATION_MILLIS:J

.field private static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final TAG:Ljava/lang/String;

.field private static wakeLockSingleton:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/gesture/EyeGestureUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/google/glass/util/PriorityThreadFactory;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/glass/gesture/EyeGestureUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":AsyncSerialExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/gesture/EyeGestureUtils;->MAX_WAKE_LOCK_DURATION_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getWakeLockInstance(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized enableGazeServiceAsync(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enableState"

    .prologue
    .line 71
    const-class v1, Lcom/google/glass/gesture/EyeGestureUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 76
    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->TAG:Ljava/lang/String;

    const-string v2, "Incrementing wake lock."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getWakeLockInstance(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sget-wide v2, Lcom/google/glass/gesture/EyeGestureUtils;->MAX_WAKE_LOCK_DURATION_MILLIS:J

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 80
    new-instance v0, Lcom/google/glass/gesture/EyeGestureUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/gesture/EyeGestureUtils$1;-><init>(ZLandroid/content/Context;)V

    sget-object v2, Lcom/google/glass/gesture/EyeGestureUtils;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/gesture/EyeGestureUtils$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v1

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized enableGazeServiceGuestModeAsync(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enableState"

    .prologue
    .line 108
    const-class v1, Lcom/google/glass/gesture/EyeGestureUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 110
    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->TAG:Ljava/lang/String;

    const-string v2, "Incrementing wake lock."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getWakeLockInstance(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sget-wide v2, Lcom/google/glass/gesture/EyeGestureUtils;->MAX_WAKE_LOCK_DURATION_MILLIS:J

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 113
    new-instance v0, Lcom/google/glass/gesture/EyeGestureUtils$2;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/gesture/EyeGestureUtils$2;-><init>(ZLandroid/content/Context;)V

    sget-object v2, Lcom/google/glass/gesture/EyeGestureUtils;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/gesture/EyeGestureUtils$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit v1

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getWakeLockInstance(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 5
    .parameter "context"

    .prologue
    .line 53
    const-class v2, Lcom/google/glass/gesture/EyeGestureUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils;->wakeLockSingleton:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 54
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 55
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/glass/gesture/EyeGestureUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":WakeLock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/glass/gesture/EyeGestureUtils;->wakeLockSingleton:Landroid/os/PowerManager$WakeLock;

    .line 57
    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils;->wakeLockSingleton:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 59
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils;->wakeLockSingleton:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
