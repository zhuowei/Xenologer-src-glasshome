.class public final Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/BluetoothHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntervalDiscoveringKeeper"
.end annotation


# static fields
.field public static final DISCOVER_INTERVAL_MS:J = 0xe290L


# instance fields
.field private final btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;

.field private final discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final handler:Landroid/os/Handler;

.field private isKeptDiscovering:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-static {}, Lcom/google/glass/companion/BluetoothAdapterWrapper;->getBluetoothAdapterWrapper()Lcom/google/glass/companion/BluetoothAdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    .line 283
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    .line 285
    new-instance v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;-><init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)V

    iput-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    .line 313
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/companion/BluetoothAdapterWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 322
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start with isKeptDiscovering = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 324
    iget-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 328
    iput-boolean v4, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    .line 329
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    aput-object v3, v1, v2

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lcom/google/glass/companion/BluetoothAdapterWrapper;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lcom/google/glass/companion/BluetoothAdapterWrapper;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lcom/google/glass/companion/BluetoothAdapterWrapper;->startDiscovery()Z

    goto :goto_0
.end method

.method public start(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "delayMs"

    .prologue
    .line 350
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start with isKeptDiscovering = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and delayMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 353
    iget-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    if-eqz v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 356
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 357
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$2;-><init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;Landroid/content/Context;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 374
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop with isKeptDiscovering = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 376
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 377
    iget-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    .line 381
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 382
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lcom/google/glass/companion/BluetoothAdapterWrapper;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 383
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lcom/google/glass/companion/BluetoothAdapterWrapper;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/companion/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lcom/google/glass/companion/BluetoothAdapterWrapper;->cancelDiscovery()Z

    goto :goto_0
.end method
