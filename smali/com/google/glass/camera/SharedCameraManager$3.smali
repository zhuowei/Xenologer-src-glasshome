.class Lcom/google/glass/camera/SharedCameraManager$3;
.super Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraManager;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager;)V
    .locals 1
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$3;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/camera/SharedCameraManager$CameraManipulation;-><init>(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraManager$1;)V

    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$3;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #calls: Lcom/google/glass/camera/SharedCameraManager;->preloadCameraSynchronously()Z
    invoke-static {v0}, Lcom/google/glass/camera/SharedCameraManager;->access$3200(Lcom/google/glass/camera/SharedCameraManager;)Z

    .line 536
    return-void
.end method
