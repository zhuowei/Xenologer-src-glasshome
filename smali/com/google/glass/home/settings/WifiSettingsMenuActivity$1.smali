.class Lcom/google/glass/home/settings/WifiSettingsMenuActivity$1;
.super Ljava/lang/Object;
.source "WifiSettingsMenuActivity.java"

# interfaces
.implements Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/WifiSettingsMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$1;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarcodeScanned(Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 1
    .parameter "barcode"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$1;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->handleBarcode(Lcom/google/android/libraries/barhopper/Barcode;)Z
    invoke-static {v0, p1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$100(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;Lcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v0

    return v0
.end method

.method public onError(Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;)V
    .locals 3
    .parameter "barcodeError"

    .prologue
    .line 80
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->CAMERA:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    if-ne p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$1;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    sget-object v1, Lcom/google/glass/logging/GlassError;->CAMERA_ERROR:Lcom/google/glass/logging/GlassError;

    invoke-static {v0, v1}, Lcom/google/glass/logging/GlassError;->report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$1;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->setResult(I)V

    .line 83
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$1;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->finish()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$1;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$000(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected barcode error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
