.class public abstract Lcom/google/glass/home/settings/SettingsItemView;
.super Landroid/widget/LinearLayout;
.source "SettingsItemView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/HorizontalScrollItem;


# instance fields
.field private dialog:Lcom/google/glass/widget/MessageDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/settings/SettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/SettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method private clearDialog()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsItemView;->dialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsItemView;->dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsItemView;->dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 112
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/settings/SettingsItemView;->dialog:Lcom/google/glass/widget/MessageDialog;

    .line 113
    return-void
.end method


# virtual methods
.method public final getBundleId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "selectedOptionMenuItem"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/glass/home/settings/SettingsItemView;->clearDialog()V

    .line 57
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected final showDialog(Lcom/google/glass/widget/MessageDialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/glass/home/settings/SettingsItemView;->clearDialog()V

    .line 101
    iput-object p1, p0, Lcom/google/glass/home/settings/SettingsItemView;->dialog:Lcom/google/glass/widget/MessageDialog;

    .line 102
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsItemView;->dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 103
    return-void
.end method
