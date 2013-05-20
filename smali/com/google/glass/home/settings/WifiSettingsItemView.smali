.class public Lcom/google/glass/home/settings/WifiSettingsItemView;
.super Lcom/google/glass/home/settings/WifiApView;
.source "WifiSettingsItemView.java"


# static fields
.field private static final ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
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
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/WifiApView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Lcom/google/glass/home/settings/WifiSettingsItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/settings/WifiSettingsItemView$1;-><init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    .line 68
    new-instance v0, Lcom/google/glass/home/settings/WifiSettingsItemView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/settings/WifiSettingsItemView$2;-><init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->statusReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 80
    new-instance v0, Lcom/google/glass/home/settings/WifiSettingsItemView$3;

    invoke-direct {v0, p0}, Lcom/google/glass/home/settings/WifiSettingsItemView$3;-><init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiScanCallback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    .line 110
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

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/settings/WifiSettingsItemView;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->statusReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method private update()V
    .locals 25

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "wifi"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    .line 126
    .local v21, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "connectivity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 128
    .local v3, connManager:Landroid/net/ConnectivityManager;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 130
    .local v10, netInfo:Landroid/net/NetworkInfo;
    sget v22, Lcom/google/glass/home/R$id;->wifi_network_name:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/glass/widget/TypophileTextView;

    .line 131
    .local v11, networkNameLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v22, Lcom/google/glass/home/R$id;->wifi_data_state:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/widget/TypophileTextView;

    .line 132
    .local v6, dataStateLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v22, Lcom/google/glass/home/R$id;->wifi_connection_state:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/TypophileTextView;

    .line 134
    .local v4, connectionStateLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v22, Lcom/google/glass/home/R$id;->wifi_other_networks:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/glass/widget/TypophileTextView;

    .line 136
    .local v12, otherNetworksLabel:Lcom/google/glass/widget/TypophileTextView;
    sget v22, Lcom/google/glass/home/R$id;->wifi_security:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/glass/widget/TypophileTextView;

    .line 138
    .local v16, securityLabel:Lcom/google/glass/widget/TypophileTextView;
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v22

    if-nez v22, :cond_0

    .line 139
    sget-object v22, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v23, "Wifi is disabled.  Has someone been mucking around in legacy Settings?"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget v22, Lcom/google/glass/home/R$string;->wifi:I

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 143
    sget v22, Lcom/google/glass/home/R$string;->wifi_disabled:I

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 145
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 146
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 149
    sget v22, Lcom/google/glass/home/R$id;->wifi_signal_strength:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 150
    .local v17, signalStrengthImage:Landroid/widget/ImageView;
    sget v22, Lcom/google/glass/home/R$drawable;->wifi_disconnected:I

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    :goto_0
    return-void

    .line 154
    .end local v17           #signalStrengthImage:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 155
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/glass/home/settings/WifiSettingsItemView;->connected:Z

    .line 158
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v20

    .line 159
    .local v20, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v18

    .line 160
    .local v18, ssid:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const/4 v15, 0x0

    .line 164
    .local v15, security:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 165
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x22

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x22

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, escapedSsid:Ljava/lang/String;
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v22, v0

    if-eqz v22, :cond_2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 168
    :cond_2
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/BitSet;->get(I)Z

    move-result v22

    if-nez v22, :cond_3

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Ljava/util/BitSet;->get(I)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 170
    :cond_3
    const-string v15, "WPA"

    goto :goto_1

    .line 171
    :cond_4
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/BitSet;->get(I)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 172
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 173
    const-string v15, "WEP"

    goto :goto_1

    .line 180
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #escapedSsid:Ljava/lang/String;
    :cond_5
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 181
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 188
    :goto_2
    sget v22, Lcom/google/glass/home/R$id;->wifi_signal_strength:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 189
    .restart local v17       #signalStrengthImage:Landroid/widget/ImageView;
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiLevels:Lcom/google/glass/home/settings/WifiLevels;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/glass/home/settings/WifiLevels;->getNumWifiLevels()I

    move-result v23

    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v19

    .line 193
    .local v19, strength:I
    sget v22, Lcom/google/glass/home/R$string;->wifi_connected:I

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 197
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 203
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiLevels:Lcom/google/glass/home/settings/WifiLevels;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiLevels;->getImageResourceForStrength(I)I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v15           #security:Ljava/lang/String;
    .end local v18           #ssid:Ljava/lang/String;
    .end local v19           #strength:I
    .end local v20           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->lastCummulativeScanResults:Ljava/util/LinkedList;

    .line 224
    .local v14, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 225
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/glass/util/WifiHelper;->getScanResults()Ljava/util/List;

    move-result-object v14

    .line 228
    :cond_7
    if-nez v14, :cond_b

    .line 229
    sget-object v22, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v23, "No networks available, hiding other networks."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 184
    .end local v14           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v17           #signalStrengthImage:Landroid/widget/ImageView;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v15       #security:Ljava/lang/String;
    .restart local v18       #ssid:Ljava/lang/String;
    .restart local v20       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_8
    const/16 v22, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 199
    .restart local v17       #signalStrengthImage:Landroid/widget/ImageView;
    .restart local v19       #strength:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiLevels:Lcom/google/glass/home/settings/WifiLevels;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/glass/home/settings/WifiLevels;->getNumWifiLevels()I

    move-result v22

    add-int v19, v19, v22

    .line 200
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_3

    .line 205
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v15           #security:Ljava/lang/String;
    .end local v17           #signalStrengthImage:Landroid/widget/ImageView;
    .end local v18           #ssid:Ljava/lang/String;
    .end local v19           #strength:I
    .end local v20           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/glass/home/settings/WifiSettingsItemView;->connected:Z

    .line 207
    sget-object v22, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v23, "Disconnected."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget v22, Lcom/google/glass/home/R$string;->wifi:I

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 211
    sget v22, Lcom/google/glass/home/R$string;->wifi_disconnected:I

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 213
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 216
    sget v22, Lcom/google/glass/home/R$id;->wifi_signal_strength:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 217
    .restart local v17       #signalStrengthImage:Landroid/widget/ImageView;
    sget v22, Lcom/google/glass/home/R$drawable;->wifi_disconnected:I

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    const/16 v22, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 237
    .restart local v14       #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_b
    new-instance v22, Ljava/util/HashMap;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/home/settings/WifiSettingsItemView;->scannedNetworks:Ljava/util/HashMap;

    .line 238
    const/4 v8, 0x0

    .line 239
    .local v8, foundOpenWifi:Z
    if-eqz v14, :cond_f

    .line 240
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    .line 243
    .local v13, result:Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scannedNetworks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 248
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 249
    .local v5, current:Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v22

    iget-object v0, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 255
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/google/glass/util/WifiHelper;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Lcom/google/glass/util/WifiHelper$Encryption;

    move-result-object v22

    sget-object v23, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 256
    const/4 v8, 0x1

    .line 257
    sget-object v22, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Found open network: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scannedNetworks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 264
    .end local v5           #current:Landroid/net/wifi/WifiInfo;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #result:Landroid/net/wifi/ScanResult;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scannedNetworks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 265
    sget-object v22, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v23, "No networks available, hiding other networks."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 268
    :cond_10
    if-eqz v8, :cond_11

    .line 269
    sget-object v22, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v23, "Open networks available."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget v22, Lcom/google/glass/home/R$string;->wifi_open_networks_available:I

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 275
    :goto_6
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 272
    :cond_11
    sget-object v22, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v23, "Networks available."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget v22, Lcom/google/glass/home/R$string;->wifi_networks_available:I

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    goto :goto_6
.end method


