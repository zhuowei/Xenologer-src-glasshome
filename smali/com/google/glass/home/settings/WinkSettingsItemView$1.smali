.class Lcom/google/glass/home/settings/WinkSettingsItemView$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "WinkSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WinkSettingsItemView;->onTurnOffWinkDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WinkSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WinkSettingsItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/glass/home/settings/WinkSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/WinkSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lcom/google/glass/home/settings/WinkSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Turn off wink detection cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public onDone()V
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Lcom/google/glass/home/settings/WinkSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Turn off wink detection confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/google/glass/home/settings/WinkSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/WinkSettingsItemView;

    const/4 v1, 0x0

    #calls: Lcom/google/glass/home/settings/WinkSettingsItemView;->setWinkDetectionEnabled(Z)Z
    invoke-static {v0, v1}, Lcom/google/glass/home/settings/WinkSettingsItemView;->access$100(Lcom/google/glass/home/settings/WinkSettingsItemView;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/google/glass/home/settings/WinkSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to turn off wink detection."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/google/glass/home/settings/WinkSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/WinkSettingsItemView;

    sget v1, Lcom/google/glass/home/R$string;->wink_toggle_failure:I

    #calls: Lcom/google/glass/home/settings/WinkSettingsItemView;->showErrorDialog(I)V
    invoke-static {v0, v1}, Lcom/google/glass/home/settings/WinkSettingsItemView;->access$200(Lcom/google/glass/home/settings/WinkSettingsItemView;I)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/settings/WinkSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/WinkSettingsItemView;

    #calls: Lcom/google/glass/home/settings/WinkSettingsItemView;->updateWinkEnableStatusUI()Z
    invoke-static {v0}, Lcom/google/glass/home/settings/WinkSettingsItemView;->access$300(Lcom/google/glass/home/settings/WinkSettingsItemView;)Z

    .line 192
    return-void
.end method
