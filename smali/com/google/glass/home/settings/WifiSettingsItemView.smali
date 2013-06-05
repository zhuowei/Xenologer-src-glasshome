.class public Lcom/google/glass/home/settings/WifiSettingsItemView;
.super Lcom/google/glass/home/settings/WifiApView;
.source "WifiSettingsItemView.java"


# static fields
.field private static final ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connManager:Landroid/net/ConnectivityManager;

.field private connected:Z

.field private final connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

.field private cummulativeScanResults:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private inetState:Lcom/google/glass/util/InetConnectionState;

.field private lastCummulativeScanResults:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private scanCount:I

.field private scannedNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final statusReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private wifiHelper:Lcom/google/glass/util/WifiHelper;

.field private wifiInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private final wifiScanCallback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/home/settings/WifiSettingsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/WifiApView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v0, Lcom/google/glass/home/settings/WifiSettingsItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/settings/WifiSettingsItemView$1;-><init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    .line 72
    new-instance v0, Lcom/google/glass/home/settings/WifiSettingsItemView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/settings/WifiSettingsItemView$2;-><init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->statusReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 84
    new-instance v0, Lcom/google/glass/home/settings/WifiSettingsItemView$3;

    invoke-direct {v0, p0}, Lcom/google/glass/home/settings/WifiSettingsItemView$3;-><init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiScanCallback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    .line 115
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 116
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connManager:Landroid/net/ConnectivityManager;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/settings/WifiSettingsItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->update()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/settings/WifiSettingsItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scanCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/google/glass/home/settings/WifiSettingsItemView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scanCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scanCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/settings/WifiSettingsItemView;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->cummulativeScanResults:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/home/settings/WifiSettingsItemView;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->lastCummulativeScanResults:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/glass/home/settings/WifiSettingsItemView;)Lcom/google/glass/util/WifiHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/settings/WifiSettingsItemView;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/settings/WifiSettingsItemView;Landroid/net/wifi/WifiInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/home/settings/WifiSettingsItemView;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->statusReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method private cancelWifiInfoTask()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiInfoTask:Landroid/os/AsyncTask;

    .line 348
    :cond_0
    return-void
.end method

