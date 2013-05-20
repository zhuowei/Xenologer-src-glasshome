.class public Lcom/google/glass/util/WifiHelper;
.super Ljava/lang/Object;
.source "WifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/WifiHelper$6;,
        Lcom/google/glass/util/WifiHelper$Encryption;,
        Lcom/google/glass/util/WifiHelper$WifiScanCallback;,
        Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x1d4c0L

.field public static final HIDDEN_KEY_MGMT_WPA2_PSK:I = 0x4

.field public static final SCAN_COUNTS_PER_REFRESH:I = 0x3

.field public static final SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final VALID_HEX_CHARS:Ljava/util/regex/Pattern;


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private timeoutRunnable:Ljava/lang/Runnable;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    .line 104
    const-string v0, "[0-9a-fA-F]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/WifiHelper;->VALID_HEX_CHARS:Ljava/util/regex/Pattern;

    .line 110
    new-instance v0, Lcom/google/glass/util/WifiHelper$1;

    invoke-direct {v0}, Lcom/google/glass/util/WifiHelper$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/WifiHelper;->SCAN_RESULT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->handler:Landroid/os/Handler;

    .line 124
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    .line 125
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/WifiHelper;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/util/WifiHelper;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelTimeout()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    return-void
.end method

.method private buildWifiConfiguration(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .parameter "ssid"
    .parameter "encryption"
    .parameter "key"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 281
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 282
    .local v1, wifiConfiguration:Landroid/net/wifi/WifiConfiguration;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 283
    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 284
    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 287
    sget-object v2, Lcom/google/glass/util/WifiHelper$6;->$SwitchMap$com$google$glass$util$WifiHelper$Encryption:[I

    invoke-virtual {p2}, Lcom/google/glass/util/WifiHelper$Encryption;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 324
    :goto_0
    return-object v1

    .line 289
    :pswitch_0
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 290
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 291
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 295
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 299
    :pswitch_2
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 300
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 301
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 304
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 307
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 308
    .local v0, keyLength:I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_1

    :cond_0
    sget-object v2, Lcom/google/glass/util/WifiHelper;->VALID_HEX_CHARS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, v2, v5

    .line 313
    :goto_1
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    .line 311
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_1

    .line 316
    .end local v0           #keyLength:I
    :pswitch_3
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 317
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 318
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 321
    sget-object v2, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v3, "WPA EAP chosen, assuming user got EAP cert onto the device somehow."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private cancelConnectivityReceiver()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 384
    :cond_0
    return-void
.end method

.method private cancelScanReceiver()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 391
    :cond_0
    return-void
.end method

.method private cancelTimeout()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v1, "Canceling timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    :cond_0
    return-void
.end method

.method private createConnectivityReceiver(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 400
    new-instance v0, Lcom/google/glass/util/WifiHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/WifiHelper$4;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 430
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.net.wifi.STATE_CHANGE"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    return-void
.end method

.method private isNetworkConnected(Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"

    .prologue
    const/4 v3, 0x0

    .line 348
    iget-object v4, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 349
    .local v1, ni:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    move v0, v3

    .line 352
    .local v0, isConnected:Z
    :goto_0
    if-nez v0, :cond_2

    .line 362
    :cond_0
    :goto_1
    return v3

    .line 349
    .end local v0           #isConnected:Z
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0

    .line 357
    .restart local v0       #isConnected:Z
    :cond_2
    iget-object v4, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 358
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1
.end method

.method private startTimeout(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelTimeout()V

    .line 443
    new-instance v0, Lcom/google/glass/util/WifiHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/WifiHelper$5;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    iput-object v0, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    .line 452
    sget-object v0, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v1, "Starting timeout of 120000 ms."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 9
    .parameter "ssid"
    .parameter "encryption"
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/google/glass/util/WifiHelper;->isNetworkConnected(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    sget-object v5, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v6, "Already connected so ignoring connect request"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-interface {p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnected()V

    .line 278
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v5, 0x3

    sget-object v6, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempting to connect to wifi [ssid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", encryption="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v5, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    if-eq p2, v5, :cond_1

    if-nez p3, :cond_1

    .line 228
    sget-object v5, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v6, "Aborting wifi connect attempt due to absent key for an encrypted network."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-interface {p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v5, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 239
    .local v4, wifiConfigurations:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 240
    .local v3, wifiConfiguration:Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 241
    iget-object v5, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v2

    .line 242
    .local v2, success:Z
    sget-object v5, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing existing network with the same SSID [success="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    .end local v2           #success:Z
    .end local v3           #wifiConfiguration:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/util/WifiHelper;->buildWifiConfiguration(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 249
    .restart local v3       #wifiConfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, p4}, Lcom/google/glass/util/WifiHelper;->createConnectivityReceiver(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 250
    invoke-direct {p0, p4}, Lcom/google/glass/util/WifiHelper;->startTimeout(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 253
    sget-object v5, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v6, "Adding network..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v5, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 255
    .local v1, networkId:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_4

    .line 256
    sget-object v5, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v6, "Failed to add network."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 258
    invoke-interface {p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    goto/16 :goto_0

    .line 261
    :cond_4
    sget-object v5, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enabling network... [networkId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v5, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v5

    if-nez v5, :cond_5

    .line 263
    sget-object v5, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to enable network [networkId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 265
    invoke-interface {p4}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    goto/16 :goto_0

    .line 270
    :cond_5
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/google/glass/util/WifiHelper$3;

    invoke-direct {v6, p0}, Lcom/google/glass/util/WifiHelper$3;-><init>(Lcom/google/glass/util/WifiHelper;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public connectToNetworkId(ILcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 3
    .parameter "networkId"
    .parameter "callback"

    .prologue
    .line 330
    invoke-direct {p0, p2}, Lcom/google/glass/util/WifiHelper;->createConnectivityReceiver(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 331
    invoke-direct {p0, p2}, Lcom/google/glass/util/WifiHelper;->startTimeout(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V

    .line 333
    sget-object v0, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling network... (ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    sget-object v0, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enable network. (ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-interface {p2}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    .line 339
    :cond_0
    return-void
.end method

.method public getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/util/WifiHelper$Encryption;
    .locals 2
    .parameter "scanResult"

    .prologue
    .line 468
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 469
    .local v0, cap:Ljava/lang/String;
    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 476
    :goto_0
    return-object v1

    .line 471
    :cond_0
    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 473
    :cond_1
    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 474
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->WPA_EAP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 476
    :cond_2
    sget-object v1, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecurity(Landroid/net/wifi/WifiConfiguration;)Lcom/google/glass/util/WifiHelper$Encryption;
    .locals 2
    .parameter "config"

    .prologue
    .line 484
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 496
    :goto_0
    return-object v0

    .line 487
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    :cond_1
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA_EAP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WPA:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    .line 496
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->WEP:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    goto :goto_0
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 503
    iget-object v3, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 507
    :goto_0
    return v2

    .line 506
    :cond_0
    iget-object v3, p0, Lcom/google/glass/util/WifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 507
    .local v0, activeInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelScanReceiver()V

    .line 132
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelTimeout()V

    .line 371
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V

    .line 372
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelScanReceiver()V

    .line 373
    return-void
.end method

.method public startScan(Lcom/google/glass/util/WifiHelper$WifiScanCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/util/WifiHelper;->startScan(ZLcom/google/glass/util/WifiHelper$WifiScanCallback;)V

    .line 151
    return-void
.end method

.method public startScan(ZLcom/google/glass/util/WifiHelper$WifiScanCallback;)V
    .locals 5
    .parameter "active"
    .parameter "callback"

    .prologue
    .line 161
    sget-object v1, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v2, "Initiating scan for wifi."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/google/glass/util/WifiHelper;->cancelScanReceiver()V

    .line 167
    new-instance v1, Lcom/google/glass/util/WifiHelper$2;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/util/WifiHelper$2;-><init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiScanCallback;)V

    iput-object v1, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 187
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->scanReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    if-eqz p1, :cond_0

    .line 191
    :try_start_0
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "startScanActive"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v2, "Started active wifi scan."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 206
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start active wifi scan: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 195
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start active wifi scan: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 197
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    sget-object v1, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start active wifi scan: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 199
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/NoSuchMethodException;
    sget-object v1, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start active wifi scan: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 203
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/WifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 204
    sget-object v1, Lcom/google/glass/util/WifiHelper;->TAG:Ljava/lang/String;

    const-string v2, "Started passive wifi scan."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
