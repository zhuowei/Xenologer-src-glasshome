.class public Lcom/google/glass/home/timeline/TimelineItemContainerView;
.super Landroid/widget/FrameLayout;
.source "TimelineItemContainerView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/Card;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/TimelineItemContainerView$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bundleEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

.field private card:Lcom/google/glass/horizontalscroll/Card;

.field private context:Landroid/content/Context;

.field protected gradientView:Landroid/widget/ImageView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected guardPhraseView:Lcom/google/glass/widget/TipsView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private readMoreEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

.field private shouldShowGuardPhrase:Z

.field private state:Lcom/google/glass/horizontalscroll/Card$State;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/home/timeline/TimelineItemContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->context:Landroid/content/Context;

    .line 82
    sget-object v1, Lcom/google/glass/horizontalscroll/Card$State;->UNLOADED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 84
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    .line 85
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$drawable;->overlay_guard_phrase:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getGradientLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v1, Lcom/google/glass/widget/TipsView;

    invoke-direct {v1, p1}, Lcom/google/glass/widget/TipsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    .line 91
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    sget v2, Lcom/google/glass/home/R$string;->guard_phrase_hint:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 92
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    sget v2, Lcom/google/glass/home/R$style;->TipsViewText:I

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/widget/TipsView;->setTextAppearance(Landroid/content/Context;I)V

    .line 93
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-static {p1, v4}, Lcom/google/glass/widget/RobotoTypefaces;->getTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TipsView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v1, v5}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getGuardPhraseLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 100
    .local v0, ownedViews:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    sget v1, Lcom/google/glass/home/R$id;->tag_owned_views:I

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method private animateInGuardPhrase()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TipsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->TAG:Ljava/lang/String;

    const-string v1, "Already animated in guard phrase, doing nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setTranslationY(F)V

    .line 334
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 337
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->bringChildToFront(Landroid/view/View;)V

    .line 340
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->bringChildToFront(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 343
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private getGradientLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 297
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 299
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 300
    return-object v0
.end method

.method private getGuardPhraseLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->getGradientLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 291
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$dimen;->guard_phrase_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 293
    return-object v0
.end method


# virtual methods
.method public getBundleEntryPoint()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->bundleEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method public getReadMoreEntryPoint()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->readMoreEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onConfirm()Z

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onDoubleTap()Z

    move-result v0

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocus()V
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->FOCUSED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 184
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onFocus()V

    .line 187
    :cond_0
    return-void
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->LOADED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 168
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onLoad()V

    .line 171
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/horizontalscroll/Card;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v0

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/horizontalscroll/Card;->onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettled()V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->SETTLED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 200
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onSettled()V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->updateGuardPhrase()V

    .line 206
    return-void
.end method

.method public onUnfocus()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->LOADED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 192
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnfocus()V

    .line 195
    :cond_0
    return-void
.end method

.method public onUnload()V
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->UNLOADED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 176
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnload()V

    .line 179
    :cond_0
    return-void
.end method

.method public onUnsettled()V
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->FOCUSED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 211
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnsettled()V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->updateGuardPhrase()V

    .line 217
    return-void
.end method

.method public removeContainedView()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setContainedView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public setBundleEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter "bundleEntryPoint"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->bundleEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

    .line 262
    return-void
.end method

.method public setContainedView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->view:Landroid/view/View;

    .line 113
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/glass/horizontalscroll/Card;

    if-eqz v1, :cond_3

    :cond_0
    move-object v0, p1

    .line 114
    check-cast v0, Lcom/google/glass/horizontalscroll/Card;

    .line 116
    .local v0, card:Lcom/google/glass/horizontalscroll/Card;
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eq v1, v0, :cond_3

    .line 118
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v1, :cond_1

    .line 119
    sget-object v1, Lcom/google/glass/home/timeline/TimelineItemContainerView$1;->$SwitchMap$com$google$glass$horizontalscroll$Card$State:[I

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    invoke-virtual {v2}, Lcom/google/glass/horizontalscroll/Card$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 138
    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_2

    .line 139
    sget-object v1, Lcom/google/glass/home/timeline/TimelineItemContainerView$1;->$SwitchMap$com$google$glass$horizontalscroll$Card$State:[I

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    invoke-virtual {v2}, Lcom/google/glass/horizontalscroll/Card$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 157
    :cond_2
    :goto_1
    :pswitch_1
    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    .line 162
    .end local v0           #card:Lcom/google/glass/horizontalscroll/Card;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->updateGuardPhrase()V

    .line 163
    return-void

    .line 123
    .restart local v0       #card:Lcom/google/glass/horizontalscroll/Card;
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v1}, Lcom/google/glass/horizontalscroll/Card;->onUnload()V

    goto :goto_0

    .line 126
    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v1}, Lcom/google/glass/horizontalscroll/Card;->onUnfocus()V

    .line 127
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v1}, Lcom/google/glass/horizontalscroll/Card;->onUnload()V

    goto :goto_0

    .line 130
    :pswitch_4
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v1}, Lcom/google/glass/horizontalscroll/Card;->onUnsettled()V

    .line 131
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v1}, Lcom/google/glass/horizontalscroll/Card;->onUnfocus()V

    .line 132
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v1}, Lcom/google/glass/horizontalscroll/Card;->onUnload()V

    goto :goto_0

    .line 143
    :pswitch_5
    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onLoad()V

    goto :goto_1

    .line 146
    :pswitch_6
    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onLoad()V

    .line 147
    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onFocus()V

    goto :goto_1

    .line 150
    :pswitch_7
    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onLoad()V

    .line 151
    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onFocus()V

    .line 152
    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onSettled()V

    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 139
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setReadMoreEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter "readMoreEntryPoint"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->readMoreEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

    .line 272
    return-void
.end method

.method public setShouldShowGuardPhrase(Z)V
    .locals 1
    .parameter "shouldShowGuardPhrase"

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->shouldShowGuardPhrase:Z

    if-eq v0, p1, :cond_0

    .line 282
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->shouldShowGuardPhrase:Z

    .line 285
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->updateGuardPhrase()V

    .line 287
    :cond_0
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->shouldSuppressSingleTapSound()Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateGuardPhrase()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 306
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->shouldShowGuardPhrase:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    sget-object v1, Lcom/google/glass/horizontalscroll/Card$State;->SETTLED:Lcom/google/glass/horizontalscroll/Card$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TipsView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->animateInGuardPhrase()V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->shouldShowGuardPhrase:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TipsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
