.class Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/BluetoothSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pairingReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v4, "com.google.glass.action.HEADSET_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const-string v4, "com.google.glass.extra.STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, state:I
    iget-object v4, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    if-ne v1, v2, :cond_1

    :goto_0
    #setter for: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->headsetConnected:Z
    invoke-static {v4, v2}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$202(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Z)Z

    .line 93
    iget-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    #calls: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V
    invoke-static {v2}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$100(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    .line 117
    .end local v1           #state:I
    :cond_0
    :goto_1
    return-void

    .restart local v1       #state:I
    :cond_1
    move v2, v3

    .line 92
    goto :goto_0

    .line 94
    .end local v1           #state:I
    :cond_2
    const-string v4, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    const-string v4, "com.google.glass.bluetooth.EXTRA_DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 97
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 100
    new-instance v4, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2$1;

    invoke-direct {v4, p0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2$1;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;)V

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-array v2, v2, [Landroid/bluetooth/BluetoothDevice;

    aput-object v0, v2, v3

    invoke-virtual {v4, v5, v2}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 115
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    iget-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    #calls: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V
    invoke-static {v2}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$100(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    goto :goto_1
.end method
