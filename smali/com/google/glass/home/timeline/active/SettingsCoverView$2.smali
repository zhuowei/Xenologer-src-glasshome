.class Lcom/google/glass/home/timeline/active/SettingsCoverView$2;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SettingsCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/SettingsCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/stateReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #calls: Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateConnectivity()V
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$000(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    .line 87
    return-void

    .line 83
    :cond_1
    const-string v1, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    const-string v1, "com.google.glass.bluetooth.EXTRA_DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #setter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->singlyPairedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v1}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$102(Lcom/google/glass/home/timeline/active/SettingsCoverView;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0
.end method
