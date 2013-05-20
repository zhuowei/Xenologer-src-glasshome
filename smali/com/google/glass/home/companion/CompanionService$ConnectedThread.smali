.class Lcom/google/glass/home/companion/CompanionService$ConnectedThread;
.super Ljava/lang/Thread;
.source "CompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/CompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedThread"
.end annotation


# instance fields
.field private final socket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/google/glass/home/companion/CompanionService;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/companion/CompanionService;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0
    .parameter
    .parameter "socket"

    .prologue
    .line 522
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 523
    iput-object p2, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 524
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to close Bluetooth socket."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 536
    const-string v1, "ConnectedThread"

    invoke-virtual {p0, v1}, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->setName(Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    #getter for: Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;
    invoke-static {v1}, Lcom/google/glass/home/companion/CompanionService;->access$800(Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    #getter for: Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;
    invoke-static {v1}, Lcom/google/glass/home/companion/CompanionService;->access$800(Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/companion/CompanionConnection;->close()V

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    new-instance v2, Lcom/google/glass/home/companion/CompanionConnection;

    iget-object v3, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    iget-object v4, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->socket:Landroid/bluetooth/BluetoothSocket;

    iget-object v5, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    #getter for: Lcom/google/glass/home/companion/CompanionService;->wifiHelper:Lcom/google/glass/util/WifiHelper;
    invoke-static {v5}, Lcom/google/glass/home/companion/CompanionService;->access$900(Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/util/WifiHelper;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/glass/home/companion/CompanionConnection;-><init>(Lcom/google/glass/home/companion/CompanionService;Landroid/bluetooth/BluetoothSocket;Lcom/google/glass/util/WifiHelper;)V

    #setter for: Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;
    invoke-static {v1, v2}, Lcom/google/glass/home/companion/CompanionService;->access$802(Lcom/google/glass/home/companion/CompanionService;Lcom/google/glass/home/companion/CompanionConnection;)Lcom/google/glass/home/companion/CompanionConnection;

    .line 543
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 545
    .local v0, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->CONNECTED:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    invoke-static {v1}, Lcom/google/glass/home/companion/CompanionService;->access$602(Lcom/google/glass/home/companion/CompanionService$ConnectionState;)Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    .line 546
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/companion/CompanionService;->notifyCompanionConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 549
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting Companion connection handling."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    #getter for: Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;
    invoke-static {v1}, Lcom/google/glass/home/companion/CompanionService;->access$800(Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/companion/CompanionConnection;->run()V

    .line 551
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Completed Companion connection handling."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    #getter for: Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;
    invoke-static {v1}, Lcom/google/glass/home/companion/CompanionService;->access$800(Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/companion/CompanionConnection;->close()V

    .line 554
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    const/4 v2, 0x0

    #setter for: Lcom/google/glass/home/companion/CompanionService;->connection:Lcom/google/glass/home/companion/CompanionConnection;
    invoke-static {v1, v2}, Lcom/google/glass/home/companion/CompanionService;->access$802(Lcom/google/glass/home/companion/CompanionService;Lcom/google/glass/home/companion/CompanionConnection;)Lcom/google/glass/home/companion/CompanionConnection;

    .line 556
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1, v2}, Lcom/google/glass/home/companion/CompanionService;->closeSocket(Ljava/io/Closeable;)V

    .line 559
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connection closed, restarting Companion service..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    #getter for: Lcom/google/glass/home/companion/CompanionService;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/home/companion/CompanionService;->access$100(Lcom/google/glass/home/companion/CompanionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 562
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$ConnectedThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v1}, Lcom/google/glass/home/companion/CompanionService;->notifyCompanionDisconnected()V

    .line 563
    return-void
.end method
