.class public Lcom/google/glass/home/timeline/active/SettingsCoverView;
.super Landroid/widget/LinearLayout;
.source "SettingsCoverView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/HorizontalScrollItem;


# static fields
.field private static final ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final battery:Lcom/google/glass/util/BatteryHelper;

.field private final connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

.field private final green:I

.field private final inetState:Lcom/google/glass/util/InetConnectionState;

.field private isHeadset:Z

.field private isTethered:Z

.field private final red:I

.field private stateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

.field private final tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

.field private final yellow:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/google/glass/home/timeline/active/SettingsCoverView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->TAG:Ljava/lang/String;

    .line 45
    const/16 v0, 0xa

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

    const/4 v1, 0x3

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.glass.action.HEADSET_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsCoverView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$1;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    .line 75
    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    .line 88
    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->stateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 126
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    .local v0, resources:Landroid/content/res/Resources;
    sget v1, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    .line 128
    sget v1, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->red:I

    .line 129
    sget v1, Lcom/google/glass/home/R$color;->state_yellow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I

    .line 131
    new-instance v1, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 132
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-direct {v1, p1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    .line 133
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    .line 135
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$layout;->settings_cover_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateConnectivity()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/glass/home/timeline/active/SettingsCoverView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->isTethered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateBattery()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/glass/home/timeline/active/SettingsCoverView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->isHeadset:Z

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->stateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method private updateAll()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateBattery()V

    .line 222
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateConnectivity()V

    .line 223
    return-void
.end method

.method private updateBattery()V
    .locals 11

    .prologue
    .line 281
    iget-object v7, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v3

    .line 284
    .local v3, state:Lcom/google/glass/util/BatteryHelper$BatteryState;
    sget v7, Lcom/google/glass/home/R$id;->battery_state_image:I

    invoke-virtual {p0, v7}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/settings/BatteryStateImageView;

    .line 286
    .local v0, batteryStateImage:Lcom/google/glass/home/settings/BatteryStateImageView;
    invoke-virtual {v0, v3}, Lcom/google/glass/home/settings/BatteryStateImageView;->update(Lcom/google/glass/util/BatteryHelper$BatteryState;)V

    .line 289
    sget v7, Lcom/google/glass/home/R$id;->battery_state_text:I

    invoke-virtual {p0, v7}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    .local v1, batteryStateText:Landroid/widget/TextView;
    iget v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 291
    .local v2, percent:I
    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    if-eqz v7, :cond_0

    .line 293
    sget v7, Lcom/google/glass/home/R$string;->settings_cover_battery_charged:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 294
    iget v7, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    if-nez v7, :cond_1

    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-eqz v7, :cond_2

    .line 298
    :cond_1
    sget v4, Lcom/google/glass/home/R$string;->settings_cover_battery_percent_charging:I

    .line 302
    .local v4, text:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, textStr:Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    const/16 v7, 0x1e

    if-le v2, v7, :cond_3

    .line 306
    iget v5, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    .line 312
    .local v5, textColor:I
    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 300
    .end local v4           #text:I
    .end local v5           #textColor:I
    .end local v6           #textStr:Ljava/lang/String;
    :cond_2
    sget v4, Lcom/google/glass/home/R$string;->settings_cover_battery_percent:I

    .restart local v4       #text:I
    goto :goto_1

    .line 307
    .restart local v6       #textStr:Ljava/lang/String;
    :cond_3
    const/16 v7, 0xa

    if-le v2, v7, :cond_4

    .line 308
    iget v5, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I

    .restart local v5       #textColor:I
    goto :goto_2

    .line 310
    .end local v5           #textColor:I
    :cond_4
    iget v5, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->red:I

    .restart local v5       #textColor:I
    goto :goto_2
.end method

.method private updateConnectivity()V
    .locals 14

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 232
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 234
    .local v1, connManager:Landroid/net/ConnectivityManager;
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 236
    .local v10, netInfo:Landroid/net/NetworkInfo;
    sget v12, Lcom/google/glass/home/R$id;->data_connection_image:I

    invoke-virtual {p0, v12}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 237
    .local v4, dataConnectionImage:Landroid/widget/ImageView;
    sget v5, Lcom/google/glass/home/R$drawable;->ic_data_off_big:I

    .line 238
    .local v5, dataConnectionImageRes:I
    const/4 v3, 0x0

    .line 239
    .local v3, currentlyConnectedName:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 240
    sget v5, Lcom/google/glass/home/R$drawable;->ic_data_wifi_big:I

    .line 241
    sget v12, Lcom/google/glass/home/R$string;->wifi:I

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 249
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    sget v12, Lcom/google/glass/home/R$id;->data_connection_text:I

    invoke-virtual {p0, v12}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 252
    .local v6, dataConnectionText:Landroid/widget/TextView;
    sget v12, Lcom/google/glass/home/R$id;->extra_info:I

    invoke-virtual {p0, v12}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 253
    .local v9, extraInfo:Landroid/widget/TextView;
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    if-eqz v3, :cond_5

    .line 255
    sget v8, Lcom/google/glass/home/R$string;->settings_cover_connection_issue:I

    .line 256
    .local v8, dataConnectionTextRes:I
    iget v7, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I

    .line 257
    .local v7, dataConnectionTextColor:I
    iget-object v12, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    invoke-virtual {v12}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 258
    sget v8, Lcom/google/glass/home/R$string;->settings_cover_connection_data:I

    .line 259
    iget v7, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    .line 264
    :goto_1
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-virtual {v2, v8, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, text:Ljava/lang/String;
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    .end local v7           #dataConnectionTextColor:I
    .end local v8           #dataConnectionTextRes:I
    .end local v11           #text:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 242
    .end local v6           #dataConnectionText:Landroid/widget/TextView;
    .end local v9           #extraInfo:Landroid/widget/TextView;
    :cond_1
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->getSinglyPairedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-boolean v12, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->isTethered:Z

    if-nez v12, :cond_2

    iget-boolean v12, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->isHeadset:Z

    if-eqz v12, :cond_3

    .line 243
    :cond_2
    sget v5, Lcom/google/glass/home/R$drawable;->ic_data_bt_big:I

    .line 244
    sget v12, Lcom/google/glass/home/R$string;->bluetooth:I

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 246
    :cond_3
    sget v5, Lcom/google/glass/home/R$drawable;->ic_data_off_big:I

    .line 247
    const/4 v3, 0x0

    goto :goto_0

    .line 261
    .restart local v6       #dataConnectionText:Landroid/widget/TextView;
    .restart local v7       #dataConnectionTextColor:I
    .restart local v8       #dataConnectionTextRes:I
    .restart local v9       #extraInfo:Landroid/widget/TextView;
    :cond_4
    sget v8, Lcom/google/glass/home/R$string;->settings_cover_connection_issue:I

    .line 262
    iget v7, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I

    goto :goto_1

    .line 268
    .end local v7           #dataConnectionTextColor:I
    .end local v8           #dataConnectionTextRes:I
    :cond_5
    sget v12, Lcom/google/glass/home/R$string;->settings_cover_connection_no_data:I

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget v12, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->red:I

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/glass/home/HomeApplication;->getCompanionState()Lcom/google/glass/home/companion/CompanionState;

    move-result-object v0

    .line 272
    .local v0, companionState:Lcom/google/glass/home/companion/CompanionState;
    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionState;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionState;->isTetheringErrorDetected()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 273
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    sget v12, Lcom/google/glass/home/R$string;->settings_cover_check_my_glass:I

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method


# virtual methods
.method public getBundleId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 195
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->goToSettings()V

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onLoad()V
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/timeline/active/SettingsCoverView$4;

    invoke-direct {v2, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$4;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v1, v2}, Lcom/google/glass/util/InetConnectionState;->addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 152
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    invoke-virtual {v1, v2}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->addListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V

    .line 155
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_card_sheen:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    .local v0, sheen:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$drawable;->bundle_sheen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateAll()V

    .line 160
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsCoverView$5;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$5;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 173
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->removeListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 174
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->removeListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V

    .line 175
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method
