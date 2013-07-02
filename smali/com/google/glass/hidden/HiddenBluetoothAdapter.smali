.class public final Lcom/google/glass/hidden/HiddenBluetoothAdapter;
.super Ljava/lang/Object;
.source "HiddenBluetoothAdapter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .parameter "port"

    .prologue
    .line 23
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 24
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Lcom/google/glass/hidden/MethodInvoker;

    const-string v2, "listenUsingInsecureRfcommOn"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothServerSocket;

    return-object v1
.end method

.method public static listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .parameter "port"

    .prologue
    .line 16
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 17
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Lcom/google/glass/hidden/MethodInvoker;

    const-string v2, "listenUsingRfcommOn"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothServerSocket;

    return-object v1
.end method

.method public static listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 31
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Lcom/google/glass/hidden/MethodInvoker;

    const-string v2, "listenUsingScoOn"

    invoke-direct {v1, v0, v2}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothServerSocket;

    return-object v1
.end method

.method public static setDiscoverableTimeout(I)V
    .locals 5
    .parameter "discoverableTimeout"

    .prologue
    .line 36
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 37
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Lcom/google/glass/hidden/MethodInvoker;

    const-string v2, "setDiscoverableTimeout"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public static setScanMode(II)V
    .locals 7
    .parameter "scanMode"
    .parameter "discoverableTimeout"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    .line 43
    .local v1, argumentTypes:[Ljava/lang/Class;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 44
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v2, Lcom/google/glass/hidden/MethodInvoker;

    const-string v3, "setScanMode"

    invoke-direct {v2, v0, v3, v1}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method
