.class Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "DonDoffSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/DonDoffSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DonDoffStateChangeListener"
.end annotation


# instance fields
.field final enableState:Z

.field final synthetic this$0:Lcom/google/glass/home/settings/DonDoffSettingsItemView;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/settings/DonDoffSettingsItemView;Z)V
    .locals 0
    .parameter
    .parameter "enableState"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;->this$0:Lcom/google/glass/home/settings/DonDoffSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    .line 46
    iput-boolean p2, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;->enableState:Z

    .line 47
    return-void
.end method

.method private getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;->enableState:Z

    if-eqz v0, :cond_0

    const-string v0, "on"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " don detection cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public onDone()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Turn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;->getStateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " don detection confirmed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x1

    .line 60
    .local v0, success:Z
    iget-object v1, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;->this$0:Lcom/google/glass/home/settings/DonDoffSettingsItemView;

    invoke-virtual {v1}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;->enableState:Z

    invoke-static {v1, v2}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->setDonDoffDetectionEnabled(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to set don/doff detection status to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;->enableState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;->this$0:Lcom/google/glass/home/settings/DonDoffSettingsItemView;

    #calls: Lcom/google/glass/home/settings/DonDoffSettingsItemView;->updateDonDoffEnableStatusText()Z
    invoke-static {v1}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->access$100(Lcom/google/glass/home/settings/DonDoffSettingsItemView;)Z

    .line 66
    iget-object v1, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;->this$0:Lcom/google/glass/home/settings/DonDoffSettingsItemView;

    #calls: Lcom/google/glass/home/settings/DonDoffSettingsItemView;->updateDonDoffEnableIconState()Z
    invoke-static {v1}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->access$200(Lcom/google/glass/home/settings/DonDoffSettingsItemView;)Z

    .line 68
    if-nez v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/google/glass/home/settings/DonDoffSettingsItemView$DonDoffStateChangeListener;->this$0:Lcom/google/glass/home/settings/DonDoffSettingsItemView;

    sget v2, Lcom/google/glass/home/R$string;->don_doff_toggle_failure:I

    #calls: Lcom/google/glass/home/settings/DonDoffSettingsItemView;->showErrorDialog(I)V
    invoke-static {v1, v2}, Lcom/google/glass/home/settings/DonDoffSettingsItemView;->access$300(Lcom/google/glass/home/settings/DonDoffSettingsItemView;I)V

    .line 71
    :cond_1
    return-void
.end method
