.class Lcom/google/glass/camera/SharedCameraManager$2;
.super Ljava/lang/Object;
.source "SharedCameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


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
    .line 181
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraManager$2;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 185
    .local v0, captureTimeNanos:J
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$2;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/glass/camera/SharedCameraManager;->access$400(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/Set;

    move-result-object v5

    monitor-enter v5

    .line 186
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraManager$2;->this$0:Lcom/google/glass/camera/SharedCameraManager;

    #getter for: Lcom/google/glass/camera/SharedCameraManager;->previewingClients:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/glass/camera/SharedCameraManager;->access$400(Lcom/google/glass/camera/SharedCameraManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/camera/SharedCameraClient;

    .line 187
    .local v2, client:Lcom/google/glass/camera/SharedCameraClient;
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/glass/camera/SharedCameraClient;->dispatchPreviewFrame([BJ)V

    goto :goto_0

    .line 189
    .end local v2           #client:Lcom/google/glass/camera/SharedCameraClient;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 193
    return-void
.end method
