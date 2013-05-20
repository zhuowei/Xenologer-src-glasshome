.class public Lcom/google/glass/companion/BluetoothDeviceWrapper;
.super Ljava/lang/Object;
.source "BluetoothDeviceWrapper.java"


# instance fields
.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private volatile displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/companion/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 24
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 0
    .parameter "device"
    .parameter "displayName"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 28
    iput-object p2, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->displayName:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Lcom/google/glass/companion/BluetoothSocketWrapper;
    .locals 2
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/google/glass/companion/BluetoothSocketWrapper;

    iget-object v1, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/BluetoothSocketWrapper;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method

.method public createRfcommSocketToServiceRecord(Ljava/util/UUID;)Lcom/google/glass/companion/BluetoothSocketWrapper;
    .locals 2
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/google/glass/companion/BluetoothSocketWrapper;

    iget-object v1, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/BluetoothSocketWrapper;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "anotherWrapper"

    .prologue
    const/4 v0, 0x0

    .line 50
    if-ne p1, p0, :cond_1

    .line 51
    const/4 v0, 0x1

    .line 62
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 54
    .restart local p1
    :cond_1
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/glass/companion/BluetoothDeviceWrapper;

    if-ne v1, v2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/google/glass/companion/BluetoothDeviceWrapper;

    .end local p1
    invoke-virtual {p1}, Lcom/google/glass/companion/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fetchUuidsWithSdp()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 46
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public hasWrappedDevice()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public isKnownAsGlassDevice()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->isKnownAsGlassDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public isProbablyKnownAsGlassDevice()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->isProbablyKnownAsGlassDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public loggableDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->loggableDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothDeviceWrapper;->displayName:Ljava/lang/String;

    return-object v0
.end method
