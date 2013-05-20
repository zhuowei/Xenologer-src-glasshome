.class public Lcom/google/glass/widget/SliderView;
.super Landroid/widget/FrameLayout;
.source "SliderView.java"


# static fields
.field private static final HIDE_SLIDER_TIMEOUT_MILLIS:J = 0x3e8L

.field private static final MIN_SLIDER_WIDTH_PX:I = 0x28

.field private static final SHOW_HIDE_ANIMATION_DURATION_MILLIS:J = 0x12cL

.field private static final SLIDER_BAR_RESIZE_ANIMATION_DURATION_MILLIS:J = 0x12cL


# instance fields
.field private animatedCount:F

.field private count:I

.field private countAnimator:Landroid/animation/ObjectAnimator;

.field private hideSliderRunnable:Ljava/lang/Runnable;

.field private final indeterminateSlider:Landroid/widget/ImageView;

.field private index:F

.field private final positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

.field private slideableScale:F

.field private final slider:Landroid/view/View;

.field private sliderShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/SliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/SliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v2, p0, Lcom/google/glass/widget/SliderView;->count:I

    .line 44
    iput v0, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    .line 45
    iput v0, p0, Lcom/google/glass/widget/SliderView;->index:F

    .line 54
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    .line 57
    new-instance v0, Lcom/google/glass/widget/SliderView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/SliderView$1;-><init>(Lcom/google/glass/widget/SliderView;)V

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lcom/google/glass/widget/SliderView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/SliderView$2;-><init>(Lcom/google/glass/widget/SliderView;)V

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->slider:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    sget v0, Lcom/google/glass/common/R$id;->slider_control:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    .line 110
    sget v0, Lcom/google/glass/common/R$id;->indeterminate_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    .line 113
    invoke-direct {p0, v2}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 114
    invoke-direct {p0, v2}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/SliderView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    return-void
.end method

.method private animateCountTo(F)V
    .locals 4
    .parameter "count"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 200
    :cond_0
    const-string v0, "animatedCount"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    .line 201
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 202
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 203
    return-void
.end method

.method private getBaseSliderWidth()I
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 228
    .local v1, width:I
    int-to-float v2, v1

    iget v3, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 229
    .local v0, baseSliderWidth:I
    const/16 v2, 0x28

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private hideIndeterminateSlider(Z)V
    .locals 4
    .parameter "animate"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$dimen;->slider_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 167
    .local v0, height:I
    if-eqz p1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private hideSlider(Z)V
    .locals 4
    .parameter "animate"

    .prologue
    .line 135
    iget-boolean v1, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$dimen;->slider_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 141
    .local v0, height:I
    if-eqz p1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 146
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method private hideSliderAfterTimeout()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/widget/SliderView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    return-void
.end method

.method private showIndeterminateSlider(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 156
    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private showSlider(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 121
    iget-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 130
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method private updateSliderWidth()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 354
    iget v3, p0, Lcom/google/glass/widget/SliderView;->count:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 355
    invoke-direct {p0, v5}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 368
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v3, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 361
    .local v1, sliderParams:Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    div-float v0, v3, v4

    .line 362
    .local v0, numItemsOnScreen:F
    invoke-direct {p0}, Lcom/google/glass/widget/SliderView;->getBaseSliderWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 363
    .local v2, sliderWidth:I
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 364
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 365
    iget-object v3, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    invoke-direct {p0, v5}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 367
    iget v3, p0, Lcom/google/glass/widget/SliderView;->index:F

    invoke-virtual {p0, v3}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(F)V

    goto :goto_0
.end method


# virtual methods
.method public dismissManualProgress()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 323
    return-void
.end method

.method getAnimatedCount()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    return v0
.end method

.method setAnimatedCount(F)V
    .locals 0
    .parameter "count"

    .prologue
    .line 188
    iput p1, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    .line 189
    invoke-direct {p0}, Lcom/google/glass/widget/SliderView;->updateSliderWidth()V

    .line 190
    return-void
.end method

.method public setCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    const/4 v0, 0x1

    .line 212
    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 213
    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 215
    iput p1, p0, Lcom/google/glass/widget/SliderView;->count:I

    .line 216
    iget v0, p0, Lcom/google/glass/widget/SliderView;->index:F

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/SliderView;->index:F

    .line 217
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->animateCountTo(F)V

    .line 218
    return-void
.end method

.method public setManualProgress(F)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 305
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 306
    invoke-direct {p0, v3}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 308
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 309
    .local v1, width:I
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 310
    .local v0, sliderParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 311
    neg-int v2, v1

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 312
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    int-to-float v3, v1

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 314
    return-void
.end method

.method public setProportionalIndex(F)V
    .locals 1
    .parameter "nextIndex"

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(FI)V

    .line 223
    return-void
.end method

.method public setProportionalIndex(FI)V
    .locals 9
    .parameter "nextIndex"
    .parameter "animationDuration"

    .prologue
    const/4 v8, 0x1

    .line 242
    iget v5, p0, Lcom/google/glass/widget/SliderView;->count:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 243
    invoke-direct {p0, v8}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 263
    :goto_0
    return-void

    .line 247
    :cond_0
    iput p1, p0, Lcom/google/glass/widget/SliderView;->index:F

    .line 249
    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    div-float v3, v5, v6

    .line 250
    .local v3, numItemsOnScreen:F
    iget v5, p0, Lcom/google/glass/widget/SliderView;->index:F

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float v6, v3, v6

    sub-float v1, v5, v6

    .line 251
    .local v1, indexOnLeftEdge:F
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 252
    .local v4, width:I
    iget v5, p0, Lcom/google/glass/widget/SliderView;->count:I

    div-int v0, v4, v5

    .line 253
    .local v0, baseSliderWidth:I
    int-to-float v5, v0

    mul-float v2, v1, v5

    .line 254
    .local v2, newX:F
    if-eqz p2, :cond_1

    .line 255
    iget-object v5, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, p2

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 261
    :goto_1
    invoke-direct {p0, v8}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 262
    invoke-direct {p0}, Lcom/google/glass/widget/SliderView;->hideSliderAfterTimeout()V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v5, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method

.method public setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 346
    iput p1, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    .line 347
    invoke-direct {p0}, Lcom/google/glass/widget/SliderView;->updateSliderWidth()V

    .line 348
    return-void
.end method

.method public setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, scrollView:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView<**>;"
    invoke-static {p1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    invoke-virtual {p1, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->setPositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 377
    return-void
.end method

.method public startIndeterminate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 328
    .local v1, width:I
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 329
    .local v0, sliderParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 330
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 331
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    invoke-direct {p0, v4}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 334
    invoke-direct {p0, v4}, Lcom/google/glass/widget/SliderView;->showIndeterminateSlider(Z)V

    .line 335
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 336
    return-void
.end method

.method public startProgress(J)V
    .locals 1
    .parameter "animationDuration"

    .prologue
    .line 273
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/TimeInterpolator;)V

    .line 274
    return-void
.end method

.method public startProgress(JLandroid/animation/TimeInterpolator;)V
    .locals 4
    .parameter "animationDuration"
    .parameter "interpolator"

    .prologue
    const/4 v3, 0x0

    .line 283
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 284
    invoke-direct {p0, v3}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 287
    .local v1, width:I
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 288
    .local v0, sliderParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 289
    neg-int v2, v1

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 290
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 295
    return-void
.end method

.method public stopIndeterminate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 340
    invoke-direct {p0, v1}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 341
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 342
    invoke-direct {p0, v1}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 343
    return-void
.end method
