.class public Lcom/google/glass/input/ItemScroller;
.super Lcom/google/glass/input/SimpleInputListener;
.source "ItemScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/ItemScroller$5;,
        Lcom/google/glass/input/ItemScroller$Scrollable;,
        Lcom/google/glass/input/ItemScroller$SwipeAxis;
    }
.end annotation


# static fields
.field private static final DISABLE_ONE_FINGER_INERTIAL:Z = false

.field private static final FLING_DECELERATION_FACTOR:F = 10.0f

.field public static final LOOKUP_HINT_SCALE:F = 0.8f

.field public static final MAXIMUM_FLING_DISTANCE:F = 20.0f

.field private static final MILLIS_BEFORE_ZOOM:J = 0xfaL

.field private static final MINIMUM_ANIMATION_TIME_MILLIS:J = 0x64L

.field private static final MINIMUM_DRAG_DISTANCE_TO_START:F = 750.0f

.field private static final MINIMUM_FLING_DISTANCE_TO_START:F = 2.0f

.field public static final MINIMUM_SCALE:F = 0.33f

.field private static final MSG_FINISH_SCALE:I = 0x1

.field private static final MSG_STOP_FLING:I = 0x0

.field private static final OVERSCROLL_AMOUNT:F = 0.49f

.field private static final SCALE_ANIMATION_DURATION_MILLIS:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = null

.field private static final TOUCH_PIXELS_PER_ITEM:I = 0x5dc

.field private static final VERBOSE_DEBUG:Z


# instance fields
.field private animationLeftover:F

.field private animationSelfChangeHandler:Landroid/os/Handler;

.field private final context:Landroid/content/Context;

.field private dragVelocity:F

.field private flingAnimator:Landroid/animation/ValueAnimator;

.field private flingShouldSnapOnEnd:Z

.field private lastAccumulatorX:F

.field private lastAnimatedValue:F

.field private lastFingerCount:F

.field private scaleAnimator:Landroid/animation/ValueAnimator;

.field private scaleDestination:F

.field private scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

.field private swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

.field private userTouching:Z

.field private zoomedOutOnUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/input/ItemScroller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/ItemScroller;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/ItemScroller$Scrollable;)V
    .locals 1
    .parameter "context"
    .parameter "scrollable"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/glass/input/SimpleInputListener;-><init>()V

    .line 99
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    .line 155
    iput-object p1, p0, Lcom/google/glass/input/ItemScroller;->context:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    .line 158
    new-instance v0, Lcom/google/glass/input/ItemScroller$1;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/input/ItemScroller$1;-><init>(Lcom/google/glass/input/ItemScroller;Lcom/google/glass/input/ItemScroller$Scrollable;)V

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->animationSelfChangeHandler:Landroid/os/Handler;

    .line 173
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->setupAnimations()V

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/input/ItemScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/input/ItemScroller;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/input/ItemScroller;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/input/ItemScroller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->cutFlingShort()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/input/ItemScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/glass/input/ItemScroller;->flingShouldSnapOnEnd:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/glass/input/ItemScroller;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->animationSelfChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/input/ItemScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->lastAnimatedValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/input/ItemScroller;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/google/glass/input/ItemScroller;->lastAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/input/ItemScroller;)Lcom/google/glass/input/ItemScroller$Scrollable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/input/ItemScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/input/ItemScroller;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/input/ItemScroller;FZ)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/ItemScroller;->rangeItem(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/input/ItemScroller;Z)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->leftEdge(Z)F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/input/ItemScroller;Z)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->rightEdge(Z)F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/input/ItemScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->zoomIn()Z

    move-result v0

    return v0
.end method

.method private animateByItem(FJ)Z
    .locals 1
    .parameter "deltaItem"
    .parameter "duration"

    .prologue
    .line 333
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/input/ItemScroller;->animateByItem(FJZ)Z

    move-result v0

    return v0
.end method

.method private animateByItem(FJZ)Z
    .locals 5
    .parameter "deltaItem"
    .parameter "duration"
    .parameter "snapOnEnd"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 350
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 351
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V

    .line 354
    cmpl-float v2, p1, v4

    if-nez v2, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->zoomIn()Z

    .line 363
    :goto_0
    return v0

    .line 359
    :cond_0
    iput-boolean p4, p0, Lcom/google/glass/input/ItemScroller;->flingShouldSnapOnEnd:Z

    .line 360
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 361
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v4, v3, v0

    aput p1, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 362
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    move v0, v1

    .line 363
    goto :goto_0
