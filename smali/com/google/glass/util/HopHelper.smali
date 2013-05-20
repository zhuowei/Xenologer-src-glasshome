.class public Lcom/google/glass/util/HopHelper;
.super Ljava/lang/Object;
.source "HopHelper.java"


# static fields
.field private static final HOP_ANIMATION_DURATION_MS:J = 0x96L

.field private static final PRE_HOP_ANIMATION_Y_TRANSLATION_PX:J = -0x3cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V
    .locals 5
    .parameter "view"
    .parameter "direction"

    .prologue
    .line 30
    sget-object v2, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    if-ne p1, v2, :cond_1

    .line 31
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only UP and DOWN are allowed swipe directions."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_1
    const-wide/16 v0, -0x3c

    .line 36
    .local v0, translationAmount:J
    sget-object v2, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    if-ne p1, v2, :cond_2

    .line 37
    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    long-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/google/glass/util/HopHelper$1;

    invoke-direct {v3, p0}, Lcom/google/glass/util/HopHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 56
    return-void
.end method
