.class Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1$1;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;


# direct methods
.method constructor <init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1$1;->this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1$1;->this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;

    iget-object v0, v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;
    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$000(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/companion/BluetoothAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/BluetoothAdapterWrapper;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1$1;->this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;

    iget-object v0, v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;
    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$000(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/companion/BluetoothAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/BluetoothAdapterWrapper;->startDiscovery()Z

    .line 302
    :cond_0
    return-void
.end method
