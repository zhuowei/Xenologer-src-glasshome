.class Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;
.super Ljava/lang/Object;
.source "BluetoothSettingsItemView.java"

# interfaces
.implements Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;


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
    .line 87
    iput-object p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothTetheringStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->tethered:Z
    invoke-static {v1, v0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$302(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Z)Z

    .line 91
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    #calls: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V
    invoke-static {v0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$200(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    .line 92
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
