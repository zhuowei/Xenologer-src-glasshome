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
    .line 26
    const-class v0, Lcom/google/glass/util/BluetoothHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BluetoothHelper;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/os/ParcelUuid;

    sget-object v1, Lcom/google/glass/bluetooth/BluetoothUuids;->IDENTITY_UUID:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lcom/google/glass/util/BluetoothHelper;->IDENTITY_PARCEL_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/util/BluetoothHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cancelDiscoverable()V
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 187
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    sget-object v1, Lcom/google/glass/util/BluetoothHelper;->TAG:Ljava/lang/String;

    const-string v2, "Canceling discoverability."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/glass/hidden/HiddenBluetoothAdapter;->setScanMode(II)V

    goto :goto_0
.end method

.method public static hasNap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 126
    .local v4, uuids:[Landroid/os/ParcelUuid;
    if-nez v4, :cond_1

    .line 127
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

    .line 135
    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 129
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

    .line 130
    .local v3, uuid:Landroid/os/ParcelUuid;
    sget-object v5, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_NAP_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    const/4 v5, 0x1

    goto :goto_0

    .line 129
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static hasUuid(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 67
    if-nez p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 71
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .parameter "bluetoothAdapter"

    .prologue
    .line 153
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

    .line 110
    if-nez p0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 114
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

.method public static isPhone(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProbablyKnownAsGlassDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 81
    if-nez p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v3

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 85
    .local v2, uuids:[Landroid/os/ParcelUuid;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, address:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 87
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/BluetoothHelper;->IDENTITY_PARCEL_UUID:Landroid/os/ParcelUuid;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 88
    :cond_2
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 90
    .local v1, bluetoothClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_0

    .line 94
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
    .line 48
    if-nez p0, :cond_0

    .line 49
    const-string v0, "null"

    .line 61
    :goto_0
    return-object v0

    .line 52
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

    .line 53
    .local v0, identity:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 59
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

    .line 55
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

    .line 57
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

    .line 53
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
    .line 158
    const/16 v0, 0x78

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->makeBluetoothDiscoverable(I)V

    .line 159
    return-void
.end method

.method public static makeBluetoothDiscoverable(I)V
    .locals 5
    .parameter "discoverableTimeout"

    .prologue
    const/16 v4, 0x17

    .line 167
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 168
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 173
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

    .line 177
    invoke-static {p0}, Lcom/google/glass/hidden/HiddenBluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 178
    invoke-static {v4, p0}, Lcom/google/glass/hidden/HiddenBluetoothAdapter;->setScanMode(II)V

    goto :goto_0
.end method
