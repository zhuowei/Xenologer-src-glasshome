.class Lcom/google/glass/camera/SharedCameraManager$CameraParameter;
.super Ljava/lang/Object;
.source "SharedCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/SharedCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraParameter"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraManager;

.field public final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;->key:Ljava/lang/String;

    .line 513
    iput-object p3, p0, Lcom/google/glass/camera/SharedCameraManager$CameraParameter;->value:Ljava/lang/String;

    .line 514
    return-void
.end method
