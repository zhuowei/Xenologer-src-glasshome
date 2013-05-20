.class Lcom/google/glass/home/companion/PingRequester$1;
.super Landroid/os/Handler;
.source "PingRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/PingRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/companion/PingRequester;


# direct methods
.method constructor <init>(Lcom/google/glass/home/companion/PingRequester;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/home/companion/PingRequester$1;->this$0:Lcom/google/glass/home/companion/PingRequester;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 35
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/home/companion/PingRequester$1;->this$0:Lcom/google/glass/home/companion/PingRequester;

    #getter for: Lcom/google/glass/home/companion/PingRequester;->expectedDevice:Lcom/google/glass/companion/BluetoothDeviceWrapper;
    invoke-static {v1}, Lcom/google/glass/home/companion/PingRequester;->access$000(Lcom/google/glass/home/companion/PingRequester;)Lcom/google/glass/companion/BluetoothDeviceWrapper;

    move-result-object v0

    .line 38
    .local v0, deviceToPing:Lcom/google/glass/companion/BluetoothDeviceWrapper;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/glass/companion/BluetoothDeviceWrapper;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 40
    invoke-static {}, Lcom/google/glass/home/companion/PingRequester;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pinging device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/glass/companion/BluetoothDeviceWrapper;->loggableDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/google/glass/home/companion/PingRequester$1;->this$0:Lcom/google/glass/home/companion/PingRequester;

    #getter for: Lcom/google/glass/home/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/google/glass/home/companion/PingRequester;->access$200(Lcom/google/glass/home/companion/PingRequester;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/google/glass/home/companion/PingRequester$1;->this$0:Lcom/google/glass/home/companion/PingRequester;

    iget-object v2, p0, Lcom/google/glass/home/companion/PingRequester$1;->this$0:Lcom/google/glass/home/companion/PingRequester;

    #getter for: Lcom/google/glass/home/companion/PingRequester;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/google/glass/home/companion/PingRequester;->access$300(Lcom/google/glass/home/companion/PingRequester;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/hidden/HiddenWifiManager;->getBtcCtsMode(Landroid/net/wifi/WifiManager;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/google/glass/home/companion/PingRequester;->oldBtcCtsMode:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/google/glass/home/companion/PingRequester;->access$202(Lcom/google/glass/home/companion/PingRequester;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/companion/PingRequester$1;->this$0:Lcom/google/glass/home/companion/PingRequester;

    #getter for: Lcom/google/glass/home/companion/PingRequester;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/google/glass/home/companion/PingRequester;->access$300(Lcom/google/glass/home/companion/PingRequester;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/glass/hidden/HiddenWifiManager;->setBtcCtsMode(Landroid/net/wifi/WifiManager;Z)V

    .line 47
    iget-object v1, p0, Lcom/google/glass/home/companion/PingRequester$1;->this$0:Lcom/google/glass/home/companion/PingRequester;

    #getter for: Lcom/google/glass/home/companion/PingRequester;->uuidFetcher:Lcom/google/glass/companion/UuidFetcher;
    invoke-static {v1}, Lcom/google/glass/home/companion/PingRequester;->access$400(Lcom/google/glass/home/companion/PingRequester;)Lcom/google/glass/companion/UuidFetcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/companion/UuidFetcher;->fetch(Lcom/google/glass/companion/BluetoothDeviceWrapper;)Z

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lcom/google/glass/home/companion/PingRequester;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip pinging device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/glass/companion/BluetoothDeviceWrapper;->loggableDevice()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
