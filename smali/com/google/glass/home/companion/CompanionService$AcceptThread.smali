.class Lcom/google/glass/home/companion/CompanionService$AcceptThread;
.super Ljava/lang/Thread;
.source "CompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/CompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptThread"
.end annotation


# instance fields
.field private final canCloseServerSocket:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile serverSocket:Landroid/bluetooth/BluetoothServerSocket;

.field final synthetic this$0:Lcom/google/glass/home/companion/CompanionService;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/companion/CompanionService;)V
    .locals 2
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 425
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->canCloseServerSocket:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 427
    return-void
.end method

.method private createServerSocket()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 440
    const/4 v1, 0x0

    .line 442
    .local v1, tmp:Landroid/bluetooth/BluetoothServerSocket;
    :try_start_0
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listening using secure SDP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/glass/companion/CompanionConstants;->SECURE_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v4, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    #getter for: Lcom/google/glass/home/companion/CompanionService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v4}, Lcom/google/glass/home/companion/CompanionService;->access$500(Lcom/google/glass/home/companion/CompanionService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    const-string v5, "Companion"

    sget-object v6, Lcom/google/glass/companion/CompanionConstants;->SECURE_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 449
    :goto_0
    iput-object v1, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 453
    iget-object v4, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->canCloseServerSocket:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 454
    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    iget-object v4, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v2, v4}, Lcom/google/glass/home/companion/CompanionService;->closeSocket(Ljava/io/Closeable;)V

    .line 458
    :goto_1
    return v3

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to listen for Bluetooth server socket connect."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 458
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    iget-object v4, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v4, :cond_1

    :goto_2
    move v3, v2

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->canCloseServerSocket:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/companion/CompanionService;->closeSocket(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 463
    const-string v2, "AcceptThread"

    invoke-virtual {p0, v2}, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->setName(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->createServerSocket()Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AcceptThread now running."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1
    :goto_1
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$600()Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    move-result-object v2

    sget-object v3, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->CONNECTED:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    if-eq v2, v3, :cond_2

    .line 475
    :try_start_0
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Waiting for a Companion client to connect..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 482
    .local v1, socket:Landroid/bluetooth/BluetoothSocket;
    if-eqz v1, :cond_1

    .line 483
    sget-object v2, Lcom/google/glass/home/companion/CompanionService$4;->$SwitchMap$com$google$glass$home$companion$CompanionService$ConnectionState:[I

    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$600()Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 487
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    #calls: Lcom/google/glass/home/companion/CompanionService;->connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v1, v3}, Lcom/google/glass/home/companion/CompanionService;->access$700(Lcom/google/glass/home/companion/CompanionService;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 477
    .end local v1           #socket:Landroid/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to accept Bluetooth socket."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AcceptThread done running."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    .restart local v1       #socket:Landroid/bluetooth/BluetoothSocket;
    :pswitch_1
    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionService$AcceptThread;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v2, v1}, Lcom/google/glass/home/companion/CompanionService;->closeSocket(Ljava/io/Closeable;)V

    goto :goto_1

    .line 483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
