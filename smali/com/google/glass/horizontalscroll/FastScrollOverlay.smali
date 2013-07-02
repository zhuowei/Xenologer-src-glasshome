.class public abstract Lcom/google/glass/horizontalscroll/FastScrollOverlay;
.super Landroid/widget/FrameLayout;
.source "FastScrollOverlay.java"


# static fields
.field private static final ITEM_VIEW_SPACING:F = 10.0f

.field private static final ITEM_VIEW_WIDTH:F = 211.20001f

.field private static final LABEL_LEFT_MARGIN:F = 40.0f

.field private static final LABEL_OFFSET_PER_ITEM:F = 221.20001f

.field private static final LABEL_OFFSET_WHEN_LEFT_ALIGNED:F = 60.0f

.field private static final LABEL_OFFSET_WHEN_RIGHT_ALIGNED:F = 10.0f

.field private static final LABEL_RIGHT_MARGIN:F = 40.0f

.field private static final MIN_ITEM_POSITION_FOR_LABEL:I = 0x1

.field private static final NUM_LABELS:I = 0x5

.field private static final NUM_LABELS_RIGHT_ALIGNED:I = 0x3

.field private static final SCREEN_WIDTH:F = 640.0f


# instance fields
.field private labelText:[Ljava/lang/String;

.field private labelTextWidths:[F

.field private labelX:[F

.field private labels:[Lcom/google/glass/widget/TypophileTextView;

.field private lastCenterPosition:I

.field private lastZoomFactor:F

.field private overlay:Landroid/widget/FrameLayout;

.field private final scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p4, scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<**>;"
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-array v2, v6, [Lcom/google/glass/widget/TypophileTextView;

    iput-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    .line 51
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelText:[Ljava/lang/String;

    .line 54
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelTextWidths:[F

    .line 57
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelX:[F

    .line 60
    iput v7, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->lastZoomFactor:F

    .line 66
    iput v8, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->lastCenterPosition:I

    .line 87
    iput-object p4, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    .line 89
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    .line 90
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->addView(Landroid/view/View;)V

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 96
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 97
    iget-object v3, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    sget v2, Lcom/google/glass/common/R$layout;->fast_scroll_label:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    aput-object v2, v3, v0

    .line 98
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelText:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 100
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelTextWidths:[F

    const/high16 v3, -0x4080

    aput v3, v2, v0

    .line 101
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 106
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p3, scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<**>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<**>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->adjustFadeOutViewsAlphaForItemView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->updateLabelForItemView(Landroid/view/View;)V

    return-void
.end method

.method private adjustFadeOutViewsAlphaForItemView(Landroid/view/View;)V
    .locals 5
    .parameter "itemView"

    .prologue
    .line 230
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 231
    iget-object v4, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v4}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getZoomOutFactor()F

    move-result v3

    .line 232
    .local v3, zoomFactor:F
    invoke-virtual {p0, p1}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->isLabelReady(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_fade_out_on_scroll:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 235
    .local v1, fadeOutViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    if-eqz v1, :cond_1

    .line 236
    const/high16 v4, 0x3f80

    sub-float v0, v4, v3

    .line 237
    .local v0, alpha:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 238
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v0           #alpha:F
    .end local v1           #fadeOutViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .end local v2           #i:I
    :cond_0
    new-instance v4, Lcom/google/glass/horizontalscroll/FastScrollOverlay$1;

    invoke-direct {v4, p0, p1}, Lcom/google/glass/horizontalscroll/FastScrollOverlay$1;-><init>(Lcom/google/glass/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V

    invoke-virtual {p0, p1, v4}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->setRunnableForWhenLabelReady(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 249
    :cond_1
    return-void
.end method

.method private getLabelTextWidth(I)F
    .locals 3
    .parameter "i"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelTextWidths:[F

    aget v0, v0, p1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelTextWidths:[F

    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelText:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    aput v1, v0, p1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelTextWidths:[F

    aget v0, v0, p1

    return v0
.end method

.method private setLabelText(ILjava/lang/String;Z)V
    .locals 4
    .parameter "i"
    .parameter "text"
    .parameter "updateViews"

    .prologue
    .line 125
    if-nez p2, :cond_0

    .line 126
    const-string p2, ""

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelText:[Ljava/lang/String;

    aput-object p2, v1, p1

    .line 129
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelTextWidths:[F

    const/high16 v2, -0x4080

    aput v2, v1, p1

    .line 130
    if-eqz p3, :cond_2

    .line 132
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->updateLabelVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_1
    if-lez p1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 138
    .local v0, wasVisible:Z
    :goto_0
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->updateLabelVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 140
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelText:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v0           #wasVisible:Z
    :cond_2
    return-void

    .line 137
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLabelForItemView(Landroid/view/View;)V
    .locals 6
    .parameter "itemView"

    .prologue
    .line 252
    iget-object v4, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v4}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getScrollPosition()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 253
    .local v0, centerPosition:I
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 256
    .local v1, itemPosition:I
    sub-int v4, v1, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 263
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->getLabelForItem(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, text:Ljava/lang/String;
    add-int/lit8 v2, v0, -0x2

    .line 261
    .local v2, leftPosition:I
    sub-int v4, v1, v2

    const/4 v5, 0x1

    invoke-direct {p0, v4, v3, v5}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->setLabelText(ILjava/lang/String;Z)V

    .line 262
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->updateLabelPositions()V

    goto :goto_0
.end method

.method private updateLabelPositions()V
    .locals 18

    .prologue
    .line 165
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v13}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getScrollPosition()F

    move-result v11

    .line 167
    .local v11, scrollPosition:F
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 168
    .local v1, centerPosition:I
    add-int/lit8 v7, v1, -0x2

    .line 169
    .local v7, leftPosition:I
    int-to-float v13, v1

    sub-float v13, v11, v13

    const v14, 0x435d3334

    mul-float v9, v13, v14

    .line 172
    .local v9, periodicOffset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v13, 0x3

    if-ge v2, v13, :cond_0

    .line 173
    const v13, 0x435d3334

    add-int/lit8 v14, v2, -0x3

    int-to-float v14, v14

    mul-float v4, v13, v14

    .line 174
    .local v4, itemOffset:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelX:[F

    const/high16 v14, 0x4120

    add-float/2addr v14, v4

    sub-float/2addr v14, v9

    aput v14, v13, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v4           #itemOffset:F
    :cond_0
    const/4 v2, 0x3

    :goto_1
    const/4 v13, 0x5

    if-ge v2, v13, :cond_4

    .line 179
    const v13, 0x435d3334

    add-int/lit8 v14, v2, -0x3

    int-to-float v14, v14

    mul-float v4, v13, v14

    .line 180
    .restart local v4       #itemOffset:F
    const/high16 v13, 0x4120

    add-float/2addr v13, v4

    sub-float v10, v13, v9

    .line 181
    .local v10, rightOffset:F
    const/high16 v13, 0x4270

    add-float/2addr v13, v4

    const v14, 0x435d3334

    sub-float/2addr v13, v14

    sub-float/2addr v13, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->getLabelTextWidth(I)F

    move-result v14

    add-float v6, v13, v14

    .line 184
    .local v6, leftOffset:F
    move v8, v6

    .line 185
    .local v8, offset:F
    const/high16 v13, -0x3de0

    cmpg-float v13, v8, v13

    if-gez v13, :cond_1

    .line 186
    const/high16 v13, -0x3de0

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 189
    :cond_1
    move v5, v2

    .line 192
    .local v5, j:I
    :goto_2
    const/4 v13, 0x2

    if-lt v5, v13, :cond_2

    add-int v13, v7, v5

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v14, v5, -0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_2

    .line 193
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 195
    :cond_2
    if-ge v5, v2, :cond_3

    .line 196
    const/high16 v13, -0x3de0

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    sub-int v14, v2, v5

    int-to-float v14, v14

    const v15, 0x435d3334

    mul-float/2addr v14, v15

    sub-float v14, v8, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 199
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelX:[F

    aput v8, v13, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    .end local v4           #itemOffset:F
    .end local v5           #j:I
    .end local v6           #leftOffset:F
    .end local v8           #offset:F
    .end local v10           #rightOffset:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v13}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getZoomScale()F

    move-result v12

    .line 204
    .local v12, zoomScale:F
    const v13, 0x3ea8f5c3

    cmpl-float v13, v12, v13

    if-lez v13, :cond_5

    .line 205
    const/4 v2, 0x0

    :goto_3
    const/4 v13, 0x5

    if-ge v2, v13, :cond_5

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelX:[F

    const/high16 v14, -0x3c60

    const v15, 0x3ea8f5c3

    div-float v15, v12, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelX:[F

    move-object/from16 v16, v0

    aget v16, v16, v2

    const/high16 v17, 0x43a0

    add-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v13, v2

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 214
    :cond_5
    const/4 v2, 0x0

    :goto_4
    const/4 v13, 0x5

    if-ge v2, v13, :cond_9

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelX:[F

    aget v13, v13, v2

    const/high16 v14, -0x3be0

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelX:[F

    aget v13, v13, v2

    const v14, 0x43533334

    cmpl-float v13, v13, v14

    if-lez v13, :cond_7

    :cond_6
    const/4 v3, 0x1

    .line 216
    .local v3, isOffScreen:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v14, v13, v2

    if-eqz v3, :cond_8

    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v14, v13}, Lcom/google/glass/widget/TypophileTextView;->setAlpha(F)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 215
    .end local v3           #isOffScreen:Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 216
    .restart local v3       #isOffScreen:Z
    :cond_8
    const/high16 v13, 0x3f80

    goto :goto_6

    .line 220
    .end local v3           #isOffScreen:Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->invalidate()V

    .line 221
    const/4 v2, 0x0

    :goto_7
    const/4 v13, 0x5

    if-ge v2, v13, :cond_b

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lcom/google/glass/widget/TypophileTextView;->getAlpha()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelX:[F

    aget v14, v14, v2

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Lcom/google/glass/widget/TypophileTextView;->setTranslationX(F)V

    .line 221
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 226
    :cond_b
    return-void
.end method

.method private updateLabelVisibility(I)V
    .locals 6
    .parameter "i"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 110
    iget-object v4, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelText:[Ljava/lang/String;

    aget-object v1, v4, p1

    .line 111
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-ge p1, v3, :cond_2

    iget-object v4, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelText:[Ljava/lang/String;

    add-int/lit8 v5, p1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 113
    .local v0, shouldBeHidden:Z
    :goto_0
    iget-object v4, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v4, v4, p1

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v2}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 114
    return-void

    .end local v0           #shouldBeHidden:Z
    :cond_2
    move v0, v2

    .line 111
    goto :goto_0
.end method

.method private updateLabels()V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 266
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 267
    iget-object v9, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v9}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/Adapter;->getCount()I

    move-result v7

    .line 268
    .local v7, numItems:I
    iget-object v9, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v9}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getHomePosition()I

    move-result v1

    .line 269
    .local v1, homePosition:I
    iget-object v9, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v9}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getScrollPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 270
    .local v0, centerPosition:I
    add-int/lit8 v6, v0, -0x2

    .line 272
    .local v6, leftPosition:I
    new-array v3, v13, [Z

    .line 274
    .local v3, isLabelUsed:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v9, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v9}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 275
    iget-object v9, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v9, v2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getItemViewForChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 276
    .local v5, itemView:Landroid/view/View;
    sget v9, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v5, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 279
    .local v4, itemPosition:I
    sub-int v9, v4, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_0

    .line 274
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_0
    const-string v8, ""

    .line 287
    .local v8, text:Ljava/lang/String;
    if-ne v4, v1, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->getHomePositionLabel()Ljava/lang/String;

    move-result-object v8

    .line 313
    :cond_1
    :goto_2
    sub-int v9, v4, v6

    invoke-direct {p0, v9, v8, v12}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->setLabelText(ILjava/lang/String;Z)V

    .line 314
    sub-int v9, v4, v6

    aput-boolean v11, v3, v9

    .line 316
    invoke-direct {p0, v5}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->adjustFadeOutViewsAlphaForItemView(Landroid/view/View;)V

    goto :goto_1

    .line 289
    :cond_2
    if-lt v4, v11, :cond_1

    if-ge v4, v7, :cond_1

    .line 291
    invoke-virtual {p0, v5}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->isLabelReady(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 293
    invoke-virtual {p0, v5, v4}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->getLabelForItem(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 295
    :cond_3
    if-le v4, v11, :cond_1

    .line 299
    if-le v4, v6, :cond_4

    .line 300
    iget-object v9, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelText:[Ljava/lang/String;

    sub-int v10, v4, v6

    add-int/lit8 v10, v10, -0x1

    aget-object v8, v9, v10

    .line 302
    :cond_4
    new-instance v9, Lcom/google/glass/horizontalscroll/FastScrollOverlay$2;

    invoke-direct {v9, p0, v5}, Lcom/google/glass/horizontalscroll/FastScrollOverlay$2;-><init>(Lcom/google/glass/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V

    invoke-virtual {p0, v5, v9}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->setRunnableForWhenLabelReady(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 320
    .end local v4           #itemPosition:I
    .end local v5           #itemView:Landroid/view/View;
    .end local v8           #text:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v13, :cond_7

    .line 321
    aget-boolean v9, v3, v2

    if-nez v9, :cond_6

    .line 322
    const-string v9, ""

    invoke-direct {p0, v2, v9, v12}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->setLabelText(ILjava/lang/String;Z)V

    .line 320
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 326
    :cond_7
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->updateTextViews()V

    .line 327
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->updateLabelPositions()V

    .line 328
    return-void
.end method

.method private updateTextViews()V
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 149
    invoke-direct {p0, v0}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->updateLabelVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labels:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->labelText:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method


# virtual methods
.method protected getHomePositionLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getHomePosition()I

    move-result v0

    .line 389
    .local v0, homePos:I
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v1, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getItemViewForChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->getLabelForItem(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getLabelForItem(Landroid/view/View;I)Ljava/lang/String;
.end method

.method protected getScrollView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    return-object v0
.end method

.method protected isLabelReady(Landroid/view/View;)Z
    .locals 1
    .parameter "itemView"

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleChanged(F)V
    .locals 5
    .parameter "scale"

    .prologue
    .line 349
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getZoomOutFactor()F

    move-result v1

    .line 350
    .local v1, zoomFactor:F
    iget v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->lastZoomFactor:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 366
    :goto_0
    return-void

    .line 353
    :cond_0
    iget v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->lastZoomFactor:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 355
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->updateLabels()V

    .line 361
    :cond_1
    iput v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->lastZoomFactor:F

    .line 363
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 364
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 365
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->updateLabelPositions()V

    goto :goto_0

    .line 357
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v2, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getItemViewForChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->adjustFadeOutViewsAlphaForItemView(Landroid/view/View;)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onScrollPositionChanged(F)V
    .locals 2
    .parameter "scrollPosition"

    .prologue
    .line 333
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 338
    .local v0, centerPosition:I
    iget v1, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->lastCenterPosition:I

    if-eq v0, v1, :cond_0

    .line 339
    iput v0, p0, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->lastCenterPosition:I

    .line 340
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->updateLabels()V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/horizontalscroll/FastScrollOverlay;->updateLabelPositions()V

    goto :goto_0
.end method

.method protected setRunnableForWhenLabelReady(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "itemView"
    .parameter "runnable"

    .prologue
    .line 411
    return-void
.end method
