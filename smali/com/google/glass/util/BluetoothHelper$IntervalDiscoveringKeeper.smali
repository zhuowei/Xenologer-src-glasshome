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
.field private final btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

.field private final discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final handler:Landroid/os/Handler;

.field private isKeptDiscovering:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    .line 197
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    .line 199
    new-instance v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;-><init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)V

    iput-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 236
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

    .line 237
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 238
    iget-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 242
    iput-boolean v4, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    .line 243
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    aput-object v3, v1, v2

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_0
.end method

.method public start(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "delayMs"

    .prologue
    .line 263
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

    .line 265
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 266
    iget-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 269
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 270
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
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
    .line 287
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

    .line 288
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 289
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 290
    iget-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->isKeptDiscovering:Z

    .line 294
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->discoveringProcessReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 295
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto :goto_0
.end method
