.class Lcom/google/glass/home/settings/BluetoothSettingsItemView$2$1;
.super Landroid/os/AsyncTask;
.source "BluetoothSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/bluetooth/BluetoothDevice;",
        "Ljava/lang/Void;",
        "Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2$1;->this$1:Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/bluetooth/BluetoothDevice;)Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;
    .locals 4
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;

    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2$1;->this$1:Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;

    iget-object v1, v1, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    aget-object v2, p1, v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/google/glass/util/BluetoothHelper;->loggableDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;-><init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, [Landroid/bluetooth/BluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2$1;->doInBackground([Landroid/bluetooth/BluetoothDevice;)Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2$1;->this$1:Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    #setter for: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->pairedDevice:Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;
    invoke-static {v0, p1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$302(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;)Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;

    .line 110
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2$1;->this$1:Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;

    iget-object v0, v0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    #calls: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V
    invoke-static {v0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$100(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    .line 111
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2$1;->onPostExecute(Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;)V

    return-void
.end method
