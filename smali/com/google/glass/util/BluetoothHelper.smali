.class public Lcom/google/glass/util/BluetoothHelper;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;
    }
.end annotation


# static fields
.field private static final DISCOVERABLE_TIMEOUT_IN_SECONDS:I = 0x78

.field private static final GOOGLE_BLUETOOTH_VENDOR_PREFIX_1:Ljava/lang/String; = "00:1A:11"

.field private static final GOOGLE_BLUETOOTH_VENDOR_PREFIX_2:Ljava/lang/String; = "F8:8F:CA"

.field private static final IDENTITY_PARCEL_UUID:Landroid/os/ParcelUuid; = null

.field private static final TAG:Ljava/lang/String; = null

.field private static final WEARABLE_GLASSES_DEVICE_CLASS:I = 0x714


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/google/glass/util/BluetoothHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BluetoothHelper;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/os/ParcelUuid;

    sget-object v1, Lcom/google/glass/bluetooth/BluetoothUuids;->IDENTITY_UUID:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lcom/google/glass/util/BluetoothHelper;->IDENTITY_PARCEL_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/util/BluetoothHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cancelDiscoverable()V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 168
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    sget-object v1, Lcom/google/glass/util/BluetoothHelper;->TAG:Ljava/lang/String;

    const-string v2, "Canceling discoverability."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/glass/hidden/HiddenBluetoothAdapter;->setScanMode(II)V

    goto :goto_0
.end method

.method public static hasNap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 116
    .local v4, uuids:[Landroid/os/ParcelUuid;
    if-nez v4, :cond_1

    .line 117
    sget-object v5, Lcom/google/glass/util/BluetoothHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Don\'t have SDP records for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/google/glass/util/BluetoothHelper;->loggableDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 119
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Landroid/os/ParcelUuid;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 120
    .local v3, uuid:Landroid/os/ParcelUuid;
    sget-object v5, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_NAP_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 121
    const/4 v5, 0x1

    goto :goto_0

    .line 119
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .parameter "bluetoothAdapter"

    .prologue
    .line 132
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKnownAsGlassDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 100
    if-nez p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 104
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/BluetoothHelper;->IDENTITY_PARCEL_UUID:Landroid/os/ParcelUuid;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isProbablyKnownAsGlassDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 71
    if-nez p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v3

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 75
    .local v2, uuids:[Landroid/os/ParcelUuid;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, address:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 77
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/BluetoothHelper;->IDENTITY_PARCEL_UUID:Landroid/os/ParcelUuid;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 78
    :cond_2
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 80
    .local v1, bluetoothClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    and-int/lit16 v4, v4, 0x714

    const/16 v5, 0x714

    if-ne v4, v5, :cond_0

    const-string v4, "00:1A:11"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "F8:8F:CA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static loggableDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .parameter "device"

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const-string v0, "null"

    .line 60
    :goto_0
    return-object v0

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, identity:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BONDED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BONDING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static makeBluetoothDiscoverable()V
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0x78

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->makeBluetoothDiscoverable(I)V

    .line 138
    return-void
.end method

.method public static makeBluetoothDiscoverable(I)V
    .locals 5
    .parameter "discoverableTimeout"

    .prologue
    const/16 v4, 0x17

    .line 146
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 148
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    sget-object v1, Lcom/google/glass/util/BluetoothHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabling discoverability for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p0}, Lcom/google/glass/hidden/HiddenBluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 158
    invoke-static {v4, p0}, Lcom/google/glass/hidden/HiddenBluetoothAdapter;->setScanMode(II)V

    goto :goto_0
.end method
