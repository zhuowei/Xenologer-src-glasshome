.class public Lcom/google/glass/barcode/QrHelper;
.super Ljava/lang/Object;
.source "QrHelper.java"


# static fields
.field public static final ACTION_PROCESS_BARCODE:Ljava/lang/String; = "com.google.glass.action.PROCESS_BARCODE"

.field private static final EXTRA_DISPLAY_VALUE:Ljava/lang/String; = "display_value"

.field private static final EXTRA_FORMAT:Ljava/lang/String; = "format"

.field private static final EXTRA_HAS_WIFI:Ljava/lang/String; = "has_wifi"

.field private static final EXTRA_RAW_VALUE:Ljava/lang/String; = "raw_value"

.field private static final EXTRA_VALUE_FORMAT:Ljava/lang/String; = "value_format"

.field private static final EXTRA_WIFI_ENCRYPTION_TYPE:Ljava/lang/String; = "wifi_encryption_type"

.field private static final EXTRA_WIFI_PASSWORD:Ljava/lang/String; = "wifi_password"

.field private static final EXTRA_WIFI_SSID:Ljava/lang/String; = "wifi_ssid"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/glass/barcode/QrHelper;->context:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public fromIntent(Landroid/content/Intent;)Lcom/google/android/libraries/barhopper/Barcode;
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode;

    invoke-direct {v0}, Lcom/google/android/libraries/barhopper/Barcode;-><init>()V

    .line 60
    .local v0, barcode:Lcom/google/android/libraries/barhopper/Barcode;
    const-string v1, "raw_value"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    .line 61
    const-string v1, "display_value"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    .line 62
    const-string v1, "value_format"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    .line 63
    const-string v1, "format"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    .line 64
    const-string v1, "has_wifi"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    invoke-direct {v1}, Lcom/google/android/libraries/barhopper/Barcode$WiFi;-><init>()V

    iput-object v1, v0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    .line 66
    iget-object v1, v0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    const-string v2, "wifi_encryption_type"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->encryptionType:I

    .line 68
    iget-object v1, v0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    const-string v2, "wifi_password"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->password:Ljava/lang/String;

    .line 69
    iget-object v1, v0, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    const-string v2, "wifi_ssid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->ssid:Ljava/lang/String;

    .line 71
    :cond_0
    return-object v0
.end method

.method public sendBarcode(Lcom/google/android/libraries/barhopper/Barcode;)V
    .locals 3
    .parameter "barcode"

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.PROCESS_BARCODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "raw_value"

    iget-object v2, p1, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "display_value"

    iget-object v2, p1, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "value_format"

    iget v2, p1, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const-string v1, "format"

    iget v2, p1, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    iget-object v1, p1, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "has_wifi"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    const-string v1, "wifi_encryption_type"

    iget-object v2, p1, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iget v2, v2, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->encryptionType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    const-string v1, "wifi_password"

    iget-object v2, p1, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iget-object v2, v2, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "wifi_ssid"

    iget-object v2, p1, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    iget-object v2, v2, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/google/glass/barcode/QrHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    return-void

    .line 52
    :cond_0
    const-string v1, "has_wifi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
