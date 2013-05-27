.class public final Lcom/google/android/glass/gesture/HeadGestureManager;
.super Ljava/lang/Object;
.source "HeadGestureManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "head_gesture"

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/glass/gesture/HeadGestureManager;


# instance fields
.field private final mService:Lcom/google/android/glass/gesture/IHeadGestureManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string v0, "HeadGestureManager"

    sput-object v0, Lcom/google/android/glass/gesture/HeadGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/glass/gesture/IHeadGestureManager;)V
    .registers 2
    .parameter "asInterface"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/glass/gesture/HeadGestureManager;->mService:Lcom/google/android/glass/gesture/IHeadGestureManager;

    .line 63
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/android/glass/gesture/HeadGestureManager;
    .registers 4
    .parameter "context"

    .prologue
    .line 66
    sget-object v1, Lcom/google/android/glass/gesture/HeadGestureManager;->sInstance:Lcom/google/android/glass/gesture/HeadGestureManager;

    if-nez v1, :cond_15

    .line 67
    const-string v1, "head_gesture"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .local v0, binder:Landroid/os/IBinder;
    new-instance v1, Lcom/google/android/glass/gesture/HeadGestureManager;

    invoke-static {v0}, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/glass/gesture/IHeadGestureManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/glass/gesture/HeadGestureManager;-><init>(Lcom/google/android/glass/gesture/IHeadGestureManager;)V

    sput-object v1, Lcom/google/android/glass/gesture/HeadGestureManager;->sInstance:Lcom/google/android/glass/gesture/HeadGestureManager;

    .line 70
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_15
    sget-object v1, Lcom/google/android/glass/gesture/HeadGestureManager;->sInstance:Lcom/google/android/glass/gesture/HeadGestureManager;

    return-object v1
.end method


# virtual methods
.method register(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    .registers 6
    .parameter "gesture"
    .parameter "callback"

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/google/android/glass/gesture/HeadGestureManager;->mService:Lcom/google/android/glass/gesture/IHeadGestureManager;

    invoke-interface {v1, p1, p2}, Lcom/google/android/glass/gesture/IHeadGestureManager;->register(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 82
    :goto_6
    return v1

    .line 79
    :catch_7
    move-exception v0

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/android/glass/gesture/HeadGestureManager;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const/4 v1, 0x0

    goto :goto_6
.end method

.method registerOneShot(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    .registers 6
    .parameter "gesture"
    .parameter "callback"

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/google/android/glass/gesture/HeadGestureManager;->mService:Lcom/google/android/glass/gesture/IHeadGestureManager;

    invoke-interface {v1, p1, p2}, Lcom/google/android/glass/gesture/IHeadGestureManager;->registerOneShot(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 95
    :goto_6
    return v1

    .line 92
    :catch_7
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/android/glass/gesture/HeadGestureManager;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v1, 0x0

    goto :goto_6
.end method

.method unregister(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    .registers 6
    .parameter "gesture"
    .parameter "callback"

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/google/android/glass/gesture/HeadGestureManager;->mService:Lcom/google/android/glass/gesture/IHeadGestureManager;

    invoke-interface {v1, p1, p2}, Lcom/google/android/glass/gesture/IHeadGestureManager;->unregister(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 107
    :goto_6
    return v1

    .line 104
    :catch_7
    move-exception v0

    .line 105
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/android/glass/gesture/HeadGestureManager;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v1, 0x0

    goto :goto_6
.end method
