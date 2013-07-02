.class Lcom/google/glass/home/settings/BluetoothSettingsItemView$4;
.super Ljava/lang/Object;
.source "BluetoothSettingsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/BluetoothSettingsItemView;->onSettled()V
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
    .line 316
    iput-object p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$4;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 320
    invoke-static {}, Lcom/google/glass/util/BluetoothHelper;->makeBluetoothDiscoverable()V

    .line 321
    return-void
.end method