# virtual methods
.method protected initialize()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/google/glass/home/settings/WifiApView;->initialize()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scanCount:I

    .line 117
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->cummulativeScanResults:Ljava/util/LinkedList;

    .line 118
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->cummulativeScanResults:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->lastCummulativeScanResults:Ljava/util/LinkedList;

    .line 120
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    .line 122
    return-void
.end method

.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x1

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->lastCummulativeScanResults:Ljava/util/LinkedList;

    .line 318
    .local v1, scanResults:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->cummulativeScanResults:Ljava/util/LinkedList;

    .line 322
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    .end local v1           #scanResults:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 325
    .restart local v1       #scanResults:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/WifiHelper;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 326
    .local v2, scanResults2:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_3

    .line 328
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 331
    .end local v2           #scanResults2:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_3
    const-string v3, "scan_results"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 332
    iget-boolean v3, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connected:Z

    if-nez v3, :cond_4

    .line 333
    const-string v3, "join"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 336
    return v4
.end method

.method public onLoad()V
    .locals 3

    .prologue
    .line 283
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/WifiSettingsItemView$4;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/WifiSettingsItemView$4;-><init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 290
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 291
    invoke-direct {p0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->update()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->scanCount:I

    .line 294
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->cummulativeScanResults:Ljava/util/LinkedList;

    .line 295
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiScanCallback:Lcom/google/glass/util/WifiHelper$WifiScanCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/WifiHelper;->startScan(ZLcom/google/glass/util/WifiHelper$WifiScanCallback;)V

    .line 296
    sget-object v0, Lcom/google/glass/home/settings/WifiSettingsItemView;->TAG:Ljava/lang/String;

    const-string v1, "Started wifi scan."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Lcom/google/glass/home/settings/WifiApView;->onUnload()V

    .line 302
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->release()V

    .line 303
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->removeListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 306
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/WifiSettingsItemView$5;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/WifiSettingsItemView$5;-><init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method
