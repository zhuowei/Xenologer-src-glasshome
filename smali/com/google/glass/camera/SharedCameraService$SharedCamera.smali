.class public Lcom/google/glass/camera/SharedCameraService$SharedCamera;
.super Ljava/lang/Object;
.source "SharedCameraService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/SharedCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedCamera"
.end annotation


# instance fields
.field private isServiceConnected:Z

.field private final onConnectTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->onConnectTasks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/camera/SharedCameraService$SharedCamera;)Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 231
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera service connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    check-cast p2, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    .end local p2
    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    .line 236
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->onConnectTasks:Ljava/util/List;

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

    .line 237
    .local v1, task:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 239
    .end local v1           #task:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->onConnectTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 241
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->isServiceConnected:Z

    .line 242
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 246
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera service disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->isServiceConnected:Z

    .line 249
    return-void
.end method

.method public startPreview(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 279
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 281
    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->isServiceConnected:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->startPreview(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 292
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not connected. Will start preview on connect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->onConnectTasks:Ljava/util/List;

    new-instance v1, Lcom/google/glass/camera/SharedCameraService$SharedCamera$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCamera$2;-><init>(Lcom/google/glass/camera/SharedCameraService$SharedCamera;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startRecording(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 323
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 325
    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->isServiceConnected:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->startRecording(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 336
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not connected. Will start recording on connect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->onConnectTasks:Ljava/util/List;

    new-instance v1, Lcom/google/glass/camera/SharedCameraService$SharedCamera$4;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCamera$4;-><init>(Lcom/google/glass/camera/SharedCameraService$SharedCamera;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public stopPreview(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 300
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 302
    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->isServiceConnected:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->stopPreview(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 313
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not connected. Will stop the preview on connect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->onConnectTasks:Ljava/util/List;

    new-instance v1, Lcom/google/glass/camera/SharedCameraService$SharedCamera$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCamera$3;-><init>(Lcom/google/glass/camera/SharedCameraService$SharedCamera;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public stopRecording(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 345
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 347
    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->isServiceConnected:Z

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->stopRecording(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 358
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not connected. Will stop recording on connect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->onConnectTasks:Ljava/util/List;

    new-instance v1, Lcom/google/glass/camera/SharedCameraService$SharedCamera$5;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCamera$5;-><init>(Lcom/google/glass/camera/SharedCameraService$SharedCamera;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public takePicture(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 258
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 260
    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->isServiceConnected:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->takePicture(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 271
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not connected. Will take a picture on connect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->onConnectTasks:Ljava/util/List;

    new-instance v1, Lcom/google/glass/camera/SharedCameraService$SharedCamera$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCamera$1;-><init>(Lcom/google/glass/camera/SharedCameraService$SharedCamera;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
