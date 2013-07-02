.class public Lcom/google/glass/util/SetupHelper;
.super Ljava/lang/Object;
.source "SetupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    }
.end annotation


# static fields
.field public static final ACTION_RECONFIGURE_ACCOUNT:Ljava/lang/String; = "com.google.glass.setup.ACTION_RECONFIGURE_ACCOUNT"

.field public static final ACTION_SETUP_COMPLETE:Ljava/lang/String; = "com.google.glass.setup.ACTION_SETUP_COMPLETE"

.field public static final BARCODE_1_PARAM_BT_DEVICE_FOR_PAIR:Ljava/lang/String; = "dp"

.field public static final BARCODE_1_PARAM_ENCRYPTION:Ljava/lang/String; = "enc"

.field public static final BARCODE_1_PARAM_PSK:Ljava/lang/String; = "psk"

.field public static final BARCODE_1_PARAM_SSID:Ljava/lang/String; = "ssid"

.field public static final BARCODE_1_PARAM_TOKEN:Ljava/lang/String; = "code"

.field public static final BARCODE_1_PARAM_USERNAME:Ljava/lang/String; = "email"

.field public static final BARCODE_PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final EXTRA_BT_DEVICE_FOR_PAIR:Ljava/lang/String; = "bt_device_for_pair"

.field public static final EXTRA_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final EXTRA_ENCRYPTION:Ljava/lang/String; = "encryption"

.field public static final EXTRA_PASSWORD:Ljava/lang/String; = "password"

.field public static final EXTRA_PSK:Ljava/lang/String; = "psk"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final EXTRA_USERNAME:Ljava/lang/String; = "username"

.field public static final NONE_STRING:Ljava/lang/String; = "NONE"

.field public static final SETUP_COMPONENT_NAME:Landroid/content/ComponentName; = null

.field private static final TAG:Ljava/lang/String; = null

.field public static final WEP_STRING:Ljava/lang/String; = "WEP"

.field public static final WIFI_SETUP_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final WPA_STRING:Ljava/lang/String; = "WPA"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-class v0, Lcom/google/glass/util/SetupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.setup"

    const-string v2, "com.google.glass.setup.SetupActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 108
    const-string v0, "^([^\\n]+)\\n([^\\n]+)(\\n([^\\n]+))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SetupHelper;->WIFI_SETUP_PATTERN:Ljava/util/regex/Pattern;

    .line 143
    const-string v0, "[^@]+@[^@]+\\.[^@]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/SetupHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method public static checkAndEnableSetup(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 247
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v4, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return v2

    .line 249
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setup does not seem to be installed, skipping reset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 254
    goto :goto_0
.end method

.method public static generateWifiSetupInfo(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"
    .parameter "encryption"
    .parameter "key"

    .prologue
    .line 315
    const-string v0, "NONE"

    .line 316
    .local v0, encryptionString:Ljava/lang/String;
    sget-object v2, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/google/glass/util/WifiHelper$Encryption;->WPA_EAP:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne p1, v2, :cond_3

    .line 318
    :cond_0
    const-string v0, "WPA"

    .line 323
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    if-eqz p2, :cond_2

    .line 329
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 319
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_3
    sget-object v2, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne p1, v2, :cond_1

    .line 320
    const-string v0, "WEP"

    goto :goto_0
.end method

.method public static getWifiSetupInfo(Ljava/lang/String;)Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
    .locals 10
    .parameter "wifiStr"

    .prologue
    const/4 v5, 0x0

    .line 285
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    sget-object v6, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid wifi string "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :goto_0
    return-object v5

    .line 290
    :cond_0
    sget-object v6, Lcom/google/glass/util/SetupHelper;->WIFI_SETUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 291
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_1

    .line 292
    const/4 v6, 0x5

    sget-object v7, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid wifi string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v5}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 295
    :cond_1
    const/4 v6, 0x3

    sget-object v7, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Valid wifi string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v5}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, ssid:Ljava/lang/String;
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, key:Ljava/lang/String;
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 300
    .local v0, encryption:Lcom/google/glass/util/WifiHelper$Encryption;
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, encryptionString:Ljava/lang/String;
    const-string v5, "WPA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 302
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 307
    :cond_2
    :goto_1
    new-instance v5, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;

    invoke-direct {v5, v4, v0, v2}, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;-><init>(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_3
    const-string v5, "WEP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 304
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_1
.end method

.method public static parseBarcodeValue(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "barcodeValue"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 152
    sget-object v6, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid barcode value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v7

    .line 182
    :goto_0
    return-object v6

    .line 156
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v3, parameterList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-static {v3, v6, v8}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v4, parameterMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 165
    .local v2, nameValuePair:Lorg/apache/http/NameValuePair;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 159
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nameValuePair:Lorg/apache/http/NameValuePair;
    .end local v4           #parameterMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    const-string v8, "invalid barcode value"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v6, v8, v9}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v7

    .line 161
    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #parameterMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string v6, "version"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 177
    .local v5, version:I
    if-ne v5, v9, :cond_2

    .line 178
    invoke-static {v4}, Lcom/google/glass/util/SetupHelper;->parseVersion1(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    .line 172
    .end local v5           #version:I
    :catch_1
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    const-string v8, "Invalid barcode version."

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v7

    .line 174
    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #version:I
    :cond_2
    sget-object v6, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported barcode version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v7

    .line 182
    goto :goto_0
.end method

.method private static parseVersion1(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p0, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 193
    const-string v5, "email"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    .local v4, username:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    sget-object v5, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid barcode. Bad email address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :goto_0
    return-object v0

    .line 198
    :cond_0
    sget-object v5, Lcom/google/glass/util/SetupHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    .line 199
    sget-object v5, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    const-string v6, "Invalid barcode. Bad email address."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    :cond_1
    :try_start_0
    const-string v5, "enc"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 208
    .local v2, enc:I
    packed-switch v2, :pswitch_data_0

    .line 219
    sget-object v5, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    const-string v6, "Unknown encryption type value."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v2           #enc:I
    :catch_0
    move-exception v1

    .line 223
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/google/glass/util/SetupHelper;->TAG:Ljava/lang/String;

    const-string v6, "Invalid barcode. Bad email address."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #enc:I
    :pswitch_0
    :try_start_1
    sget-object v5, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    invoke-virtual {v5}, Lcom/google/glass/util/WifiHelper$Encryption;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 227
    .local v3, encryption:Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "username"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v6, "ssid"

    const-string v5, "ssid"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v5, "encryption"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v6, "psk"

    const-string v5, "psk"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v6, "token"

    const-string v5, "code"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v6, "bt_device_for_pair"

    const-string v5, "dp"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #encryption:Ljava/lang/String;
    :pswitch_1
    :try_start_2
    sget-object v5, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    invoke-virtual {v5}, Lcom/google/glass/util/WifiHelper$Encryption;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .restart local v3       #encryption:Ljava/lang/String;
    goto :goto_1

    .line 216
    .end local v3           #encryption:Ljava/lang/String;
    :pswitch_2
    sget-object v5, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    invoke-virtual {v5}, Lcom/google/glass/util/WifiHelper$Encryption;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 217
    .restart local v3       #encryption:Ljava/lang/String;
    goto :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static startSetup(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 276
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method public static wasSetupFinished(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 265
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/google/glass/util/SetupHelper;->SETUP_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
