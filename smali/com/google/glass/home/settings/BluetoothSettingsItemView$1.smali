.class Lcom/google/glass/home/settings/BluetoothSettingsItemView$1;
.super Ljava/lang/Object;
.source "BluetoothSettingsItemView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 60
    iput-object p1, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 71
    invoke-static {}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    check-cast p2, Lcom/google/glass/home/companion/CompanionService$CompanionBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/google/glass/home/companion/CompanionService$CompanionBinder;->getService()Lcom/google/glass/home/companion/CompanionService;

    move-result-object v1

    #setter for: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionService:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v0, v1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$102(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionService;

    .line 75
    invoke-static {}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Companion protocol version, Glass=6, MyGlass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionService:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v2}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$100(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)Lcom/google/glass/home/companion/CompanionService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/companion/CompanionService;->getRemoteVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionService:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$100(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)Lcom/google/glass/home/companion/CompanionService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService;->getRemoteVersion()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    #calls: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->update()V
    invoke-static {v0}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$200(Lcom/google/glass/home/settings/BluetoothSettingsItemView;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 63
    invoke-static {}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/glass/home/companion/CompanionService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/glass/home/settings/BluetoothSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/BluetoothSettingsItemView;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/home/settings/BluetoothSettingsItemView;->companionService:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v0, v1}, Lcom/google/glass/home/settings/BluetoothSettingsItemView;->access$102(Lcom/google/glass/home/settings/BluetoothSettingsItemView;Lcom/google/glass/home/companion/CompanionService;)Lcom/google/glass/home/companion/CompanionService;

    .line 67
    :cond_0
    return-void
.end method
