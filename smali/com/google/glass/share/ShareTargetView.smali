.class public Lcom/google/glass/share/ShareTargetView;
.super Landroid/widget/LinearLayout;
.source "ShareTargetView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/HorizontalScrollItem;


# instance fields
.field private listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/google/glass/share/ShareTargetView;->initialize()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/google/glass/share/ShareTargetView;->initialize()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/google/glass/share/ShareTargetView;->initialize()V

    .line 35
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/glass/share/ShareTargetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->share_target:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method public getBundleId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 2
    .parameter "activity"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/google/glass/share/ShareTargetView;->listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

    if-eqz v1, :cond_0

    .line 51
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, v1}, Lcom/google/glass/share/ShareTargetView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 52
    .local v0, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    iget-object v1, p0, Lcom/google/glass/share/ShareTargetView;->listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

    invoke-interface {v1, v0}, Lcom/google/glass/share/ShareHorizontalScrollView$Listener;->onShareTargetConfirm(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x1

    .line 57
    .end local v0           #shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
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
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public setListener(Lcom/google/glass/share/ShareHorizontalScrollView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/glass/share/ShareTargetView;->listener:Lcom/google/glass/share/ShareHorizontalScrollView$Listener;

    .line 44
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
