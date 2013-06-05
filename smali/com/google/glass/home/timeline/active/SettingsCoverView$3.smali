.class Lcom/google/glass/home/timeline/active/SettingsCoverView$3;
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
    .line 91
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$500()Ljava/lang/String;

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

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #calls: Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateBattery()V
    invoke-static {v2}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$200(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    .line 112
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v4, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    const-string v2, "com.google.glass.bluetooth.EXTRA_DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    #setter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->singlyPairedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v2}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$302(Lcom/google/glass/home/timeline/active/SettingsCoverView;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 102
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #calls: Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateConnectivity()V
    invoke-static {v2}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$000(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    goto :goto_0

    .line 104
    :cond_2
    const-string v4, "com.google.glass.action.HEADSET_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    const-string v4, "com.google.glass.extra.STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 108
    .local v1, state:I
    iget-object v4, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    if-ne v1, v2, :cond_4

    :goto_1
    #setter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->isHeadset:Z
    invoke-static {v4, v2}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$402(Lcom/google/glass/home/timeline/active/SettingsCoverView;Z)Z

    .line 110
    .end local v1           #state:I
    :cond_3
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$3;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #calls: Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateConnectivity()V
    invoke-static {v2}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$000(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    goto :goto_0

    .restart local v1       #state:I
    :cond_4
    move v2, v3

    .line 108
    goto :goto_1
.end method
