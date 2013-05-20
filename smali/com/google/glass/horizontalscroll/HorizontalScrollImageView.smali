.class public Lcom/google/glass/horizontalscroll/HorizontalScrollImageView;
.super Landroid/widget/ImageView;
.source "HorizontalScrollImageView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/HorizontalScrollItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getBundleId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
