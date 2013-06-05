.class public Lcom/google/glass/companion/BluetoothServerSocketWrapper;
.super Ljava/lang/Object;
.source "BluetoothServerSocketWrapper.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final serverSocket:Landroid/bluetooth/BluetoothServerSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothServerSocket;)V
    .locals 0
    .parameter "serverSocket"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/glass/companion/BluetoothServerSocketWrapper;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 19
    return-void
.end method


# virtual methods
.method public accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothServerSocketWrapper;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothServerSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public accept()Lcom/google/glass/companion/BluetoothSocketWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/google/glass/companion/BluetoothSocketWrapper;

    iget-object v1, p0, Lcom/google/glass/companion/BluetoothServerSocketWrapper;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/BluetoothSocketWrapper;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/companion/BluetoothServerSocketWrapper;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 31
    return-void
.end method