.method private update()V
    .locals 15

    .prologue
    .line 132
    iget-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connManager:Landroid/net/ConnectivityManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 134
    .local v5, netInfo:Landroid/net/NetworkInfo;
    sget v12, Lcom/google/glass/home/R$id;->wifi_network_name:I

    invoke-virtual {p0, v12}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/widget/TypophileTextView;

    .line 135
    .local v6, networkNameLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v12, Lcom/google/glass/home/R$id;->wifi_data_state:I

    invoke-virtual {p0, v12}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    .line 136
    .local v2, dataStateLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v12, Lcom/google/glass/home/R$id;->wifi_connection_state:I

    invoke-virtual {p0, v12}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    .line 138
    .local v0, connectionStateLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v12, Lcom/google/glass/home/R$id;->wifi_other_networks:I

    invoke-virtual {p0, v12}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/glass/widget/TypophileTextView;

    .line 140
    .local v7, otherNetworksLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v12, Lcom/google/glass/home/R$id;->wifi_security:I

    invoke-virtual {p0, v12}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/glass/widget/TypophileTextView;

    .line 142
    .local v10, securityLabel:Lcom/google/glass/widget/TypophileTextView;
    iget-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-nez v12, :cond_0

    .line 143
    sget-object v12, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v13, "Wifi is disabled.  Has someone been mucking around in legacy Settings?"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget v12, Lcom/google/glass/home/R$string;->wifi:I

    invoke-virtual {v6, v12}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 147
    sget v12, Lcom/google/glass/home/R$string;->wifi_disabled:I

    invoke-virtual {v0, v12}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 148
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 149
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 150
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 153
    sget v12, Lcom/google/glass/home/R$id;->wifi_signal_strength:I

    invoke-virtual {p0, v12}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 154
    .local v11, signalStrengthImage:Landroid/widget/ImageView;
    sget v12, Lcom/google/glass/home/R$drawable;->wifi_disconnected:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    .end local v11           #signalStrengthImage:Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->cancelWifiInfoTask()V

    .line 161
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 162
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connected:Z

    .line 163
    new-instance v12, Lcom/google/glass/home/settings/WifiSettingsItemView$4;

    invoke-direct {v12, p0}, Lcom/google/glass/home/settings/WifiSettingsItemView$4;-><init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    iput-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiInfoTask:Landroid/os/AsyncTask;

    .line 174
    iget-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiInfoTask:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Void;

    invoke-virtual {v12, v13, v14}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    :goto_1
    iget-object v9, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->lastCummulativeScanResults:Ljava/util/LinkedList;

    .line 195
    .local v9, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 196
    :cond_1
    iget-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v12}, Lcom/google/glass/util/WifiHelper;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 199
    :cond_2
    if-nez v9, :cond_4

    .line 200
    sget-object v12, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v13, "No networks available, hiding other networks."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_0

    .line 176
    .end local v9           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connected:Z

    .line 178
    sget-object v12, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v13, "Disconnected."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget v12, Lcom/google/glass/home/R$string;->wifi:I

    invoke-virtual {v6, v12}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 182
    sget v12, Lcom/google/glass/home/R$string;->wifi_disconnected:I

    invoke-virtual {v0, v12}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 183
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 184
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 187
    sget v12, Lcom/google/glass/home/R$id;->wifi_signal_strength:I

    invoke-virtual {p0, v12}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 188
    .restart local v11       #signalStrengthImage:Landroid/widget/ImageView;
    sget v12, Lcom/google/glass/home/R$drawable;->wifi_disconnected:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_1

    .line 208
    .end local v11           #signalStrengthImage:Landroid/widget/ImageView;
    .restart local v9       #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_4
    new-instance v12, Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(I)V

    iput-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scannedNetworks:Ljava/util/HashMap;

    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, foundOpenWifi:Z
    if-eqz v9, :cond_8

    .line 211
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 214
    .local v8, result:Landroid/net/wifi/ScanResult;
    iget-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scannedNetworks:Ljava/util/HashMap;

    iget-object v13, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 219
    iget-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 220
    .local v1, current:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 226
    :cond_6
    iget-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v12, v8}, Lcom/google/glass/util/WifiHelper;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v12

    sget-object v13, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne v12, v13, :cond_7

    .line 227
    const/4 v3, 0x1

    .line 228
    sget-object v12, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Found open network: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_7
    iget-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scannedNetworks:Ljava/util/HashMap;

    iget-object v13, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 235
    .end local v1           #current:Landroid/net/wifi/WifiInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #result:Landroid/net/wifi/ScanResult;
    :cond_8
    iget-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scannedNetworks:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 236
    sget-object v12, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v13, "No networks available, hiding other networks."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 239
    :cond_9
    if-eqz v3, :cond_a

    .line 240
    sget-object v12, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v13, "Open networks available."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget v12, Lcom/google/glass/home/R$string;->wifi_open_networks_available:I

    invoke-virtual {v7, v12}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 246
    :goto_3
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 243
    :cond_a
    sget-object v12, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v13, "Networks available."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget v12, Lcom/google/glass/home/R$string;->wifi_networks_available:I

    invoke-virtual {v7, v12}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    goto :goto_3
.end method

