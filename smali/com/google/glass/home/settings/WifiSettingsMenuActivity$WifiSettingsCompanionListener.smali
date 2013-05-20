.class Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;
.super Lcom/google/glass/home/companion/CompanionService$SimpleCompanionListener;
.source "WifiSettingsMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/WifiSettingsMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSettingsCompanionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-direct {p0}, Lcom/google/glass/home/companion/CompanionService$SimpleCompanionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;Lcom/google/glass/home/settings/WifiSettingsMenuActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;-><init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V

    return-void
.end method

.method private onConnectionStatusChanged(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    new-instance v1, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener$1;-><init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;Z)V

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method


# virtual methods
.method public onCompanionConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;->onConnectionStatusChanged(Z)V

    .line 131
    return-void
.end method

.method public onCompanionConnectionFailed()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;->onConnectionStatusChanged(Z)V

    .line 141
    return-void
.end method

.method public onCompanionDisconnected()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$WifiSettingsCompanionListener;->onConnectionStatusChanged(Z)V

    .line 136
    return-void
.end method
