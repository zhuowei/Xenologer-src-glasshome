.class Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;
.super Ljava/lang/Object;
.source "BluetoothSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/BluetoothSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PairedDeviceState"
.end annotation


# instance fields
.field final loggableName:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "loggableName"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;->name:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$PairedDeviceState;->loggableName:Ljava/lang/String;

    .line 62
    return-void
.end method
