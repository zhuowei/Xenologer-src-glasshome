.class Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "HeadWakeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/HeadWakeSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadWakeStateChangeListener"
.end annotation


# instance fields
.field final enableState:Z

.field final synthetic this$0:Lcom/google/glass/home/settings/HeadWakeSettingsItemView;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/settings/HeadWakeSettingsItemView;Z)V
    .locals 0
    .parameter
    .parameter "enableState"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->this$0:Lcom/google/glass/home/settings/HeadWakeSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    .line 54
    iput-boolean p2, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->enableState:Z

    .line 55
    return-void
.end method

.method private getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->enableState:Z

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
    .line 59
    invoke-static {}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " head wake cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public onDone()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " head wake confirmed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->this$0:Lcom/google/glass/home/settings/HeadWakeSettingsItemView;

    invoke-virtual {v0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->enableState:Z

    invoke-static {v0, v1}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->setHeadWakeEnabledPersistent(Landroid/content/Context;Z)V

    .line 66
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakeSettingsItemView$HeadWakeStateChangeListener;->this$0:Lcom/google/glass/home/settings/HeadWakeSettingsItemView;

    #calls: Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->updateHeadWakeEnableState()V
    invoke-static {v0}, Lcom/google/glass/home/settings/HeadWakeSettingsItemView;->access$100(Lcom/google/glass/home/settings/HeadWakeSettingsItemView;)V

    .line 67
    return-void
.end method
