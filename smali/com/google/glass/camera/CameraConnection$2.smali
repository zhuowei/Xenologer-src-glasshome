.class Lcom/google/glass/camera/CameraConnection$2;
.super Ljava/lang/Object;
.source "CameraConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/CameraConnection;->startPreview(Lcom/google/glass/camera/SharedCameraClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraConnection;

.field final synthetic val$client:Lcom/google/glass/camera/SharedCameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/glass/camera/CameraConnection$2;->this$0:Lcom/google/glass/camera/CameraConnection;

    iput-object p2, p0, Lcom/google/glass/camera/CameraConnection$2;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Lcom/google/glass/camera/CameraConnection;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending start preview."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/google/glass/camera/CameraConnection$2;->this$0:Lcom/google/glass/camera/CameraConnection;

    iget-object v0, v0, Lcom/google/glass/camera/CameraConnection;->sharedCameraBinder:Lcom/google/glass/camera/ISharedCameraService;

    iget-object v1, p0, Lcom/google/glass/camera/CameraConnection$2;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    invoke-interface {v0, v1}, Lcom/google/glass/camera/ISharedCameraService;->startPreview(Lcom/google/glass/camera/ISharedCameraClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method