.end method

.method private cutFlingShort()V
    .locals 2

    .prologue
    .line 406
    const-string v0, "cutFlingShort"

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->animationSelfChangeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 408
    return-void
.end method

.method private getDecelerationFactor(F)F
    .locals 4
    .parameter "velocity"

    .prologue
    const/high16 v1, 0x4120

    .line 368
    invoke-direct {p0, p1, v1}, Lcom/google/glass/input/ItemScroller;->travelDistance(FF)F

    move-result v0

    .line 369
    .local v0, baseTravelDistance:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41a0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 376
    :goto_0
    return v1

    :cond_0
    mul-float v1, p1, p1

    const/high16 v2, 0x4220

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private incrementItem(F)V
    .locals 3
    .parameter "deltaItem"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    add-float/2addr v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/glass/input/ItemScroller;->rangeItem(FZ)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    .line 677
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V

    .line 678
    return-void
.end method

.method private isOverscrolled()Z
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->overscrolledLeft()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->overscrolledRight()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leftEdge(Z)F
    .locals 1
    .parameter "allowOverscroll"

    .prologue
    .line 296
    if-eqz p1, :cond_0

    const v0, -0x41051eb8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logVerbose(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 693
    return-void
.end method

.method private overscrolledLeft()Z
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overscrolledRight()Z
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rangeDeltaItem(FZ)F
    .locals 2
    .parameter "deltaItem"
    .parameter "allowOverscroll"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    add-float/2addr v1, p1

    invoke-direct {p0, v1, p2}, Lcom/google/glass/input/ItemScroller;->rangeItem(FZ)F

    move-result v0

    .line 316
    .local v0, itemIfDeltaApplied:F
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    sub-float v1, v0, v1

    return v1
.end method

.method private rangeItem(FZ)F
    .locals 2
    .parameter "item"
    .parameter "allowOverscroll"

    .prologue
    .line 310
    invoke-direct {p0, p2}, Lcom/google/glass/input/ItemScroller;->leftEdge(Z)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/glass/input/ItemScroller;->rightEdge(Z)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private rightEdge(Z)F
    .locals 2
    .parameter "allowOverscroll"

    .prologue
    .line 301
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v0, v1

    .line 302
    .local v0, rightEdge:F
    if-eqz p1, :cond_0

    .line 303
    const v1, 0x3efae148

    add-float/2addr v0, v1

    .line 305
    :cond_0
    return v0
.end method

.method private setAnimationLeftover(F)V
    .locals 0
    .parameter "leftover"

    .prologue
    .line 321
    iput p1, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    .line 322
    return-void
.end method

.method private setupAnimations()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    .line 180
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/input/ItemScroller$2;

    invoke-direct {v1, p0}, Lcom/google/glass/input/ItemScroller$2;-><init>(Lcom/google/glass/input/ItemScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 229
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 230
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 232
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/input/ItemScroller$3;

    invoke-direct {v1, p0}, Lcom/google/glass/input/ItemScroller$3;-><init>(Lcom/google/glass/input/ItemScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/input/ItemScroller$4;

    invoke-direct {v1, p0}, Lcom/google/glass/input/ItemScroller$4;-><init>(Lcom/google/glass/input/ItemScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 250
    return-void
.end method

.method private shouldStartInertialScroll()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 501
    iget v6, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    const v7, 0x3ea8f5c3

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    iget v6, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    move v0, v4

    .line 502
    .local v0, alreadyInertial:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 515
    :cond_0
    :goto_1
    return v4

    .end local v0           #alreadyInertial:Z
    :cond_1
    move v0, v5

    .line 501
    goto :goto_0

    .line 507
    .restart local v0       #alreadyInertial:Z
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->isOverscrolled()Z

    move-result v6

    if-nez v6, :cond_6

    .line 508
    iget v6, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x443b8000

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    move v1, v4

    .line 509
    .local v1, draggedFarEnough:Z
    :goto_2
    iget v6, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    const/high16 v7, 0x4120

    invoke-direct {p0, v6, v7}, Lcom/google/glass/input/ItemScroller;->snappedStoppingPoint(FF)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v7}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 511
    .local v2, travelDistance:F
    const/high16 v6, 0x4000

    cmpl-float v6, v2, v6

    if-lez v6, :cond_5

    move v3, v4

    .line 512
    .local v3, willTravelFarEnough:Z
    :goto_3
    if-eqz v3, :cond_3

    if-nez v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_1

    .end local v1           #draggedFarEnough:Z
    .end local v2           #travelDistance:F
    .end local v3           #willTravelFarEnough:Z
    :cond_4
    move v1, v5

    .line 508
    goto :goto_2

    .restart local v1       #draggedFarEnough:Z
    .restart local v2       #travelDistance:F
    :cond_5
    move v3, v5

    .line 511
    goto :goto_3

    .end local v1           #draggedFarEnough:Z
    .end local v2           #travelDistance:F
    :cond_6
    move v4, v5

    .line 515
    goto :goto_1
.end method

.method private snapToNearestInDirection(F)Z
    .locals 7
    .parameter "direction"

    .prologue
    const-wide/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    .line 475
    cmpl-float v2, p1, v3

    if-nez v2, :cond_1

    .line 476
    iget v2, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    add-float/2addr v2, v3

    invoke-direct {p0, v2, v1}, Lcom/google/glass/input/ItemScroller;->rangeDeltaItem(FZ)F

    move-result v1

    invoke-direct {p0, v1, v5, v6}, Lcom/google/glass/input/ItemScroller;->animateByItem(FJ)Z

    move-result v1

    .line 495
    :cond_0
    :goto_0
    return v1

    .line 478
    :cond_1
    const/high16 v2, -0x4080

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    .line 479
    iget v2, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    sub-float/2addr v2, v3

    invoke-direct {p0, v2, v1}, Lcom/google/glass/input/ItemScroller;->rangeDeltaItem(FZ)F

    move-result v1

    invoke-direct {p0, v1, v5, v6}, Lcom/google/glass/input/ItemScroller;->animateByItem(FJ)Z

    move-result v1

    goto :goto_0

    .line 481
    :cond_2
    cmpl-float v2, p1, v4

    if-nez v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    .line 485
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v2

    iget v3, p0, Lcom/google/glass/input/ItemScroller;->animationLeftover:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v2

    .line 486
    .local v0, snapTo:F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Confirm while moving one item at a time. Snapping to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2, v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    goto :goto_0

    .line 492
    .end local v0           #snapTo:F
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/glass/input/ItemScroller;->snapToNearest(Z)Z

    move-result v1

    goto :goto_0
.end method

.method private snappedStoppingPoint(FF)I
    .locals 6
    .parameter "velocity"
    .parameter "deceleration"

    .prologue
    .line 389
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    neg-float v3, v3

    mul-float v0, v3, p2

    .line 393
    .local v0, baseDeceleration:F
    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/ItemScroller;->timeToStop(FF)F

    move-result v1

    .line 394
    .local v1, flingTime:F
    iget-object v3, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v3}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v3

    mul-float v4, p1, v1

    add-float/2addr v3, v4

    const/high16 v4, 0x3f00

    mul-float/2addr v4, v0

    mul-float v5, v1, v1

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 396
    .local v2, stoppingPoint:F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3
.end method

.method private startFling(F)V
    .locals 5
    .parameter "velocity"

    .prologue
    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startFling with velocity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->stopFling()V

    .line 420
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->getDecelerationFactor(F)F

    move-result v0

    .line 421
    .local v0, deceleration:F
    invoke-direct {p0, p1, v0}, Lcom/google/glass/input/ItemScroller;->timeToStop(FF)F

    move-result v3

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-long v1, v3

    .line 423
    .local v1, flingTime:J
    invoke-direct {p0, p1, v0}, Lcom/google/glass/input/ItemScroller;->travelDistance(FF)F

    move-result v3

    invoke-direct {p0, v3, v1, v2}, Lcom/google/glass/input/ItemScroller;->animateByItem(FJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->zoomOut()V

    .line 426
    :cond_0
    return-void
.end method

.method private stopFling()V
    .locals 1

    .prologue
    .line 412
    const-string v0, "stopFling"

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->flingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 414
    return-void
.end method

.method private timeToStop(FF)F
    .locals 3
    .parameter "velocity"
    .parameter "deceleration"

    .prologue
    .line 382
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    mul-float v0, v2, p2

    .line 383
    .local v0, baseDeceleration:F
    neg-float v2, p1

    div-float v1, v2, v0

    .line 384
    .local v1, timeToStop:F
    return v1
.end method

.method private travelDistance(FF)F
    .locals 2
    .parameter "velocity"
    .parameter "deceleration"

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/ItemScroller;->snappedStoppingPoint(FF)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private zoomIn()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v5, 0x3f80

    .line 266
    iget v2, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    .line 276
    :goto_0
    return v0

    .line 271
    :cond_0
    const-string v2, "zoomIn"

    invoke-direct {p0, v2}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 273
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v4}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v4

    aput v4, v3, v0

    aput v5, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 274
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 275
    iput v5, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    move v0, v1

    .line 276
    goto :goto_0
.end method

.method private zoomOut()V
    .locals 5

    .prologue
    const v4, 0x3ea8f5c3

    .line 253
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string v0, "zoomOut"

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 260
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v3}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 261
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 262
    iput v4, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    goto :goto_0
.end method


# virtual methods
.method public getAnticipatedSettlePosition(F)I
    .locals 4
    .parameter "scrollVelocity"

    .prologue
    .line 523
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f80

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 530
    :goto_0
    return v1

    .line 526
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/input/ItemScroller;->getDecelerationFactor(F)F

    move-result v0

    .line 527
    .local v0, deceleration:F
    invoke-direct {p0, p1, v0}, Lcom/google/glass/input/ItemScroller;->snappedStoppingPoint(FF)I

    move-result v1

    .line 528
    .local v1, position:I
    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 529
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 530
    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 603
    const-string v0, "onConfirm"

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->snapToNearestInDirection(F)Z

    .line 605
    iget-boolean v0, p0, Lcom/google/glass/input/ItemScroller;->zoomedOutOnUp:Z

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 4
    .parameter "count"
    .parameter "wentDown"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 535
    if-eqz p2, :cond_2

    .line 536
    if-ne p1, v1, :cond_1

    .line 537
    const-string v0, "Down"

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 538
    iput-boolean v1, p0, Lcom/google/glass/input/ItemScroller;->userTouching:Z

    .line 539
    iput v3, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    .line 540
    iput v3, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    .line 541
    sget-object v0, Lcom/google/glass/input/ItemScroller$SwipeAxis;->NONE:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    iput-object v0, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    .line 542
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->stopFling()V

    .line 576
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/SimpleInputListener;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0

    .line 543
    :cond_1
    if-le p1, v1, :cond_0

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fingers down"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 548
    const-string v0, "3rd finger up"

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_3
    if-ne p1, v1, :cond_4

    .line 550
    const-string v0, "2nd finger up"

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_4
    if-nez p1, :cond_0

    .line 552
    const-string v0, "Up"

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drag distance, velocity: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v0

    const/high16 v3, 0x3f80

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/glass/input/ItemScroller;->zoomedOutOnUp:Z

    .line 555
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->shouldStartInertialScroll()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 556
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->startFling(F)V

    .line 572
    :goto_2
    iput-boolean v2, p0, Lcom/google/glass/input/ItemScroller;->userTouching:Z

    goto :goto_0

    :cond_5
    move v0, v2

    .line 554
    goto :goto_1

    .line 560
    :cond_6
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->zoomIn()Z

    .line 562
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    sget-object v3, Lcom/google/glass/input/ItemScroller$SwipeAxis;->HORIZONTAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    if-ne v0, v3, :cond_7

    .line 565
    iget v0, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->snapToNearestInDirection(F)Z

    goto :goto_2

    .line 569
    :cond_7
    invoke-virtual {p0, v1}, Lcom/google/glass/input/ItemScroller;->snapToNearest(Z)Z

    goto :goto_2
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 7
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 623
    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    sget-object v6, Lcom/google/glass/input/ItemScroller$SwipeAxis;->NONE:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    if-ne v5, v6, :cond_0

    .line 624
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 625
    const-string v5, "Initial swipe axis vertical, ignoring rest of swipe."

    invoke-direct {p0, v5}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 626
    sget-object v5, Lcom/google/glass/input/ItemScroller$SwipeAxis;->VERTICAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    iput-object v5, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    .line 633
    :cond_0
    :goto_0
    int-to-float v5, p1

    iget v6, p0, Lcom/google/glass/input/ItemScroller;->lastFingerCount:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    sget-object v6, Lcom/google/glass/input/ItemScroller$SwipeAxis;->HORIZONTAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    if-ne v5, v6, :cond_1

    .line 634
    iget v5, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    sub-float v3, p2, v5

    .line 635
    .local v3, deltaX:F
    const v5, 0x44bb8000

    iget-object v6, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v6

    mul-float v4, v5, v6

    .line 636
    .local v4, touchPixelsPerItem:F
    const/4 v2, 0x0

    .line 638
    .local v2, deltaItem:F
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->isOverscrolled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 641
    div-float v2, v3, v4

    .line 658
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/glass/input/ItemScroller;->incrementItem(F)V

    .line 661
    neg-float v5, p4

    div-float/2addr v5, v4

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/google/glass/input/ItemScroller;->dragVelocity:F

    .line 664
    .end local v2           #deltaItem:F
    .end local v3           #deltaX:F
    .end local v4           #touchPixelsPerItem:F
    :cond_1
    iput p2, p0, Lcom/google/glass/input/ItemScroller;->lastAccumulatorX:F

    .line 665
    int-to-float v5, p1

    iput v5, p0, Lcom/google/glass/input/ItemScroller;->lastFingerCount:F

    .line 666
    const/4 v5, 0x1

    return v5

    .line 627
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 628
    sget-object v5, Lcom/google/glass/input/ItemScroller$SwipeAxis;->HORIZONTAL:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    iput-object v5, p0, Lcom/google/glass/input/ItemScroller;->swipeAxis:Lcom/google/glass/input/ItemScroller$SwipeAxis;

    goto :goto_0

    .line 645
    .restart local v2       #deltaItem:F
    .restart local v3       #deltaX:F
    .restart local v4       #touchPixelsPerItem:F
    :cond_3
    const/4 v0, 0x0

    .line 646
    .local v0, amountOfOverscrollAlready:F
    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v5}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 647
    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v5}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 653
    :cond_4
    :goto_2
    const/high16 v5, 0x3f80

    const v6, 0x3efae148

    div-float v6, v0, v6

    sub-float/2addr v5, v6

    mul-float v1, v5, v3

    .line 654
    .local v1, dampenedDeltaX:F
    div-float v2, v1, v4

    goto :goto_1

    .line 648
    .end local v1           #dampenedDeltaX:F
    :cond_5
    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v5}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v5

    iget-object v6, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 649
    iget-object v5, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v5}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v5

    iget-object v6, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    sub-float v0, v5, v6

    goto :goto_2
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwipe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 584
    iget-boolean v0, p0, Lcom/google/glass/input/ItemScroller;->userTouching:Z

    if-eqz v0, :cond_0

    .line 585
    const/4 v0, 0x0

    .line 598
    :goto_0
    return v0

    .line 588
    :cond_0
    sget-object v0, Lcom/google/glass/input/ItemScroller$5;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p2}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 598
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 590
    :pswitch_0
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->snapToNearestInDirection(F)Z

    goto :goto_1

    .line 593
    :pswitch_1
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->snapToNearestInDirection(F)Z

    goto :goto_1

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hard setting to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->logVerbose(Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->stopFling()V

    .line 684
    iget-object v0, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    int-to-float v1, p1

    invoke-interface {v0, v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    .line 685
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V

    .line 686
    return-void
.end method

.method public snapToNearest(Z)Z
    .locals 4
    .parameter "animate"

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x3f80

    .line 440
    invoke-direct {p0}, Lcom/google/glass/input/ItemScroller;->stopFling()V

    .line 443
    if-eqz p1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1, v0}, Lcom/google/glass/input/ItemScroller;->rangeItem(FZ)F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    sub-float/2addr v0, v1

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/input/ItemScroller;->animateByItem(FJ)Z

    move-result v0

    .line 461
    :goto_0
    return v0

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 453
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/glass/input/ItemScroller;->setAnimationLeftover(F)V

    .line 454
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    iget-object v2, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v1, v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    .line 457
    iput v3, p0, Lcom/google/glass/input/ItemScroller;->scaleDestination:F

    .line 458
    iget-object v1, p0, Lcom/google/glass/input/ItemScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1, v3}, Lcom/google/glass/input/ItemScroller$Scrollable;->setScale(F)V

    goto :goto_0
.end method
