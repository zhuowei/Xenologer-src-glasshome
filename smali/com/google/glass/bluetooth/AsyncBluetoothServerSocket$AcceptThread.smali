.class Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;
.super Ljava/lang/Thread;
.source "AsyncBluetoothServerSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AcceptThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    #getter for: Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->socket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$100(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    .line 65
    .local v1, newSocket:Landroid/bluetooth/BluetoothSocket;
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    #getter for: Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$300(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread$1;-><init>(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;Landroid/bluetooth/BluetoothSocket;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v1           #newSocket:Landroid/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$AcceptThread;->this$0:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    #getter for: Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->isCleanShutdown:Z
    invoke-static {v2}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$400(Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    invoke-static {}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unexpected shutdown of async server socket"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_0
    return-void
.end method
