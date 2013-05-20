.class Lcom/google/glass/camera/SharedCameraManager$7;
.super Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraManager;->stopRecording(Lcom/google/glass/camera/SharedCameraClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraManager;

.field final synthetic val$client:Lcom/google/glass/camera/SharedCameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$7;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraManager$7;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraManager$1;)V

    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$7;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraManager$7;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->stopRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraManager;->access$2200(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z

    .line 602
    return-void
.end method
