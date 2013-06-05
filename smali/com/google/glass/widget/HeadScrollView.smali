.class public Lcom/google/glass/widget/HeadScrollView;
.super Landroid/widget/FrameLayout;
.source "HeadScrollView.java"

# interfaces
.implements Lcom/google/glass/input/OrientationHelper$OrientationListener;


# static fields
.field private static final PIXELS_PER_DEGREES:F = 25.0f


# instance fields
.field private allowScrolling:Z

.field private maxScrollX:I

.field private maxScrollY:I

.field private midPointX:I

.field private midPointY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/HeadScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollX:I

    .line 24
    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollY:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/HeadScrollView;->allowScrolling:Z

    .line 37
    return-void
.end method

.method private clampAndScroll(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 141
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 142
    const/4 p1, 0x0

    .line 146
    :cond_0
    :goto_0
    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    .line 147
    const/4 p2, 0x0

    .line 151
    :cond_1
    :goto_1
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/HeadScrollView;->scrollTo(II)V

    .line 152
    return-void

    .line 143
    :cond_2
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollX:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 144
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollX:I

    int-to-float p1, v0

    goto :goto_0

    .line 148
    :cond_3
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollY:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 149
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollY:I

    int-to-float p2, v0

    goto :goto_1
.end method

.method private updateFocusedChild()V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v0, v2

    .line 134
    .local v0, x:F
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 136
    .local v1, y:F
    invoke-static {}, Lcom/google/glass/widget/PointFocusableHelper;->getInstance()Lcom/google/glass/widget/PointFocusableHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/glass/widget/HeadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/glass/widget/PointFocusableHelper;->dispatchRequestPointFocus(Landroid/view/View;FF)Z

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 72
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 43
    .local v0, childMeasureSpec:I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 44
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 4
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 51
    .local v1, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 53
    .local v0, childMeasureSpec:I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 54
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 95
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0, v3}, Lcom/google/glass/widget/HeadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollX:I

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollY:I

    .line 103
    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollX:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/widget/HeadScrollView;->midPointX:I

    .line 104
    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollY:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/widget/HeadScrollView;->midPointY:I

    .line 105
    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->midPointX:I

    iget v2, p0, Lcom/google/glass/widget/HeadScrollView;->midPointY:I

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/widget/HeadScrollView;->scrollTo(II)V

    .line 107
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onOrientationChanged(FFFJ)V
    .locals 5
    .parameter "yaw"
    .parameter "pitch"
    .parameter "roll"
    .parameter "timestamp"

    .prologue
    const/high16 v4, 0x41c8

    .line 111
    iget-boolean v2, p0, Lcom/google/glass/widget/HeadScrollView;->allowScrolling:Z

    if-nez v2, :cond_0

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    mul-float v2, p1, v4

    iget v3, p0, Lcom/google/glass/widget/HeadScrollView;->midPointX:I

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 115
    .local v0, scrollX:F
    mul-float v2, p2, v4

    iget v3, p0, Lcom/google/glass/widget/HeadScrollView;->midPointY:I

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 117
    .local v1, scrollY:F
    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/HeadScrollView;->clampAndScroll(FF)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "oldScrollX"
    .parameter "oldScrollY"

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 123
    invoke-direct {p0}, Lcom/google/glass/widget/HeadScrollView;->updateFocusedChild()V

    .line 124
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/HeadScrollView;->allowScrolling:Z

    .line 159
    return-void
.end method
