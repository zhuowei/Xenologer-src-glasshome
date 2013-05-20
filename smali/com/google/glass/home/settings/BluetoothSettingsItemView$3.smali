.class Lcom/google/glass/home/settings/BluetoothSettingsItemView$3;
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
    .line 95
    iput-object p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$000()Ljava/lang/String;

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
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-static {}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v3, "com.google.glass.action.HEADSET_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const-string v3, "com.google.glass.extra.STATE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 103
    .local v0, state:I
    iget-object v3, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    if-ne v0, v1, :cond_1

    :goto_0
    #setter for: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->headsetConnected:Z
    invoke-static {v3, v1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$402(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Z)Z

    .line 105
    .end local v0           #state:I
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    invoke-static {p1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getCompanionState()Lcom/google/glass/home/companion/CompanionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/companion/CompanionState;->isConnected()Z

    move-result v2

    #setter for: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionConnected:Z
    invoke-static {v1, v2}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$502(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Z)Z

    .line 106
    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    #calls: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V
    invoke-static {v1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$200(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    .line 107
    return-void

    .restart local v0       #state:I
    :cond_1
    move v1, v2

    .line 103
    goto :goto_0
.end method
