.class Lcom/google/glass/camera/SharedCameraClient$10;
.super Ljava/lang/Object;
.source "SharedCameraClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraClient;->dispatchBarcodeFound(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraClient;

.field final synthetic val$barcode:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraClient;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient$10;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraClient$10;->val$barcode:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$10;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$10;->val$barcode:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/SharedCameraClient;->onBarcodeFound(Landroid/content/Intent;)V

    .line 478
    return-void
.end method
