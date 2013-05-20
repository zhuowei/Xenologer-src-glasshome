.class Lcom/google/glass/camera/SharedCameraManager$1;
.super Landroid/os/Handler;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/SharedCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraManager;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$1;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 144
    invoke-virtual {p0, v1}, Lcom/google/glass/camera/SharedCameraManager$1;->removeMessages(I)V

    .line 146
    const/4 v0, 0x0

    const-string v1, "Prepare camera timed out."

    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$1$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraManager$1$1;-><init>(Lcom/google/glass/camera/SharedCameraManager$1;)V

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager$1$1;->enqueue()V

    .line 163
    :cond_0
    return-void
.end method
