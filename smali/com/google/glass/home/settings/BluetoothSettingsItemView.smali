.class public Lcom/google/glass/home/settings/BluetoothSettingsItemView;
.super Lcom/google/glass/home/settings/SettingsCard;
.source "BluetoothSettingsItemView.java"

# interfaces
.implements Lcom/google/glass/companion/CompanionStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;
    }
.end annotation


# static fields
.field private static final ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private companionLocalVersion:I

.field private companionRemoteVersion:I

.field private discoverableAnimator:Landroid/animation/ObjectAnimator;

.field private headsetConnected:Z

.field private final inetListener:Lcom/google/glass/util/InetConnectionState$Listener;

.field private final inetState:Lcom/google/glass/util/InetConnectionState;

.field private isCompanionConnected:Z

.field private pairedDevice:Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;

.field private final pairingReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private tethered:Z

.field private final tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

.field private final tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x5

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

    const/4 v1, 0x4

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x2

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v2, Lcom/google/glass/home/settings/BluetoothSettingsItemView$1;

    invoke-direct {v2, p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$1;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    .line 84
    new-instance v2, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;

    invoke-direct {v2, p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairingReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 125
    new-instance v2, Lcom/google/glass/home/settings/BluetoothSettingsItemView$3;

    invoke-direct {v2, p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$3;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetListener:Lcom/google/glass/util/InetConnectionState$Listener;

    .line 143
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$layout;->bluetooth_settings_item:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 144
    sget v2, Lcom/google/glass/home/R$id;->bt_pairing_details:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 145
    .local v1, pairingView:Lcom/google/glass/widget/TypophileTextView;
    sget v2, Lcom/google/glass/home/R$string;->bluetooth_now_discoverable:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 147
    sget v2, Lcom/google/glass/home/R$id;->bluetooth_icon:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 148
    .local v0, btIcon:Landroid/widget/ImageView;
    const-string v2, "alpha"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    .line 149
    iget-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$integer;->bluetooth_discoverable_alpha_duration_ms:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 151
    iget-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 152
    iget-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 154
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 155
    new-instance v2, Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-direct {v2, p1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    .line 156
    invoke-static {p1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 157
    invoke-static {p1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    .line 158
    return-void

    .line 148
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3et
    .end array-data
.end method

.method static synthetic access$002(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tethered:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->headsetConnected:Z

    return p1
.end method

.method static synthetic access$302(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;)Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private queryState()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getHeadsetState(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->headsetConnected:Z

    .line 285
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

    .line 286
    sget-object v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Companion connected? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->isCompanionConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 17

    .prologue
    .line 161
    sget v14, Lcom/google/glass/home/R$id;->bt_device_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/glass/widget/TypophileTextView;

    .line 162
    .local v7, nameView:Lcom/google/glass/widget/TypophileTextView;
    sget v14, Lcom/google/glass/home/R$id;->bt_tethered_state:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/glass/widget/TypophileTextView;

    .line 163
    .local v12, tetheredView:Lcom/google/glass/widget/TypophileTextView;
    sget v14, Lcom/google/glass/home/R$id;->bt_companion_state:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    .line 164
    .local v2, companionView:Lcom/google/glass/widget/TypophileTextView;
    sget v14, Lcom/google/glass/home/R$id;->bt_headset_connection_state:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/glass/widget/TypophileTextView;

    .line 166
    .local v5, headsetConnectionView:Lcom/google/glass/widget/TypophileTextView;
    sget v14, Lcom/google/glass/home/R$id;->bluetooth_icon:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 168
    .local v1, btIcon:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 169
    .local v10, resources:Landroid/content/res/Resources;
    sget v14, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 170
    .local v4, green:I
    sget v14, Lcom/google/glass/home/R$color;->state_yellow:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 171
    .local v13, yellow:I
    sget v14, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 172
    .local v9, red:I
    sget v14, Lcom/google/glass/home/R$color;->text_gray:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 175
    .local v3, gray:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_2

    .line 176
    :cond_0
    sget-object v14, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    const-string v15, "Bluetooth adapter disabled.  Someone\'s been mucking around in legacy settings."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget v14, Lcom/google/glass/home/R$string;->bluetooth:I

    invoke-virtual {v7, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 181
    :cond_1
    sget v14, Lcom/google/glass/home/R$drawable;->ic_bluetooth_off_big:I

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    const/high16 v14, 0x3f80

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 183
    sget v14, Lcom/google/glass/home/R$string;->bluetooth_off:I

    invoke-virtual {v5, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 184
    invoke-virtual {v5, v9}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 185
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 279
    :goto_0
    return-void

    .line 190
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v14

    const/16 v15, 0x17

    if-ne v14, v15, :cond_4

    .line 191
    sget-object v14, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    const-string v15, "Discoverable"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-nez v14, :cond_3

    .line 193
    sget-object v14, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    const-string v15, "Setting and starting animation."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget v14, Lcom/google/glass/home/R$drawable;->ic_bluetooth_on_big:I

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;

    if-nez v14, :cond_3

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->start()V

    .line 208
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;

    if-nez v14, :cond_6

    .line 209
    sget-object v14, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    const-string v15, "No paired devices."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget v14, Lcom/google/glass/home/R$string;->bluetooth:I

    invoke-virtual {v7, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 212
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 213
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 214
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_0

    .line 200
    :cond_4
    sget-object v14, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    const-string v15, "On, but not discoverable."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 204
    :cond_5
    sget v14, Lcom/google/glass/home/R$drawable;->ic_bluetooth_on_big:I

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    const/high16 v14, 0x3f80

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 216
    :cond_6
    sget-object v14, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found paired device: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;->loggableName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;

    iget-object v14, v14, Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;->name:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->headsetConnected:Z

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->isCompanionConnected:Z

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tethered:Z

    if-nez v14, :cond_7

    .line 221
    sget v14, Lcom/google/glass/home/R$string;->bluetooth_disconnected:I

    invoke-virtual {v5, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 222
    invoke-virtual {v5, v9}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 223
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 225
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 226
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 230
    :cond_7
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 231
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 232
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 234
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->headsetConnected:Z

    if-eqz v14, :cond_8

    .line 235
    sget v14, Lcom/google/glass/home/R$string;->bluetooth_headset:I

    invoke-virtual {v5, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 236
    invoke-virtual {v5, v4}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 242
    :goto_2
    const/4 v6, 0x0

    .line 243
    .local v6, isTetheringError:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tethered:Z

    if-eqz v14, :cond_b

    .line 244
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->isCompanionConnected:Z

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v14}, Lcom/google/glass/companion/RemoteCompanionProxy;->isTetheringErrorDetected()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 245
    sget v14, Lcom/google/glass/home/R$string;->bluetooth_tethered_error:I

    invoke-virtual {v12, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 246
    invoke-virtual {v12, v9}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 247
    const/4 v6, 0x1

    .line 258
    :goto_3
    sget v14, Lcom/google/glass/home/R$id;->bt_pairing_details:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/glass/widget/TypophileTextView;

    .line 259
    .local v8, pairingView:Lcom/google/glass/widget/TypophileTextView;
    if-eqz v6, :cond_c

    .line 260
    sget v14, Lcom/google/glass/home/R$string;->bluetooth_check_my_glass:I

    invoke-virtual {v8, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 265
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->isCompanionConnected:Z

    if-eqz v14, :cond_e

    .line 266
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionRemoteVersion:I

    invoke-static {v14}, Lcom/google/glass/companion/CompanionUtils;->getMajorVersion(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionLocalVersion:I

    invoke-static {v15}, Lcom/google/glass/companion/CompanionUtils;->getMajorVersion(I)I

    move-result v15

    if-ge v14, v15, :cond_d

    .line 268
    sget v14, Lcom/google/glass/home/R$string;->bluetooth_companion_old:I

    invoke-virtual {v2, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 269
    invoke-virtual {v2, v13}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 274
    :goto_5
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 238
    .end local v6           #isTetheringError:Z
    .end local v8           #pairingView:Lcom/google/glass/widget/TypophileTextView;
    :cond_8
    sget v14, Lcom/google/glass/home/R$string;->bluetooth_headset_off:I

    invoke-virtual {v5, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 239
    invoke-virtual {v5, v9}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto :goto_2

    .line 249
    .restart local v6       #isTetheringError:Z
    :cond_9
    sget v14, Lcom/google/glass/home/R$string;->bluetooth_tethered:I

    invoke-virtual {v12, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    invoke-virtual {v14}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_a

    move v11, v4

    .line 251
    .local v11, tetheredTextColor:I
    :goto_6
    invoke-virtual {v12, v11}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto :goto_3

    .end local v11           #tetheredTextColor:I
    :cond_a
    move v11, v13

    .line 250
    goto :goto_6

    .line 254
    :cond_b
    sget v14, Lcom/google/glass/home/R$string;->bluetooth_tethered_off:I

    invoke-virtual {v12, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 255
    invoke-virtual {v12, v3}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto :goto_3

    .line 262
    .restart local v8       #pairingView:Lcom/google/glass/widget/TypophileTextView;
    :cond_c
    sget v14, Lcom/google/glass/home/R$string;->bluetooth_now_discoverable:I

    invoke-virtual {v8, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    goto :goto_4

    .line 271
    :cond_d
    sget v14, Lcom/google/glass/home/R$string;->bluetooth_companion:I

    invoke-virtual {v2, v14}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 272
    invoke-virtual {v2, v4}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto :goto_5

    .line 276
    :cond_e
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onLoad()V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->addListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V

    .line 292
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairingReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 294
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 296
    invoke-direct {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->queryState()V

    .line 297
    invoke-direct {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V

    .line 298
    return-void
.end method

.method public onSettled()V
    .locals 2

    .prologue
    .line 316
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/BluetoothSettingsItemView$4;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$4;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 324
    invoke-direct {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V

    .line 325
    return-void
.end method

.method public onStateChange(ZII)V
    .locals 0
    .parameter "isConnected"
    .parameter "remoteVersion"
    .parameter "localVersion"

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->isCompanionConnected:Z

    .line 342
    iput p2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionRemoteVersion:I

    .line 343
    iput p3, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionLocalVersion:I

    .line 344
    invoke-direct {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V

    .line 345
    return-void
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/google/glass/home/settings/SettingsCard;->onUnload()V

    .line 304
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->discoverableAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairingReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 309
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->removeListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 310
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringState:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tetheringStateChangeListener:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->removeListener(Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;)V

    .line 311
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetState:Lcom/google/glass/util/InetConnectionState;

    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->inetListener:Lcom/google/glass/util/InetConnectionState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/InetConnectionState;->removeListener(Lcom/google/glass/util/InetConnectionState$Listener;)V

    .line 312
    return-void
.end method

.method public onUnsettled()V
    .locals 2

    .prologue
    .line 329
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/settings/BluetoothSettingsItemView$5;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$5;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 336
    invoke-direct {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V

    .line 337
    return-void
.end method
