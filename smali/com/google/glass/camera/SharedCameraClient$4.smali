.class Lcom/google/glass/camera/SharedCameraClient$4;
.super Ljava/lang/Object;
.source "SharedCameraClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraClient;->dispatchCameraAcquired()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient$4;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$4;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraClient;->onCameraAcquired()V

    .line 412
    return-void
.end method
