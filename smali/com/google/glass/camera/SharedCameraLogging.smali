.class public Lcom/google/glass/camera/SharedCameraLogging;
.super Ljava/lang/Object;
.source "SharedCameraLogging.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/google/glass/camera/SharedCameraLogging;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/SharedCameraClient;)Ljava/lang/String;
    .locals 2
    .parameter "message"
    .parameter "client"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 74
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static logDebug(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    .locals 2
    .parameter "client"
    .parameter "message"

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/SharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public static logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    .locals 2
    .parameter "client"
    .parameter "message"

    .prologue
    .line 54
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/SharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public static logError(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "client"
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 66
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/SharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return-void
.end method

.method public static logVerbose(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    .locals 2
    .parameter "client"
    .parameter "message"

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/SharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public static logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    .locals 2
    .parameter "client"
    .parameter "message"

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/SharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method
