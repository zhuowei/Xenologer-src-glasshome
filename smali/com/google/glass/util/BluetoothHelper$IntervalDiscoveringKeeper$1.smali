.class Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/discoveringProcessReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;
    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$000(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/companion/BluetoothAdapterWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/BluetoothAdapterWrapper;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;
    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$000(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/companion/BluetoothAdapterWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/BluetoothAdapterWrapper;->cancelDiscovery()Z

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$100(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$100(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1$1;

    invoke-direct {v2, p0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1$1;-><init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;)V

    const-wide/32 v3, 0xe290

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
