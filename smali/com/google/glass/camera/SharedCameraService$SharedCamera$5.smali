.class Lcom/google/glass/camera/SharedCameraService$SharedCamera$5;
.super Ljava/lang/Object;
.source "SharedCameraService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraService$SharedCamera;->stopRecording(Lcom/google/glass/camera/SharedCameraClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

.field final synthetic val$client:Lcom/google/glass/camera/SharedCameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraService$SharedCamera;Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera$5;->this$0:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera$5;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera$5;->this$0:Lcom/google/glass/camera/SharedCameraService$SharedCamera;

    #getter for: Lcom/google/glass/camera/SharedCameraService$SharedCamera;->sharedCameraBinder:Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraService$SharedCamera;->access$500(Lcom/google/glass/camera/SharedCameraService$SharedCamera;)Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraService$SharedCamera$5;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/SharedCameraService$SharedCameraBinder;->stopRecording(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 351
    return-void
.end method
