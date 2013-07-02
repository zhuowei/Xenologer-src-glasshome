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

.field private final red:I

.field private singlyPairedDevice:Landroid/bluetooth/BluetoothDevice;

.field private stateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final yellow:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcom/google/glass/home/timeline/active/SettingsCoverView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->TAG:Ljava/lang/String;

    .line 42
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

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

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
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsCoverView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$1;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    .line 75
    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->stateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 107
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, resources:Landroid/content/res/Resources;
    sget v1, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    .line 109
    sget v1, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->red:I

    .line 110
    sget v1, Lcom/google/glass/home/R$color;->state_yellow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I

    .line 112
    new-instance v1, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 113
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    .line 115
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$layout;->settings_cover_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateConnectivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->singlyPairedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/home/timeline/active/SettingsCoverView;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->singlyPairedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/active/SettingsCoverView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Lcom/google/glass/util/InetConnectionState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/active/SettingsCoverView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/active/SettingsCoverView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->red:I

    return v0
.end method

.method private updateAll()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateBattery()V

    .line 191
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateConnectivity()V

    .line 192
    return-void
.end method

.method private updateBattery()V
    .locals 11

    .prologue
    .line 261
    iget-object v7, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v3

    .line 264
    .local v3, state:Lcom/google/glass/util/BatteryHelper$BatteryState;
    sget v7, Lcom/google/glass/home/R$id;->battery_state_image:I

    invoke-virtual {p0, v7}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/settings/BatteryStateImageView;

    .line 266
    .local v0, batteryStateImage:Lcom/google/glass/home/settings/BatteryStateImageView;
    invoke-virtual {v0, v3}, Lcom/google/glass/home/settings/BatteryStateImageView;->update(Lcom/google/glass/util/BatteryHelper$BatteryState;)V

    .line 269
    sget v7, Lcom/google/glass/home/R$id;->battery_state_text:I

    invoke-virtual {p0, v7}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 270
    .local v1, batteryStateText:Landroid/widget/TextView;
    iget v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 271
    .local v2, percent:I
    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    if-eqz v7, :cond_0

    .line 273
    sget v7, Lcom/google/glass/home/R$string;->settings_cover_battery_charged:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget v7, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    if-nez v7, :cond_1

    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-eqz v7, :cond_2

    .line 278
    :cond_1
    sget v4, Lcom/google/glass/home/R$string;->settings_cover_battery_percent_charging:I

    .line 282
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

    .line 283
    .local v6, textStr:Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const/16 v7, 0x1e

    if-le v2, v7, :cond_3

    .line 286
    iget v5, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I

    .line 292
    .local v5, textColor:I
    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 280
    .end local v4           #text:I
    .end local v5           #textColor:I
    .end local v6           #textStr:Ljava/lang/String;
    :cond_2
    sget v4, Lcom/google/glass/home/R$string;->settings_cover_battery_percent:I

    .restart local v4       #text:I
    goto :goto_1

    .line 287
    .restart local v6       #textStr:Ljava/lang/String;
    :cond_3
    const/16 v7, 0xa

    if-le v2, v7, :cond_4

    .line 288
    iget v5, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I

    .restart local v5       #textColor:I
    goto :goto_2

    .line 290
    .end local v5           #textColor:I
    :cond_4
    iget v5, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->red:I

    .restart local v5       #textColor:I
    goto :goto_2
.end method

.method private updateConnectivity()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;-><init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method


# virtual methods
.method public getBundleEntryPoint()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadMoreEntryPoint()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->goToSettings()V

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onLoad()V
    .locals 5

    .prologue
    .line 122
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->stateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/google/glass/home/timeline/active/SettingsCoverView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;[Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v1, v2}, Lcom/google/glass/util/InetConnectionState;->addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 130
    sget v1, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_card_sheen:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    .local v0, sheen:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$drawable;->bundle_sheen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateAll()V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onUnload()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->stateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 143
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView;->connectivityListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->removeListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 144
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method
