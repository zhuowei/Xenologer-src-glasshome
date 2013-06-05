.class Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;
.super Landroid/os/Binder;
.source "SharedCameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/SharedCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedCameraBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraService;


# direct methods
.method private constructor <init>(Lcom/google/glass/camera/SharedCameraService;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/camera/SharedCameraService;Lcom/google/glass/camera/SharedCameraService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;-><init>(Lcom/google/glass/camera/SharedCameraService;)V

    return-void
.end method


# virtual methods
.method public startPreview(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraManager;->startPreview(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 169
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not started. Will start preview on startup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->onStartUpTasks:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$400(Lcom/google/glass/camera/SharedCameraService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$2;-><init>(Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startRecording(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraManager;->startRecording(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 199
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not started. Will start recording on startup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->onStartUpTasks:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$400(Lcom/google/glass/camera/SharedCameraService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$4;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$4;-><init>(Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public stopPreview(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraManager;->stopPreview(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not started. Will stop the preview on startup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->onStartUpTasks:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$400(Lcom/google/glass/camera/SharedCameraService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$3;-><init>(Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public stopRecording(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraManager;->stopRecording(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not started. Will stop recording on startup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->onStartUpTasks:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$400(Lcom/google/glass/camera/SharedCameraService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$5;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$5;-><init>(Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public takePicture(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 2
    .parameter "client"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->cameraManager:Lcom/google/glass/camera/SharedCameraManager;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$300(Lcom/google/glass/camera/SharedCameraService;)Lcom/google/glass/camera/SharedCameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraManager;->takePicture(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/SharedCameraService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not started. Will take a picture on startup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->this$0:Lcom/google/glass/camera/SharedCameraService;

    #getter for: Lcom/google/glass/camera/SharedCameraService;->onStartUpTasks:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService;->access$400(Lcom/google/glass/camera/SharedCameraService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder$1;-><init>(Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
