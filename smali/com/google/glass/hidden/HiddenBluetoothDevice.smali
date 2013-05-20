.class public final Lcom/google/glass/hidden/HiddenBluetoothDevice;
.super Ljava/lang/Object;
.source "HiddenBluetoothDevice.java"


# static fields
.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelPairingUserInput(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 44
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "cancelPairingUserInput"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public static convertPinToBytes(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)[B
    .locals 3
    .parameter "device"
    .parameter "passKey"

    .prologue
    .line 54
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "convertPinToBytes"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 25
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "createBond"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static createScoSocket(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;
    .locals 2
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "createScoSocket"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method public static removeBond(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 30
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "removeBond"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public static setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 4
    .parameter "device"
    .parameter "confirm"

    .prologue
    .line 38
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "setPairingConfirmation"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public static setPin(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 3
    .parameter "device"
    .parameter "pinBytes"

    .prologue
    .line 49
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "setPin"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
