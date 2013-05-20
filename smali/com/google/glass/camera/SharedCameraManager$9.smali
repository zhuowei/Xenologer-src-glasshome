.class Lcom/google/glass/camera/SharedCameraManager$9;
.super Ljava/lang/Object;
.source "SharedCameraManager.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraManager;->startRecordingSynchronously(Lcom/google/glass/camera/SharedCameraClient;)Z
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
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$9;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraManager$9;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mediaRecorder"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1181
    packed-switch p2, :pswitch_data_0

    .line 1201
    :goto_0
    return-void

    .line 1183
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$9;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v1, "Maximum video duration reached."

    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1184
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$9$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraManager$9$1;-><init>(Lcom/google/glass/camera/SharedCameraManager$9;)V

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager$9$1;->enqueue()V

    goto :goto_0

    .line 1192
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraManager$9;->val$client:Lcom/google/glass/camera/SharedCameraClient;

    const-string v1, "Maximum video file size reached."

    invoke-static {v0, v1}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V

    .line 1193
    new-instance v0, Lcom/google/glass/camera/SharedCameraManager$9$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraManager$9$2;-><init>(Lcom/google/glass/camera/SharedCameraManager$9;)V

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraManager$9$2;->enqueue()V

    goto :goto_0

    .line 1181
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
