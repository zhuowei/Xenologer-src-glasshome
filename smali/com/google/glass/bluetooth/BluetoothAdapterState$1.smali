.class Lcom/google/glass/bluetooth/BluetoothAdapterState$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothAdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/BluetoothAdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bluetoothAdapterStateChangeReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0xa

    .line 28
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    :cond_0
    return-void

    .line 32
    :cond_1
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 35
    .local v0, adapterState:I
    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    .line 36
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$000(Lcom/google/glass/bluetooth/BluetoothAdapterState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    .line 37
    .local v2, l:Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    invoke-interface {v2}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterEnabled()V

    goto :goto_0

    .line 39
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    :cond_2
    if-ne v0, v5, :cond_0

    .line 40
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$000(Lcom/google/glass/bluetooth/BluetoothAdapterState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    .line 41
    .restart local v2       #l:Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    invoke-interface {v2}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterDisabled()V

    goto :goto_1
.end method
