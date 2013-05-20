.class Lcom/google/glass/camera/SharedCameraClient$13;
.super Ljava/lang/Object;
.source "SharedCameraClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraClient;->dispatchStopRecording(Lcom/google/glass/camera/Video;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraClient;

.field final synthetic val$reachedMaxDuration:Z

.field final synthetic val$storageFull:Z

.field final synthetic val$video:Lcom/google/glass/camera/Video;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Video;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient$13;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraClient$13;->val$video:Lcom/google/glass/camera/Video;

    iput-boolean p3, p0, Lcom/google/glass/camera/SharedCameraClient$13;->val$reachedMaxDuration:Z

    iput-boolean p4, p0, Lcom/google/glass/camera/SharedCameraClient$13;->val$storageFull:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$13;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$13;->val$video:Lcom/google/glass/camera/Video;

    iget-boolean v2, p0, Lcom/google/glass/camera/SharedCameraClient$13;->val$reachedMaxDuration:Z

    iget-boolean v3, p0, Lcom/google/glass/camera/SharedCameraClient$13;->val$storageFull:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/camera/SharedCameraClient;->onStopRecording(Lcom/google/glass/camera/Video;ZZ)V

    .line 471
    return-void
.end method
