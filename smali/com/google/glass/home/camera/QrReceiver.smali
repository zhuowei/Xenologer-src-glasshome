.class public Lcom/google/glass/home/camera/QrReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "QrReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    const-string v1, "com.google.glass.action.PROCESS_BARCODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    new-instance v1, Lcom/google/glass/barcode/QrHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/barcode/QrHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/google/glass/barcode/QrHelper;->fromIntent(Landroid/content/Intent;)Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v0

    .line 18
    .local v0, barcode:Lcom/google/android/libraries/barhopper/Barcode;
    new-instance v1, Lcom/google/glass/home/camera/QrCodeHandler;

    invoke-direct {v1, p1}, Lcom/google/glass/home/camera/QrCodeHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/google/glass/home/camera/QrCodeHandler;->handle(Lcom/google/android/libraries/barhopper/Barcode;)Z

    .line 20
    .end local v0           #barcode:Lcom/google/android/libraries/barhopper/Barcode;
    :cond_0
    return-void
.end method
