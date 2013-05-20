.class public Lcom/google/glass/widget/OptionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "OptionMenuItemView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/HorizontalScrollItem;


# instance fields
.field private listener:Lcom/google/glass/widget/OptionMenuView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/google/glass/widget/OptionMenuItemView;->initialize()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/google/glass/widget/OptionMenuItemView;->initialize()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/google/glass/widget/OptionMenuItemView;->initialize()V

    .line 33
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/common/R$layout;->option_menu_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    return-void
.end method


# virtual methods
.method public getBundleId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 2
    .parameter "activity"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuItemView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    if-eqz v1, :cond_0

    .line 49
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/OptionMenuItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/OptionMenu$Item;

    .line 50
    .local v0, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu$Item;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuItemView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    invoke-interface {v1, v0}, Lcom/google/glass/widget/OptionMenuView$Listener;->onMenuOptionConfirmed(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x1

    .line 55
    .end local v0           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public setListener(Lcom/google/glass/widget/OptionMenuView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuItemView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    .line 37
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
