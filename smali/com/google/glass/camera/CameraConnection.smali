.class public Lcom/google/glass/camera/CameraConnection;
.super Ljava/lang/Object;
.source "CameraConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/camera/CameraConnection$ConnectionState;
    }
.end annotation


# static fields
.field private static final SHARED_CAMERA_SERVICE:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field final onConnectTasks:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field sharedCameraBinder:Lcom/google/glass/camera/ISharedCameraService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/camera/CameraConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/CameraConnection;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.camera"

    const-string v2, "com.google.glass.camera.SharedCameraService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/CameraConnection;->SHARED_CAMERA_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/CameraConnection;->onConnectTasks:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/google/glass/camera/CameraConnection;->context:Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/google/glass/camera/CameraConnection$ConnectionState;->DISCONNECTED:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/camera/CameraConnection;->connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    .line 48
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bindIfNecessary()V
    .locals 4

    .prologue
    .line 207
    sget-object v1, Lcom/google/glass/camera/CameraConnection$ConnectionState;->DISCONNECTED:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    iget-object v2, p0, Lcom/google/glass/camera/CameraConnection;->connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/CameraConnection$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    sget-object v1, Lcom/google/glass/camera/CameraConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We are currently "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/CameraConnection;->connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and don\'t need to reconnect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/google/glass/camera/CameraConnection;->SHARED_CAMERA_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 213
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/camera/CameraConnection;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    sget-object v1, Lcom/google/glass/camera/CameraConnection$ConnectionState;->CONNECTING:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/camera/CameraConnection;->connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    .line 215
    sget-object v1, Lcom/google/glass/camera/CameraConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding to service, connection state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/CameraConnection;->connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_1
    sget-object v1, Lcom/google/glass/camera/CameraConnection$ConnectionState;->DISCONNECTED:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/camera/CameraConnection;->connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    .line 218
    sget-object v1, Lcom/google/glass/camera/CameraConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding to service failed, connection state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/CameraConnection;->connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isConnected()Z
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/google/glass/camera/CameraConnection$ConnectionState;->CONNECTED:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    iget-object v1, p0, Lcom/google/glass/camera/CameraConnection;->connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraConnection$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/glass/camera/CameraConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->TAG:Ljava/lang/String;

    const-string v1, "Service is connected. Running immediately."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->TAG:Ljava/lang/String;

    const-string v1, "Service not connected. Will run when connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/google/glass/camera/CameraConnection;->onConnectTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-direct {p0}, Lcom/google/glass/camera/CameraConnection;->bindIfNecessary()V

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/glass/camera/CameraConnection;->bindIfNecessary()V

    .line 53
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 69
    sget-object v2, Lcom/google/glass/camera/CameraConnection;->TAG:Ljava/lang/String;

    const-string v3, "Camera service connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p2}, Lcom/google/glass/camera/ISharedCameraService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/camera/ISharedCameraService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/camera/CameraConnection;->sharedCameraBinder:Lcom/google/glass/camera/ISharedCameraService;

    .line 71
    sget-object v2, Lcom/google/glass/camera/CameraConnection$ConnectionState;->CONNECTED:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    iput-object v2, p0, Lcom/google/glass/camera/CameraConnection;->connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    .line 74
    iget-object v2, p0, Lcom/google/glass/camera/CameraConnection;->onConnectTasks:Ljava/util/List;

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

    .line 75
    .local v1, task:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 77
    .end local v1           #task:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/CameraConnection;->onConnectTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 78
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 82
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->TAG:Ljava/lang/String;

    const-string v1, "Camera service disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcom/google/glass/camera/CameraConnection$ConnectionState;->DISCONNECTED:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/camera/CameraConnection;->connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    .line 84
    return-void
.end method

.method public startPreview(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 113
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 114
    new-instance v0, Lcom/google/glass/camera/CameraConnection$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraConnection$2;-><init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraConnection;->runTask(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public startRecording(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 155
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 156
    new-instance v0, Lcom/google/glass/camera/CameraConnection$4;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraConnection$4;-><init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraConnection;->runTask(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public stopPreview(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 133
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 134
    new-instance v0, Lcom/google/glass/camera/CameraConnection$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraConnection$3;-><init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraConnection;->runTask(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public stopRecording(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 176
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 177
    new-instance v0, Lcom/google/glass/camera/CameraConnection$5;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraConnection$5;-><init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraConnection;->runTask(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public takePicture(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 93
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 94
    new-instance v0, Lcom/google/glass/camera/CameraConnection$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraConnection$1;-><init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraConnection;->runTask(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/camera/CameraConnection$ConnectionState;->DISCONNECTED:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    iget-object v1, p0, Lcom/google/glass/camera/CameraConnection;->connectionState:Lcom/google/glass/camera/CameraConnection$ConnectionState;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraConnection$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->TAG:Ljava/lang/String;

    const-string v1, "Unbinding from service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/google/glass/camera/CameraConnection;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 61
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->SHARED_CAMERA_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/CameraConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->TAG:Ljava/lang/String;

    const-string v1, "We are already unbound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