.method private updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 13
    .parameter "wifiInfo"

    .prologue
    .line 251
    sget v11, Lcom/google/glass/home/R$id;->wifi_network_name:I

    invoke-virtual {p0, v11}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/glass/widget/TypophileTextView;

    .line 252
    .local v5, networkNameLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v11, Lcom/google/glass/home/R$id;->wifi_data_state:I

    invoke-virtual {p0, v11}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    .line 253
    .local v2, dataStateLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v11, Lcom/google/glass/home/R$id;->wifi_connection_state:I

    invoke-virtual {p0, v11}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 255
    .local v1, connectionStateLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v11, Lcom/google/glass/home/R$id;->wifi_security:I

    invoke-virtual {p0, v11}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/glass/widget/TypophileTextView;

    .line 258
    .local v7, securityLabel:Lcom/google/glass/widget/TypophileTextView;
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, ssid:Ljava/lang/String;
    invoke-virtual {v5, v9}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const/4 v6, 0x0

    .line 263
    .local v6, security:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 264
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x22

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, escapedSsid:Ljava/lang/String;
    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eqz v11, :cond_1

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 267
    :cond_1
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 269
    :cond_2
    const-string v6, "WPA"

    goto :goto_0

    .line 270
    :cond_3
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 271
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 272
    const-string v6, "WEP"

    goto :goto_0

    .line 279
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #escapedSsid:Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 280
    invoke-virtual {v7, v6}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 287
    :goto_1
    sget v11, Lcom/google/glass/home/R$id;->wifi_signal_strength:I

    invoke-virtual {p0, v11}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 288
    .local v8, signalStrengthImage:Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v11

    iget-object v12, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiLevels:Lcom/google/glass/home/settings/WifiLevels;

    invoke-virtual {v12}, Lcom/google/glass/home/settings/WifiLevels;->getNumWifiLevels()I

    move-result v12

    invoke-static {v11, v12}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v10

    .line 292
    .local v10, strength:I
    sget v11, Lcom/google/glass/home/R$string;->wifi_connected:I

    invoke-virtual {v1, v11}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 293
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 295
    iget-object v11, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    invoke-virtual {v11}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 296
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 302
    :goto_2
    iget-object v11, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiLevels:Lcom/google/glass/home/settings/WifiLevels;

    invoke-virtual {v11, v10}, Lcom/google/glass/home/settings/WifiLevels;->getImageResourceForStrength(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    return-void

    .line 283
    .end local v8           #signalStrengthImage:Landroid/widget/ImageView;
    .end local v10           #strength:I
    :cond_5
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_1

    .line 298
    .restart local v8       #signalStrengthImage:Landroid/widget/ImageView;
    .restart local v10       #strength:I
    :cond_6
    iget-object v11, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiLevels:Lcom/google/glass/home/settings/WifiLevels;

    invoke-virtual {v11}, Lcom/google/glass/home/settings/WifiLevels;->getNumWifiLevels()I

    move-result v11

    add-int/2addr v10, v11

    .line 299
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected initialize()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/google/glass/home/settings/WifiApView;->initialize()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scanCount:I

    .line 124
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->cummulativeScanResults:Ljava/util/LinkedList;

    .line 125
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->cummulativeScanResults:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->lastCummulativeScanResults:Ljava/util/LinkedList;

    .line 127
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 128
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    .line 129
    return-void
.end method

.method public onConfirm()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->lastCummulativeScanResults:Ljava/util/LinkedList;

    .line 354
    .local v1, scanResults:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->cummulativeScanResults:Ljava/util/LinkedList;

    .line 358
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    .end local v1           #scanResults:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 361
    .restart local v1       #scanResults:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/WifiHelper;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 362
    .local v2, scanResults2:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_3

    .line 364
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 367
    .end local v2           #scanResults2:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_3
    const-string v3, "scan_results"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 368
    iget-boolean v3, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connected:Z

    if-nez v3, :cond_4

    .line 369
    const-string v3, "join"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 371
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 372
    return v5
.end method

.method public onLoad()V
    .locals 3

    .prologue
    .line 309
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/WifiSettingsItemView$5;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/WifiSettingsItemView$5;-><init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 317
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->update()V

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scanCount:I

    .line 320
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->cummulativeScanResults:Ljava/util/LinkedList;

    .line 321
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiScanCallback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/WifiHelper;->startScan(ZLcom/google/glass/util/WifiHelper$WifiScanCallback;)V

    .line 322
    sget-object v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Started wifi scan."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 327
    invoke-super {p0}, Lcom/google/glass/home/settings/WifiApView;->onUnload()V

    .line 328
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->release()V

    .line 329
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->removeListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 332
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/WifiSettingsItemView$6;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/WifiSettingsItemView$6;-><init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 340
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->cancelWifiInfoTask()V

    .line 341
    return-void
.end method
