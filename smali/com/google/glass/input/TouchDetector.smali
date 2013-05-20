.class public final Lcom/google/glass/input/TouchDetector;
.super Ljava/lang/Object;
.source "TouchDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_SWIPE_DISTANCE_PX:F = 200.0f

.field private static final HORIZONTAL_SWIPE_VELOCITY_PX_MS:F = 0.6f

.field private static final SCROLL_VELOCITY_DAMPENING:F = 0.9f

.field private static final TAG:Ljava/lang/String; = null

.field private static final VERTICAL_SWIPE_DISTANCE_PX:F = 100.0f

.field private static final VERTICAL_SWIPE_VELOCITY_PX_MS:F = 0.3f


# instance fields
.field private downEvent:Landroid/view/MotionEvent;

.field private final gestureDetector:Lcom/google/glass/input/GestureDetector;

.field private final gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

.field private final inputListener:Lcom/google/glass/input/InputListener;

.field private lastScrollEventMillis:J

.field private lastScrollPointerCount:I

.field private final powerHelper:Lcom/google/glass/util/PowerHelper;

.field private prepareSwipeCalled:Z

.field private scrollInXStarted:Z

.field private scrollInYStarted:Z

.field private scrollVelocityX:F

.field private scrollVelocityY:F

.field private tapDistanceThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/TouchDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V
    .locals 2
    .parameter "context"
    .parameter "inputListener"

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/google/glass/input/TouchDetector$1;

    invoke-direct {v0, p0}, Lcom/google/glass/input/TouchDetector$1;-><init>(Lcom/google/glass/input/TouchDetector;)V

    iput-object v0, p0, Lcom/google/glass/input/TouchDetector;->gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

    .line 334
    if-nez p2, :cond_0

    .line 335
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputDetector constructed with null InputListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    iput-object p2, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    .line 340
    new-instance v0, Lcom/google/glass/input/GestureDetector;

    iget-object v1, p0, Lcom/google/glass/input/TouchDetector;->gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/input/GestureDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;)V

    iput-object v0, p0, Lcom/google/glass/input/TouchDetector;->gestureDetector:Lcom/google/glass/input/GestureDetector;

    .line 342
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/TouchDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 344
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/glass/input/TouchDetector;->tapDistanceThreshold:F

    .line 345
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/input/TouchDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/input/TouchDetector;->dispatchConfirm()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/input/TouchDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/input/TouchDetector;->dispatchDoubleTap()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/glass/input/TouchDetector;FFF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/input/TouchDetector;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/glass/input/TouchDetector;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/glass/input/TouchDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/glass/input/TouchDetector;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/TouchDetector;->resetSwipes(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/input/TouchDetector;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/TouchDetector;->dispatchFingerCountChanged(IZ)V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/input/TouchDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/input/TouchDetector;ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/glass/input/TouchDetector;->dispatchSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/google/glass/input/TouchDetector;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/glass/input/TouchDetector;->dispatchSwipeCanceled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/input/TouchDetector;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/google/glass/input/TouchDetector;->lastScrollEventMillis:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/glass/input/TouchDetector;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/google/glass/input/TouchDetector;->lastScrollEventMillis:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/glass/input/TouchDetector;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/google/glass/input/TouchDetector;->lastScrollPointerCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/glass/input/TouchDetector;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/google/glass/input/TouchDetector;->lastScrollPointerCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/glass/input/TouchDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/google/glass/input/TouchDetector;->scrollInXStarted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/input/TouchDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/google/glass/input/TouchDetector;->scrollInXStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/input/TouchDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/google/glass/input/TouchDetector;->scrollInYStarted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/glass/input/TouchDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/google/glass/input/TouchDetector;->scrollInYStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/glass/input/TouchDetector;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/google/glass/input/TouchDetector;->scrollVelocityX:F

    return v0
.end method

.method static synthetic access$602(Lcom/google/glass/input/TouchDetector;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/google/glass/input/TouchDetector;->scrollVelocityX:F

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/input/TouchDetector;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/google/glass/input/TouchDetector;->scrollVelocityY:F

    return v0
.end method

.method static synthetic access$702(Lcom/google/glass/input/TouchDetector;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/google/glass/input/TouchDetector;->scrollVelocityY:F

    return p1
.end method

.method static synthetic access$800(Lcom/google/glass/input/TouchDetector;IFFFFII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p7}, Lcom/google/glass/input/TouchDetector;->dispatchPrepareSwipe(IFFFFII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/input/TouchDetector;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/google/glass/input/TouchDetector;->tapDistanceThreshold:F

    return v0
.end method

.method private dispatchConfirm()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 385
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchDoubleTap()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0}, Lcom/google/glass/input/InputListener;->onDoubleTap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 393
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchFingerCountChanged(IZ)V
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->onFingerCountChanged(IZ)Z

    .line 400
    return-void
.end method

.method private dispatchPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/TouchDetector;->prepareSwipeCalled:Z

    .line 415
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/glass/input/InputListener;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 420
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchSwipeCanceled(I)Z
    .locals 1
    .parameter "fingerCount"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/InputListener;->onSwipeCanceled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 428
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private interpolate(FFF)F
    .locals 2
    .parameter "from"
    .parameter "to"
    .parameter "alpha"

    .prologue
    .line 435
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p3

    mul-float/2addr v0, p1

    mul-float v1, p3, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private resetSwipes(IZ)V
    .locals 1
    .parameter "fingerCount"
    .parameter "cancelIfNeeded"

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/google/glass/input/TouchDetector;->prepareSwipeCalled:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 440
    invoke-direct {p0, p1}, Lcom/google/glass/input/TouchDetector;->dispatchSwipeCanceled(I)Z

    .line 442
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/input/TouchDetector;->prepareSwipeCalled:Z

    .line 443
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const v2, 0x100008

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    .line 357
    :cond_0
    const/4 v0, 0x0

    .line 359
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 377
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/input/TouchDetector;->gestureDetector:Lcom/google/glass/input/GestureDetector;

    invoke-virtual {v1, p1}, Lcom/google/glass/input/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 379
    goto :goto_0

    .line 363
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/input/TouchDetector;->gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

    invoke-virtual {v1, p1}, Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 364
    goto :goto_1

    .line 367
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/input/TouchDetector;->gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

    invoke-virtual {v1, p1}, Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;->onCancel(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 368
    goto :goto_1

    .line 371
    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/input/TouchDetector;->gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

    invoke-virtual {v1, p1}, Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 372
    goto :goto_1

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
