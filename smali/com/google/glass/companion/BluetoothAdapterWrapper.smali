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
    .line 22
    new-instance v0, Lcom/google/glass/companion/BluetoothAdapterWrapper;

    invoke-direct {v0}, Lcom/google/glass/companion/BluetoothAdapterWrapper;-><init>()V

    sput-object v0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->instance:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 38
    return-void
.end method

.method public static getBluetoothAdapterWrapper()Lcom/google/glass/companion/BluetoothAdapterWrapper;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->instance:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    return-object v0
.end method

.method public static setBluetoothAdapterWrapperForTest(Lcom/google/glass/companion/BluetoothAdapterWrapper;)V
    .locals 0
    .parameter "wrapper"

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 33
    sput-object p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->instance:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    .line 34
    return-void
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 1

    .prologue
    .line 54
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
    .line 41
    iget-object v4, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 42
    .local v1, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 43
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

    .line 44
    .local v0, bondedDevice:Landroid/bluetooth/BluetoothDevice;
    new-instance v4, Lcom/google/glass/companion/BluetoothDeviceWrapper;

    invoke-direct {v4, v0}, Lcom/google/glass/companion/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v0           #bondedDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-object v3
.end method

.method public hasBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 66
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
    .line 50
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Lcom/google/glass/companion/BluetoothServerSocketWrapper;
    .locals 2
    .parameter "name"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/google/glass/companion/BluetoothServerSocketWrapper;

    iget-object v1, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/BluetoothServerSocketWrapper;-><init>(Landroid/bluetooth/BluetoothServerSocket;)V

    return-object v0
.end method

.method public startDiscovery()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    return v0
.end method
