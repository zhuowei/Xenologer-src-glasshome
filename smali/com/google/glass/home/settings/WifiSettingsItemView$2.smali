.class Lcom/google/glass/home/settings/WifiSettingsItemView$2;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "WifiSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/WifiSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/statusReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #calls: Lcom/google/glass/home/settings/WifiSettingsItemView;->update()V
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$000(Lcom/google/glass/home/settings/WifiSettingsItemView;)V

    .line 76
    return-void
.end method
