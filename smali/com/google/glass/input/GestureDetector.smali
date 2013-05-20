.class public Lcom/google/glass/input/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# static fields
.field public static final DOUBLE_TAP_WINDOW_MILLIS:J = 0x96L


# instance fields
.field private currentDownEvent:Landroid/view/MotionEvent;

.field private gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

.field private lastMotionX:F

.field private lastMotionY:F

.field private lastPointerId:I

.field private lastTapTime:J

.field private stillInTapRegion:Z

.field private final tapTimeout:J

.field private final touchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/google/glass/input/GestureDetector;->gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

    .line 57
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 59
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const-wide/16 v2, 0x2bc

    iput-wide v2, p0, Lcom/google/glass/input/GestureDetector;->tapTimeout:J

    .line 67
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 68
    .local v1, touchSlop:I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/google/glass/input/GestureDetector;->touchSlopSquare:I

    .line 69
    return-void

    .line 64
    .end local v1           #touchSlop:I
    :cond_0
    invoke-static {v0}, Lcom/google/glass/hidden/HiddenViewConfiguration;->getDeviceTapTimeout(Landroid/view/ViewConfiguration;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/input/GestureDetector;->tapTimeout:J

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "ev"

    .prologue
    .line 80
    const/4 v7, 0x0

    .line 82
    .local v7, handled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 84
    .local v1, action:I
    and-int/lit16 v13, v1, 0xff

    packed-switch v13, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return v7

    .line 86
    :pswitch_0
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/glass/input/GestureDetector;->lastMotionX:F

    .line 87
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/glass/input/GestureDetector;->lastMotionY:F

    .line 88
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/glass/input/GestureDetector;->lastPointerId:I

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/input/GestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    if-eqz v13, :cond_1

    .line 91
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/input/GestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 93
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/glass/input/GestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    .line 94
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/glass/input/GestureDetector;->stillInTapRegion:Z

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/input/GestureDetector;->gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 97
    goto :goto_0

    .line 101
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/glass/input/GestureDetector;->lastPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 103
    .local v8, pointerIndex:I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_2

    .line 104
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 105
    .local v11, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 115
    .local v12, y:F
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/glass/input/GestureDetector;->lastMotionX:F

    sub-float v9, v13, v11

    .line 116
    .local v9, scrollX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/glass/input/GestureDetector;->lastMotionY:F

    sub-float v10, v13, v12

    .line 118
    .local v10, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/glass/input/GestureDetector;->stillInTapRegion:Z

    if-eqz v13, :cond_3

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/input/GestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    sub-float v13, v11, v13

    float-to-int v2, v13

    .line 120
    .local v2, deltaX:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/input/GestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    sub-float v13, v12, v13

    float-to-int v3, v13

    .line 121
    .local v3, deltaY:I
    mul-int v13, v2, v2

    mul-int v14, v3, v3

    add-int v4, v13, v14

    .line 123
    .local v4, distance:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/glass/input/GestureDetector;->touchSlopSquare:I

    if-le v4, v13, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/input/GestureDetector;->gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/input/GestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0, v9, v10}, Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v7

    .line 125
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/glass/input/GestureDetector;->lastMotionX:F

    .line 126
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/glass/input/GestureDetector;->lastMotionY:F

    .line 127
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/glass/input/GestureDetector;->stillInTapRegion:Z

    goto/16 :goto_0

    .line 108
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #distance:I
    .end local v9           #scrollX:F
    .end local v10           #scrollY:F
    .end local v11           #x:F
    .end local v12           #y:F
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 109
    .restart local v11       #x:F
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 110
    .restart local v12       #y:F
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/glass/input/GestureDetector;->lastMotionX:F

    .line 111
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/glass/input/GestureDetector;->lastMotionY:F

    .line 112
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/glass/input/GestureDetector;->lastPointerId:I

    goto :goto_1

    .line 129
    .restart local v9       #scrollX:F
    .restart local v10       #scrollY:F
    :cond_3
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x3f80

    cmpl-float v13, v13, v14

    if-gez v13, :cond_4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x3f80

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_0

    .line 130
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/input/GestureDetector;->gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/input/GestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0, v9, v10}, Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v7

    .line 131
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/glass/input/GestureDetector;->lastMotionX:F

    .line 132
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/glass/input/GestureDetector;->lastMotionY:F

    goto/16 :goto_0

    .line 139
    .end local v8           #pointerIndex:I
    .end local v9           #scrollX:F
    .end local v10           #scrollY:F
    .end local v11           #x:F
    .end local v12           #y:F
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 140
    .local v5, eventTime:J
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/glass/input/GestureDetector;->stillInTapRegion:Z

    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/glass/input/GestureDetector;->tapTimeout:J

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/input/GestureDetector;->gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/input/GestureDetector;->currentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/glass/input/GestureDetector;->lastTapTime:J

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x96

    cmp-long v13, v13, v15

    if-gez v13, :cond_5

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/input/GestureDetector;->gestureListener:Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;->onDoubleTapUp(Landroid/view/MotionEvent;)Z

    .line 149
    :cond_5
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/google/glass/input/GestureDetector;->lastTapTime:J

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
