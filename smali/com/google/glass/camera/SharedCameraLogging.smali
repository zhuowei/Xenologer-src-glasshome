.class public Lcom/google/glass/camera/SharedCameraLogging;
.super Ljava/lang/Object;
.source "SharedCameraLogging.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/google/glass/camera/SharedCameraLogging;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;
    .locals 4
    .parameter "message"
    .parameter "client"

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 75
    :try_start_0
    invoke-interface {p1}, Lcom/google/glass/camera/ISharedCameraClient;->getTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    .local v1, tag:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 81
    .end local v1           #tag:Ljava/lang/String;
    .end local p0
    :cond_0
    return-object p0

    .line 76
    .restart local p0
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #tag:Ljava/lang/String;
    goto :goto_0
.end method

.method public static logDebug(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    .locals 2
    .parameter "client"
    .parameter "message"

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public static logError(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    .locals 2
    .parameter "client"
    .parameter "message"

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public static logError(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "client"
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 67
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    return-void
.end method

.method public static logVerbose(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    .locals 2
    .parameter "client"
    .parameter "message"

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public static logWarning(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    .locals 2
    .parameter "client"
    .parameter "message"

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method
