.class Lcom/google/glass/home/settings/BluetoothSettingsItemView$5;
.super Ljava/lang/Object;
.source "BluetoothSettingsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/BluetoothSettingsItemView;->onUnsettled()V
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
    .line 329
    iput-object p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$5;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 332
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->cancelDiscoverable()V

    .line 333
    return-void
.end method
