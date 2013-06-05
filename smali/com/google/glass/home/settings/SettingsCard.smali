.class public abstract Lcom/google/glass/home/settings/SettingsCard;
.super Lcom/google/glass/horizontalscroll/LinearLayoutCard;
.source "SettingsCard.java"


# instance fields
.field private dialog:Lcom/google/glass/widget/MessageDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/settings/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private clearDialog()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/settings/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    .line 53
    return-void
.end method


# virtual methods
.method public onUnload()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/home/settings/SettingsCard;->clearDialog()V

    .line 36
    return-void
.end method

.method protected final showDialog(Lcom/google/glass/widget/MessageDialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/home/settings/SettingsCard;->clearDialog()V

    .line 41
    iput-object p1, p0, Lcom/google/glass/home/settings/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    .line 42
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 43
    return-void
.end method
