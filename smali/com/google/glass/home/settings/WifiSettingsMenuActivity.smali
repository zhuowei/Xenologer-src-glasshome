.class public Lcom/google/glass/home/settings/WifiSettingsMenuActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "WifiSettingsMenuActivity.java"


# static fields
.field public static final EXTRA_JOIN:Ljava/lang/String; = "join"

.field public static final EXTRA_SCAN_RESULTS:Ljava/lang/String; = "scan_results"

.field private static final NEW_NETWORK_ID:I = -0x1


# instance fields
.field private apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

.field private barcodeScanLayout:Landroid/view/ViewGroup;

.field private final barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

.field private currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

.field private scannedNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private wasMenuOptionSelected:Z

.field private wifiHelper:Lcom/google/glass/util/WifiHelper;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 73
    invoke-static {}, Lcom/google/glass/barcode/BarcodeScanner;->newBuilder()Lcom/google/glass/barcode/BarcodeScanner$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$1;-><init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/barcode/BarcodeScanner$Builder;->build(Landroid/content/Context;Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;)Lcom/google/glass/barcode/BarcodeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->handleBarcode(Lcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->goBackToTimeline()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->forgetCurrentNetwork()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Lcom/google/glass/home/settings/WifiHorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private animate(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 3
    .parameter "view"
    .parameter "up"
    .parameter "listener"

    .prologue
    .line 459
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$integer;->activity_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTransitionInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 465
    return-void

    .line 459
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private connectToConfiguredNetwork(I)V
    .locals 2
    .parameter "networkId"

    .prologue
    const/4 v1, 0x0

    .line 268
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 269
    invoke-direct {p0, p1, v1, v1, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->connectToNetwork(ILjava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private connectToNetwork(ILjava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V
    .locals 6
    .parameter "networkId"
    .parameter "ssid"
    .parameter "encryption"
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    .line 278
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting to ssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", encryption="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 283
    :cond_0
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v2, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/google/glass/home/R$string;->wifi_menu_connecting:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$drawable;->ic_wifi_medium:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;

    invoke-direct {v3, p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;-><init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    .line 302
    .local v1, connectionDialog:Lcom/google/glass/widget/MessageDialog;
    iput-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    .line 303
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 304
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 306
    new-instance v0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;-><init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;Lcom/google/glass/widget/MessageDialog;)V

    .line 338
    .local v0, callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 339
    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v2, p1, v0}, Lcom/google/glass/util/WifiHelper;->connectToNetworkId(ILcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v2, p2, p3, p4, v0}, Lcom/google/glass/util/WifiHelper;->connect(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    goto :goto_0
.end method

.method private connectToOpenNetwork(Landroid/net/wifi/ScanResult;)V
    .locals 4
    .parameter "scanResult"

    .prologue
    .line 273
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 274
    const/4 v0, -0x1

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    sget-object v2, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->connectToNetwork(ILjava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method private forgetCurrentNetwork()V
    .locals 4

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 262
    .local v0, currentId:I
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 263
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 264
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forgot network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method private static getEncryption(Lcom/google/android/libraries/barhopper/Barcode;)Lcom/google/glass/util/WifiHelper$Encryption;
    .locals 1
    .parameter "barcode"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iget v0, v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->encryptionType:I

    packed-switch v0, :pswitch_data_0

    .line 551
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    :goto_0
    return-object v0

    .line 546
    :pswitch_0
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 548
    :pswitch_1
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTransitionInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 455
    const v0, 0x10a0006

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method private goBackToTimeline()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SettingsHelper;->goToSettings(I)V

    .line 349
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->finish()V

    .line 350
    return-void
.end method

.method private handleBarcode(Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 5
    .parameter "barcode"

    .prologue
    const/16 v2, 0x9

    .line 523
    iget v1, p1, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    if-ne v2, v1, :cond_0

    iget v1, p1, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    if-eq v1, v2, :cond_1

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a WiFi QR code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x0

    .line 540
    :goto_0
    return v1

    .line 528
    :cond_1
    new-instance v0, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;

    iget-object v1, p1, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iget-object v1, v1, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->ssid:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getEncryption(Lcom/google/android/libraries/barhopper/Barcode;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iget-object v3, v3, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;-><init>(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V

    .line 532
    .local v0, wifiSetupInfo:Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->WIFI_BARCODE_SCANNED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 534
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->hideBarcodeViewfinder()V

    .line 535
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setVisibility(I)V

    .line 538
    const/4 v1, -0x1

    iget-object v2, v0, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->ssid:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    iget-object v4, v0, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->key:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->connectToNetwork(ILjava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V

    .line 540
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private hideBarcodeViewfinder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->animate(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 485
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 486
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$6;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$6;-><init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->animate(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 492
    return-void
.end method

.method private setWifiScanResults(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v6, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 416
    .local v0, configuredNetworks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->scannedNetworks:Ljava/util/List;

    .line 417
    sget-object v6, Lcom/google/glass/util/WifiHelper;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 420
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 421
    .local v5, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v6, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->scannedNetworks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 422
    .local v2, existingResult:Landroid/net/wifi/ScanResult;
    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping already scanned result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    .end local v2           #existingResult:Landroid/net/wifi/ScanResult;
    :cond_1
    iget-object v6, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 430
    .local v1, current:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping currently connected network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding ssid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", level="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v6, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->scannedNetworks:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 439
    .end local v1           #current:Landroid/net/wifi/WifiInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_3
    return-void
.end method

.method private showBarcodeViewfinder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 468
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    new-instance v1, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$5;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$5;-><init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->animate(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 475
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 476
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->animate(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 478
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Lcom/google/glass/barcode/BarcodeScanner;->startScanning()V

    .line 479
    return-void
.end method

.method private showScannedNetworks()V
    .locals 3

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "scan_results"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 445
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .restart local v0       #result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->setWifiScanResults(Ljava/util/List;)V

    .line 449
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->scannedNetworks:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setNetworks(Ljava/util/List;)V

    .line 450
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v1}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->show()V

    .line 451
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setSelection(I)V

    .line 452
    return-void
.end method


# virtual methods
.method protected isShowingViewfinder()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 8

    .prologue
    const/16 v7, 0x22

    .line 373
    iget-object v4, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 375
    const/4 v4, 0x0

    .line 409
    :goto_0
    return v4

    .line 378
    :cond_0
    iget-object v4, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v4}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 380
    iget-object v4, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v4}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/glass/home/settings/WifiScanResultsAdapter;->ADD_NETWORK_MANUALLY:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 381
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->showBarcodeViewfinder()V

    .line 405
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 406
    const/4 v4, 0x1

    goto :goto_0

    .line 383
    :cond_1
    iget-object v4, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v4}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 384
    .local v3, result:Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v4, v3}, Lcom/google/glass/util/WifiHelper;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v4

    sget-object v5, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne v4, v5, :cond_2

    .line 385
    invoke-direct {p0, v3}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->connectToOpenNetwork(Landroid/net/wifi/ScanResult;)V

    goto :goto_1

    .line 390
    :cond_2
    const/4 v1, 0x0

    .line 391
    .local v1, configuredNetwork:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 392
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 393
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found encrypted configured network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    move-object v1, v0

    .line 398
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_4
    if-eqz v1, :cond_5

    .line 399
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v4}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->connectToConfiguredNetwork(I)V

    goto :goto_1

    .line 401
    :cond_5
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->showBarcodeViewfinder()V

    goto :goto_1

    .line 409
    .end local v1           #configuredNetwork:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #result:Landroid/net/wifi/ScanResult;
    :cond_6
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onConfirm()Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 188
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 190
    sget v0, Lcom/google/glass/home/R$id;->wifi_aps:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    .line 191
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 7
    .parameter "optionMenu"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 106
    sget v5, Lcom/google/glass/home/R$menu;->wifi_settings_menu:I

    invoke-virtual {p1, v5}, Lcom/google/glass/widget/OptionMenu;->inflateFrom(I)V

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 109
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "join"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    sget v5, Lcom/google/glass/home/R$id;->wifi_menu_join:I

    invoke-virtual {p1, v5}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 111
    sget v5, Lcom/google/glass/home/R$id;->wifi_menu_switch:I

    invoke-virtual {p1, v5}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 117
    :goto_0
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 119
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 120
    .local v2, netInfo:Landroid/net/NetworkInfo;
    sget v5, Lcom/google/glass/home/R$id;->wifi_menu_forget_network:I

    invoke-virtual {p1, v5}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v5, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 123
    return v4

    .line 113
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :cond_1
    sget v5, Lcom/google/glass/home/R$id;->wifi_menu_join:I

    invoke-virtual {p1, v5}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 114
    sget v5, Lcom/google/glass/home/R$id;->wifi_menu_switch:I

    invoke-virtual {p1, v5}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroy()V

    .line 197
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->release()V

    .line 198
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 3
    .parameter "dismissAction"

    .prologue
    const/4 v0, 0x1

    .line 354
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->hideBarcodeViewfinder()V

    .line 356
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v1}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning()V

    .line 368
    :goto_0
    return v0

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v1}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v1}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->hide()V

    .line 363
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 364
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->openOptionsMenu()V

    goto :goto_0

    .line 368
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->setIntent(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 6
    .parameter "selectedItem"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMenuOptionConfirmed item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getCurrentState()Lcom/google/glass/widget/OptionMenu$ItemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/widget/OptionMenu$ItemState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-boolean v1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wasMenuOptionSelected:Z

    .line 141
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    .line 142
    .local v0, selectedId:I
    sget v3, Lcom/google/glass/home/R$id;->wifi_menu_join:I

    if-eq v0, v3, :cond_0

    sget v3, Lcom/google/glass/home/R$id;->wifi_menu_switch:I

    if-ne v0, v3, :cond_1

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->showScannedNetworks()V

    .line 173
    :goto_0
    return v1

    .line 146
    :cond_1
    sget v3, Lcom/google/glass/home/R$id;->wifi_menu_forget_network:I

    if-ne v0, v3, :cond_2

    .line 147
    new-instance v3, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v3, p0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/google/glass/home/R$string;->wifi_menu_forgetting:I

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$drawable;->ic_delete_medium:I

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$string;->wifi_menu_forgotten:I

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAnimated(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$2;

    invoke-direct {v3, p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$2;-><init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->show()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 173
    goto :goto_0
.end method

.method public onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wasMenuOptionSelected:Z

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->goBackToTimeline()V

    .line 181
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 210
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->currentConnectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->isShowingViewfinder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->hideBarcodeViewfinder()V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning()V

    .line 219
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Lcom/google/glass/barcode/BarcodeScanner;->unbindCamera()V

    .line 221
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->deactivate()V

    .line 223
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wasMenuOptionSelected:Z

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->onPrepareSwipe(IFFFFII)Z

    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 227
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 231
    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v2}, Lcom/google/glass/barcode/BarcodeScanner;->bindCamera()V

    .line 233
    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v2}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->activate()V

    .line 234
    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setVisibility(I)V

    .line 236
    sget v2, Lcom/google/glass/home/R$id;->qr_scan:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    .line 237
    iget-object v3, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->barcodeScanLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/google/glass/home/R$id;->viewfinder:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v3, v2}, Lcom/google/glass/barcode/BarcodeScanner;->setViewfinder(Landroid/view/TextureView;)V

    .line 239
    iget-boolean v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->wasMenuOptionSelected:Z

    if-nez v2, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->openOptionsMenu()V

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "wifi_setup_string"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, companionSetupString:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "wifi_setup_string"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 248
    invoke-static {v0}, Lcom/google/glass/util/SetupHelper;->getWifiSetupInfo(Ljava/lang/String;)Lcom/google/glass/util/SetupHelper$WifiSetupInfo;

    move-result-object v1

    .line 249
    .local v1, wifiSetupInfo:Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    if-nez v1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t parse the companion wifi setup string"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v1           #wifiSetupInfo:Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    :cond_0
    :goto_1
    return-void

    .line 242
    .end local v0           #companionSetupString:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    .line 254
    .restart local v0       #companionSetupString:Ljava/lang/String;
    .restart local v1       #wifiSetupInfo:Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    :cond_2
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->WIFI_SETUP_VIA_COMPANION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 255
    const/4 v2, -0x1

    iget-object v3, v1, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->ssid:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    iget-object v5, v1, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->key:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->connectToNetwork(ILjava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    const/4 v1, 0x1

    .line 504
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return v1

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->apsView:Lcom/google/glass/home/settings/WifiHorizontalScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/settings/WifiHorizontalScrollView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/google/glass/home/R$layout;->wifi_menu_activity:I

    return v0
.end method
