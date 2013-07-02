.class public Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
.super Ljava/lang/Object;
.source "BluetoothDeviceWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;

    invoke-direct {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;-><init>()V

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Lcom/google/glass/bluetooth/BluetoothSocket;
    .locals 2
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothSocket;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method

.method public createRfcommSocketToServiceRecord(Ljava/util/UUID;)Lcom/google/glass/bluetooth/BluetoothSocket;
    .locals 2
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothSocket;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "anotherWrapper"

    .prologue
    const/4 v0, 0x0

    .line 90
    if-ne p1, p0, :cond_1

    .line 91
    const/4 v0, 0x1

    .line 102
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 94
    .restart local p1
    :cond_1
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .end local p1
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fetchUuidsWithSdp()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 49
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public isKnownAsGlassDevice()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->isKnownAsGlassDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public isPhone()Z
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 67
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProbablyKnownAsGlassDevice()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->isProbablyKnownAsGlassDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->loggableDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    return-void
.end method
