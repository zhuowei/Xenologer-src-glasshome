.class public Lcom/google/glass/hidden/HiddenBluetoothPan;
.super Ljava/lang/Object;
.source "HiddenBluetoothPan.java"


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static connect(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "panProfile"
    .parameter "device"

    .prologue
    .line 27
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "connect"

    const-class v2, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static disconnect(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "panProfile"
    .parameter "device"

    .prologue
    .line 37
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "disconnect"

    const-class v2, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public static getConnectedDevices(Landroid/bluetooth/BluetoothProfile;)Ljava/util/List;
    .locals 2
    .parameter "panProfile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "getConnectedDevices"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
