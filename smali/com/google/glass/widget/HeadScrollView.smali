.class public Lcom/google/glass/widget/HeadScrollView;
.super Landroid/widget/FrameLayout;
.source "HeadScrollView.java"

# interfaces
.implements Lcom/google/glass/input/OrientationHelper$OrientationListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field private static final PIXELS_PER_DEGREES:F = 25.0f


# instance fields
.field private allowScrolling:Z

.field private maxScrollX:I

.field private maxScrollY:I

.field private movedToCenter:Z

.field private startScrollX:I

.field private startScrollY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/HeadScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v1, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollX:I

    .line 26
    iput v1, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollY:I

    .line 28
    iput v1, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollX:I

    .line 29
    iput v1, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollY:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/HeadScrollView;->allowScrolling:Z

    .line 32
    iput-boolean v1, p0, Lcom/google/glass/widget/HeadScrollView;->movedToCenter:Z

    .line 40
    return-void
.end method

.method private clampAndScroll(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 131
    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    .line 132
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollX:I

    .line 133
    const/4 p1, 0x0

    .line 138
    :cond_0
    :goto_0
    cmpg-float v0, p2, v2

    if-gez v0, :cond_3

    .line 139
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollY:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollY:I

    .line 140
    const/4 p2, 0x0

    .line 145
    :cond_1
    :goto_1
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/HeadScrollView;->scrollTo(II)V

    .line 146
    return-void

    .line 134
    :cond_2
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollX:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 135
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollX:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollX:I

    .line 136
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollX:I

    int-to-float p1, v0

    goto :goto_0

    .line 141
    :cond_3
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollY:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 142
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollY:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollY:I

    .line 143
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollY:I

    int-to-float p2, v0

    goto :goto_1
.end method

.method private tare(IIZ)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "scrollToPoint"

    .prologue
    .line 166
    iput p1, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollX:I

    .line 167
    iput p2, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollY:I

    .line 168
    if-eqz p3, :cond_0

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/widget/HeadScrollView;->scrollTo(II)V

    .line 171
    :cond_0
    return-void
.end method

.method private updateFocusedChild()V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v0, v2

    .line 123
    .local v0, x:F
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 125
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
    .line 61
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 75
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 86
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 46
    .local v0, childMeasureSpec:I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 47
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
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    .local v1, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 56
    .local v0, childMeasureSpec:I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 57
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/glass/widget/HeadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollX:I

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollY:I

    .line 181
    iget v2, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollX:I

    div-int/lit8 v0, v2, 0x2

    .line 182
    .local v0, midPointX:I
    iget v2, p0, Lcom/google/glass/widget/HeadScrollView;->maxScrollY:I

    div-int/lit8 v1, v2, 0x2

    .line 183
    .local v1, midPointY:I
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/widget/HeadScrollView;->movedToCenter:Z

    if-nez v2, :cond_0

    .line 184
    iput-boolean v5, p0, Lcom/google/glass/widget/HeadScrollView;->movedToCenter:Z

    .line 185
    invoke-direct {p0, v0, v1, v5}, Lcom/google/glass/widget/HeadScrollView;->tare(IIZ)V

    .line 188
    .end local v0           #midPointX:I
    .end local v1           #midPointY:I
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

    .line 99
    iget-boolean v2, p0, Lcom/google/glass/widget/HeadScrollView;->allowScrolling:Z

    if-nez v2, :cond_0

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    mul-float v2, p1, v4

    iget v3, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollX:I

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 104
    .local v0, scrollX:F
    mul-float v2, p2, v4

    iget v3, p0, Lcom/google/glass/widget/HeadScrollView;->startScrollY:I

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 106
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
    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 112
    invoke-direct {p0}, Lcom/google/glass/widget/HeadScrollView;->updateFocusedChild()V

    .line 113
    return-void
.end method

.method public setAllowScrolling(Z)V
    .locals 3
    .parameter "allowScrolling"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/google/glass/widget/HeadScrollView;->allowScrolling:Z

    .line 155
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getScrollY()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/HeadScrollView;->tare(IIZ)V

    .line 156
    return-void
.end method
