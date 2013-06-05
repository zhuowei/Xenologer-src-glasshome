.class public Lcom/google/glass/home/timeline/active/SettingsCoverView;
.super Landroid/widget/LinearLayout;
.source "SettingsCoverView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/Card;


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

.field private singlyPairedDevice:Landroid/bluetooth/BluetoothDevice;

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
    const/16 v0, 0xb

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

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.glass.action.HEADSET_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsCoverView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$1;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    .line 76
    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    .line 91
    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->stateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 132
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    .local v0, resources:Landroid/content/res/Resources;
    sget v1, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    .line 134
    sget v1, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->red:I

    .line 135
    sget v1, Lcom/google/glass/home/R$color;->state_yellow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I

    .line 137
    new-instance v1, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 138
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-direct {v1, p1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    .line 139
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    .line 141
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$layout;->settings_cover_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 142
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

.method static synthetic access$100(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->isTethered:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/glass/home/timeline/active/SettingsCoverView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    return v0
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

.method static synthetic access$1100(Lcom/google/glass/home/timeline/active/SettingsCoverView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->red:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateBattery()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->singlyPairedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/home/timeline/active/SettingsCoverView;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->singlyPairedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->isHeadset:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/home/timeline/active/SettingsCoverView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->isHeadset:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->stateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/home/timeline/active/SettingsCoverView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Lcom/google/glass/util/InetConnectionState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    return-object v0
.end method

.method private updateAll()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateBattery()V

    .line 228
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateConnectivity()V

    .line 229
    return-void
.end method

.method private updateBattery()V
    .locals 11

    .prologue
    .line 298
    iget-object v7, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v3

    .line 301
    .local v3, state:Lcom/google/glass/util/BatteryHelper$BatteryState;
    sget v7, Lcom/google/glass/home/R$id;->battery_state_image:I

    invoke-virtual {p0, v7}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/settings/BatteryStateImageView;

    .line 303
    .local v0, batteryStateImage:Lcom/google/glass/home/settings/BatteryStateImageView;
    invoke-virtual {v0, v3}, Lcom/google/glass/home/settings/BatteryStateImageView;->update(Lcom/google/glass/util/BatteryHelper$BatteryState;)V

    .line 306
    sget v7, Lcom/google/glass/home/R$id;->battery_state_text:I

    invoke-virtual {p0, v7}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 307
    .local v1, batteryStateText:Landroid/widget/TextView;
    iget v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 308
    .local v2, percent:I
    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    if-eqz v7, :cond_0

    .line 310
    sget v7, Lcom/google/glass/home/R$string;->settings_cover_battery_charged:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 311
    iget v7, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    if-nez v7, :cond_1

    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-eqz v7, :cond_2

    .line 315
    :cond_1
    sget v4, Lcom/google/glass/home/R$string;->settings_cover_battery_percent_charging:I

    .line 319
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

    .line 320
    .local v6, textStr:Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const/16 v7, 0x1e

    if-le v2, v7, :cond_3

    .line 323
    iget v5, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    .line 329
    .local v5, textColor:I
    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 317
    .end local v4           #text:I
    .end local v5           #textColor:I
    .end local v6           #textStr:Ljava/lang/String;
    :cond_2
    sget v4, Lcom/google/glass/home/R$string;->settings_cover_battery_percent:I

    .restart local v4       #text:I
    goto :goto_1

    .line 324
    .restart local v6       #textStr:Ljava/lang/String;
    :cond_3
    const/16 v7, 0xa

    if-le v2, v7, :cond_4

    .line 325
    iget v5, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I

    .restart local v5       #textColor:I
    goto :goto_2

    .line 327
    .end local v5           #textColor:I
    :cond_4
    iget v5, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->red:I

    .restart local v5       #textColor:I
    goto :goto_2
.end method

.method private updateConnectivity()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 239
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method


# virtual methods
.method public getBundleEntryPoint()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadMoreEntryPoint()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->goToSettings()V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onLoad()V
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/timeline/active/SettingsCoverView$4;

    invoke-direct {v2, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$4;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 157
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v1, v2}, Lcom/google/glass/util/InetConnectionState;->addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 158
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    invoke-virtual {v1, v2}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->addListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V

    .line 161
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_card_sheen:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 162
    .local v0, sheen:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$drawable;->bundle_sheen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateAll()V

    .line 166
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsCoverView$5;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$5;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->removeListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 180
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->removeListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V

    .line 181
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method
