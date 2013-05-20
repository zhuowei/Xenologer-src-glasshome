.class public Lcom/google/glass/companion/BluetoothAdapterWrapper;
.super Ljava/lang/Object;
.source "BluetoothAdapterWrapper.java"


# static fields
.field private static instance:Lcom/google/glass/companion/BluetoothAdapterWrapper;


# instance fields
.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/glass/companion/BluetoothAdapterWrapper;

    invoke-direct {v0}, Lcom/google/glass/companion/BluetoothAdapterWrapper;-><init>()V

    sput-object v0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->instance:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 36
    return-void
.end method

.method public static getBluetoothAdapterWrapper()Lcom/google/glass/companion/BluetoothAdapterWrapper;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->instance:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    return-object v0
.end method

.method public static setBluetoothAdapterWrapperForTest(Lcom/google/glass/companion/BluetoothAdapterWrapper;)V
    .locals 0
    .parameter "wrapper"

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 31
    sput-object p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->instance:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    .line 32
    return-void
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    return v0
.end method

.method public getBondedDeviceWrappers()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/companion/BluetoothDeviceWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v4, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 40
    .local v1, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 41
    .local v3, results:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/glass/companion/BluetoothDeviceWrapper;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 42
    .local v0, bondedDevice:Landroid/bluetooth/BluetoothDevice;
    new-instance v4, Lcom/google/glass/companion/BluetoothDeviceWrapper;

    invoke-direct {v4, v0}, Lcom/google/glass/companion/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    .end local v0           #bondedDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-object v3
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiscovering()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public startDiscovery()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    return v0
.end method
