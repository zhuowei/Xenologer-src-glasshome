.class Lcom/google/glass/home/settings/WifiSettingsItemView$4;
.super Landroid/os/AsyncTask;
.source "WifiSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WifiSettingsItemView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "params"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsItemView;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$600(Lcom/google/glass/home/settings/WifiSettingsItemView;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/WifiSettingsItemView$4;->doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/wifi/WifiInfo;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #calls: Lcom/google/glass/home/settings/WifiSettingsItemView;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    invoke-static {v0, p1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$700(Lcom/google/glass/home/settings/WifiSettingsItemView;Landroid/net/wifi/WifiInfo;)V

    .line 172
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    check-cast p1, Landroid/net/wifi/WifiInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/WifiSettingsItemView$4;->onPostExecute(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method
