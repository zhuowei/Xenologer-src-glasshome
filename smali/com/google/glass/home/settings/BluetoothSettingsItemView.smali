.class public Lcom/google/glass/home/settings/BluetoothSettingsItemView;
.super Lcom/google/glass/home/settings/SettingsItemView;
.source "BluetoothSettingsItemView.java"


# static fields
.field private static final ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private companionConnected:Z

.field private companionService:Lcom/google/glass/home/companion/CompanionService;

.field private final companionStateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private discoverableAnimator:Landroid/animation/ObjectAnimator;

.field private headsetConnected:Z

.field private final inetListener:Lcom/google/glass/util/InetConnectionState$Listener;

.field private final inetState:Lcom/google/glass/util/InetConnectionState;

.field private final pairingReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private tethered:Z

.field private final tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

.field private final tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.glass.action.HEADSET_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x2

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/SettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v2, Lcom/google/glass/home/settings/BluetoothSettingsItemView$1;

    invoke-direct {v2, p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$1;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->serviceConnection:Landroid/content/ServiceConnection;

    .line 86
    new-instance v2, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;

    invoke-direct {v2, p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    .line 95
    new-instance v2, Lcom/google/glass/home/settings/BluetoothSettingsItemView$3;

    invoke-direct {v2, p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$3;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairingReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 115
    new-instance v2, Lcom/google/glass/home/settings/BluetoothSettingsItemView$4;

    invoke-direct {v2, p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$4;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionStateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 133
    new-instance v2, Lcom/google/glass/home/settings/BluetoothSettingsItemView$5;

    invoke-direct {v2, p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$5;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetListener:Lcom/google/glass/util/InetConnectionState$Listener;

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$layout;->bluetooth_settings_item:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 152
    sget v2, Lcom/google/glass/home/R$id;->bt_pairing_details:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 153
    .local v1, pairingView:Lcom/google/glass/widget/TypophileTextView;
    sget v2, Lcom/google/glass/home/R$string;->bluetooth_now_discoverable:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 155
    sget v2, Lcom/google/glass/home/R$id;->bluetooth_icon:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    .local v0, btIcon:Landroid/widget/ImageView;
    const-string v2, "alpha"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    .line 157
    iget-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$integer;->bluetooth_discoverable_alpha_duration_ms:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 159
    iget-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 160
    iget-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 162
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 163
    new-instance v2, Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-direct {v2, p1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    .line 164
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    .line 165
    return-void

    .line 156
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3et
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)Lcom/google/glass/home/companion/CompanionService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionService:Lcom/google/glass/home/companion/CompanionService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionService:Lcom/google/glass/home/companion/CompanionService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tethered:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->headsetConnected:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionConnected:Z

    return p1
.end method

.method private queryState()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 293
    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getHeadsetState(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->headsetConnected:Z

    .line 295
    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->getCompanionState()Lcom/google/glass/home/companion/CompanionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionState;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionConnected:Z

    .line 297
    sget-object v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Headset connected? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->headsetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Companion connected? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 20

    .prologue
    .line 168
    sget v17, Lcom/google/glass/home/R$id;->bt_device_name:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/glass/widget/TypophileTextView;

    .line 169
    .local v9, nameView:Lcom/google/glass/widget/TypophileTextView;
    sget v17, Lcom/google/glass/home/R$id;->bt_tethered_state:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/google/glass/widget/TypophileTextView;

    .line 170
    .local v15, tetheredView:Lcom/google/glass/widget/TypophileTextView;
    sget v17, Lcom/google/glass/home/R$id;->bt_companion_state:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/TypophileTextView;

    .line 171
    .local v4, companionView:Lcom/google/glass/widget/TypophileTextView;
    sget v17, Lcom/google/glass/home/R$id;->bt_headset_connection_state:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/glass/widget/TypophileTextView;

    .line 173
    .local v7, headsetConnectionView:Lcom/google/glass/widget/TypophileTextView;
    sget v17, Lcom/google/glass/home/R$id;->bluetooth_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 175
    .local v2, btIcon:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 176
    .local v13, resources:Landroid/content/res/Resources;
    sget v17, Lcom/google/glass/home/R$color;->state_green:I

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 177
    .local v6, green:I
    sget v17, Lcom/google/glass/home/R$color;->state_yellow:I

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    .line 178
    .local v16, yellow:I
    sget v17, Lcom/google/glass/home/R$color;->state_red:I

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 179
    .local v12, red:I
    sget v17, Lcom/google/glass/home/R$color;->text_gray:I

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 182
    .local v5, gray:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v17

    if-nez v17, :cond_2

    .line 183
    :cond_0
    sget-object v17, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    const-string v18, "Bluetooth adapter disabled.  Someone\'s been mucking around in legacy settings."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget v17, Lcom/google/glass/home/R$string;->bluetooth:I

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 188
    :cond_1
    sget v17, Lcom/google/glass/home/R$drawable;->ic_bluetooth_off_big:I

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    const/high16 v17, 0x3f80

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 190
    sget v17, Lcom/google/glass/home/R$string;->bluetooth_off:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 191
    invoke-virtual {v7, v12}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 192
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 290
    :goto_0
    return-void

    .line 196
    :cond_2
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->getSinglyPairedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 199
    .local v10, pairedDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v17

    const/16 v18, 0x17

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 200
    sget-object v17, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    const-string v18, "Discoverable"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v17

    if-nez v17, :cond_3

    .line 202
    sget-object v17, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    const-string v18, "Setting and starting animation."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget v17, Lcom/google/glass/home/R$drawable;->ic_bluetooth_on_big:I

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    if-nez v10, :cond_3

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ObjectAnimator;->start()V

    .line 217
    :cond_3
    :goto_1
    if-nez v10, :cond_6

    .line 218
    sget-object v17, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    const-string v18, "No paired devices."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget v17, Lcom/google/glass/home/R$string;->bluetooth:I

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 221
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 222
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 223
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_4
    sget-object v17, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    const-string v18, "On, but not discoverable."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 213
    :cond_5
    sget v17, Lcom/google/glass/home/R$drawable;->ic_bluetooth_on_big:I

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    const/high16 v17, 0x3f80

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 225
    :cond_6
    sget-object v17, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Found paired device: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v10}, Lcom/google/glass/util/BluetoothHelper;->loggableDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->headsetConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tethered:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 230
    sget v17, Lcom/google/glass/home/R$string;->bluetooth_disconnected:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 231
    invoke-virtual {v7, v12}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 232
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 234
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 235
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 239
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 240
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 241
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->headsetConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 244
    sget v17, Lcom/google/glass/home/R$string;->bluetooth_headset:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 245
    invoke-virtual {v7, v6}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 251
    :goto_2
    const/4 v8, 0x0

    .line 252
    .local v8, isTetheringError:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tethered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/glass/home/HomeApplication;->getCompanionState()Lcom/google/glass/home/companion/CompanionState;

    move-result-object v3

    .line 254
    .local v3, companionState:Lcom/google/glass/home/companion/CompanionState;
    invoke-virtual {v3}, Lcom/google/glass/home/companion/CompanionState;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual {v3}, Lcom/google/glass/home/companion/CompanionState;->isTetheringErrorDetected()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 255
    sget v17, Lcom/google/glass/home/R$string;->bluetooth_tethered_error:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 256
    invoke-virtual {v15, v12}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 257
    const/4 v8, 0x1

    .line 268
    .end local v3           #companionState:Lcom/google/glass/home/companion/CompanionState;
    :goto_3
    sget v17, Lcom/google/glass/home/R$id;->bt_pairing_details:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/glass/widget/TypophileTextView;

    .line 269
    .local v11, pairingView:Lcom/google/glass/widget/TypophileTextView;
    if-eqz v8, :cond_c

    .line 270
    sget v17, Lcom/google/glass/home/R$string;->bluetooth_check_my_glass:I

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 275
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionService:Lcom/google/glass/home/companion/CompanionService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionService:Lcom/google/glass/home/companion/CompanionService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/glass/home/companion/CompanionService;->getRemoteVersion()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/glass/companion/CompanionUtils;->getMajorVersion(I)I

    move-result v17

    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Lcom/google/glass/companion/CompanionUtils;->getMajorVersion(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 279
    sget v17, Lcom/google/glass/home/R$string;->bluetooth_companion_old:I

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 280
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 285
    :goto_5
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 247
    .end local v8           #isTetheringError:Z
    .end local v11           #pairingView:Lcom/google/glass/widget/TypophileTextView;
    :cond_8
    sget v17, Lcom/google/glass/home/R$string;->bluetooth_headset_off:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 248
    invoke-virtual {v7, v12}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 259
    .restart local v3       #companionState:Lcom/google/glass/home/companion/CompanionState;
    .restart local v8       #isTetheringError:Z
    :cond_9
    sget v17, Lcom/google/glass/home/R$string;->bluetooth_tethered:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_a

    move v14, v6

    .line 261
    .local v14, tetheredTextColor:I
    :goto_6
    invoke-virtual {v15, v14}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto :goto_3

    .end local v14           #tetheredTextColor:I
    :cond_a
    move/from16 v14, v16

    .line 260
    goto :goto_6

    .line 264
    .end local v3           #companionState:Lcom/google/glass/home/companion/CompanionState;
    :cond_b
    sget v17, Lcom/google/glass/home/R$string;->bluetooth_tethered_off:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 265
    invoke-virtual {v15, v5}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 272
    .restart local v11       #pairingView:Lcom/google/glass/widget/TypophileTextView;
    :cond_c
    sget v17, Lcom/google/glass/home/R$string;->bluetooth_now_discoverable:I

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    goto :goto_4

    .line 282
    :cond_d
    sget v17, Lcom/google/glass/home/R$string;->bluetooth_companion:I

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 283
    invoke-virtual {v4, v6}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto :goto_5

    .line 287
    :cond_e
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onLoad()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 303
    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 306
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->addListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V

    .line 307
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairingReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionStateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 313
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->makeBluetoothDiscoverable()V

    .line 315
    invoke-direct {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->queryState()V

    .line 316
    invoke-direct {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V

    .line 317
    return-void
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Lcom/google/glass/home/settings/SettingsItemView;->onUnload()V

    .line 323
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionService:Lcom/google/glass/home/companion/CompanionService;

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairingReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 332
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionStateChangeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 333
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->removeListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V

    .line 334
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->removeListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 335
    return-void
.end method
