.class Lcom/google/glass/input/TouchDetector$1;
.super Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;
.source "TouchDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/TouchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/TouchDetector;

.field private totalDistanceX:F

.field private totalDistanceY:F


# direct methods
.method constructor <init>(Lcom/google/glass/input/TouchDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-direct {p0}, Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;-><init>()V

    return-void
.end method

.method private recycleDownEvent()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/google/glass/input/TouchDetector;->access$1100(Lcom/google/glass/input/TouchDetector;)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/google/glass/input/TouchDetector;->access$1100(Lcom/google/glass/input/TouchDetector;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 294
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$1102(Lcom/google/glass/input/TouchDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 296
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    #calls: Lcom/google/glass/input/TouchDetector;->dispatchSwipeCanceled(I)Z
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$1600(Lcom/google/glass/input/TouchDetector;I)Z

    .line 284
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #calls: Lcom/google/glass/input/TouchDetector;->dispatchFingerCountChanged(IZ)V
    invoke-static {v0, v2, v2}, Lcom/google/glass/input/TouchDetector;->access$1300(Lcom/google/glass/input/TouchDetector;IZ)V

    .line 286
    invoke-direct {p0}, Lcom/google/glass/input/TouchDetector$1;->recycleDownEvent()V

    .line 288
    return v2
.end method

.method public onDoubleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #calls: Lcom/google/glass/input/TouchDetector;->dispatchDoubleTap()Z
    invoke-static {v0}, Lcom/google/glass/input/TouchDetector;->access$100(Lcom/google/glass/input/TouchDetector;)Z

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 195
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    #setter for: Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$1102(Lcom/google/glass/input/TouchDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 198
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    const-wide/16 v1, 0x0

    #setter for: Lcom/google/glass/input/TouchDetector;->lastScrollEventMillis:J
    invoke-static {v0, v1, v2}, Lcom/google/glass/input/TouchDetector;->access$202(Lcom/google/glass/input/TouchDetector;J)J

    .line 201
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    iget-object v1, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/google/glass/input/TouchDetector;->access$1100(Lcom/google/glass/input/TouchDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #calls: Lcom/google/glass/input/TouchDetector;->resetSwipes(IZ)V
    invoke-static {v0, v1, v3}, Lcom/google/glass/input/TouchDetector;->access$1200(Lcom/google/glass/input/TouchDetector;IZ)V

    .line 203
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    iget-object v1, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/google/glass/input/TouchDetector;->access$1100(Lcom/google/glass/input/TouchDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    #calls: Lcom/google/glass/input/TouchDetector;->dispatchFingerCountChanged(IZ)V
    invoke-static {v0, v1, v3}, Lcom/google/glass/input/TouchDetector;->access$1300(Lcom/google/glass/input/TouchDetector;IZ)V

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 12
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->lastScrollEventMillis:J
    invoke-static {v0}, Lcom/google/glass/input/TouchDetector;->access$200(Lcom/google/glass/input/TouchDetector;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    #setter for: Lcom/google/glass/input/TouchDetector;->lastScrollPointerCount:I
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$302(Lcom/google/glass/input/TouchDetector;I)I

    .line 118
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    #setter for: Lcom/google/glass/input/TouchDetector;->lastScrollEventMillis:J
    invoke-static {v0, v1, v2}, Lcom/google/glass/input/TouchDetector;->access$202(Lcom/google/glass/input/TouchDetector;J)J

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceX:F

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceY:F

    .line 125
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/input/TouchDetector;->scrollInXStarted:Z
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$402(Lcom/google/glass/input/TouchDetector;Z)Z

    .line 126
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/input/TouchDetector;->scrollInYStarted:Z
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$502(Lcom/google/glass/input/TouchDetector;Z)Z

    .line 129
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/input/TouchDetector;->scrollVelocityX:F
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$602(Lcom/google/glass/input/TouchDetector;F)F

    .line 130
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/input/TouchDetector;->scrollVelocityY:F
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$702(Lcom/google/glass/input/TouchDetector;F)F

    .line 132
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iget v2, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceX:F

    iget v3, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceY:F

    iget-object v4, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollVelocityX:F
    invoke-static {v4}, Lcom/google/glass/input/TouchDetector;->access$600(Lcom/google/glass/input/TouchDetector;)F

    move-result v4

    iget-object v5, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollVelocityY:F
    invoke-static {v5}, Lcom/google/glass/input/TouchDetector;->access$700(Lcom/google/glass/input/TouchDetector;)F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    #calls: Lcom/google/glass/input/TouchDetector;->dispatchPrepareSwipe(IFFFFII)Z
    invoke-static/range {v0 .. v7}, Lcom/google/glass/input/TouchDetector;->access$800(Lcom/google/glass/input/TouchDetector;IFFFFII)Z

    .line 136
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->lastScrollPointerCount:I
    invoke-static {v1}, Lcom/google/glass/input/TouchDetector;->access$300(Lcom/google/glass/input/TouchDetector;)I

    move-result v1

    if-ne v0, v1, :cond_7

    const/4 v9, 0x1

    .line 142
    .local v9, isSameFingerCount:Z
    :goto_1
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    #setter for: Lcom/google/glass/input/TouchDetector;->lastScrollPointerCount:I
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$302(Lcom/google/glass/input/TouchDetector;I)I

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->lastScrollEventMillis:J
    invoke-static {v2}, Lcom/google/glass/input/TouchDetector;->access$200(Lcom/google/glass/input/TouchDetector;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    if-eqz v9, :cond_6

    .line 147
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollInXStarted:Z
    invoke-static {v0}, Lcom/google/glass/input/TouchDetector;->access$400(Lcom/google/glass/input/TouchDetector;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->tapDistanceThreshold:F
    invoke-static {v1}, Lcom/google/glass/input/TouchDetector;->access$900(Lcom/google/glass/input/TouchDetector;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/input/TouchDetector;->scrollInXStarted:Z
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$402(Lcom/google/glass/input/TouchDetector;Z)Z

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollInYStarted:Z
    invoke-static {v0}, Lcom/google/glass/input/TouchDetector;->access$500(Lcom/google/glass/input/TouchDetector;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->tapDistanceThreshold:F
    invoke-static {v1}, Lcom/google/glass/input/TouchDetector;->access$900(Lcom/google/glass/input/TouchDetector;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/input/TouchDetector;->scrollInYStarted:Z
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$502(Lcom/google/glass/input/TouchDetector;Z)Z

    .line 154
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->lastScrollEventMillis:J
    invoke-static {v2}, Lcom/google/glass/input/TouchDetector;->access$200(Lcom/google/glass/input/TouchDetector;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v8, v0

    .line 155
    .local v8, deltaTimeMillis:F
    const/4 v10, 0x0

    .line 156
    .local v10, velocityX:F
    const/4 v11, 0x0

    .line 159
    .local v11, velocityY:F
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollInXStarted:Z
    invoke-static {v0}, Lcom/google/glass/input/TouchDetector;->access$400(Lcom/google/glass/input/TouchDetector;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iget v0, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceX:F

    sub-float/2addr v0, p3

    iput v0, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceX:F

    .line 161
    div-float v10, p3, v8

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollInYStarted:Z
    invoke-static {v0}, Lcom/google/glass/input/TouchDetector;->access$500(Lcom/google/glass/input/TouchDetector;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    iget v0, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceY:F

    sub-float v0, v0, p4

    iput v0, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceY:F

    .line 165
    div-float v11, p4, v8

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollInXStarted:Z
    invoke-static {v0}, Lcom/google/glass/input/TouchDetector;->access$400(Lcom/google/glass/input/TouchDetector;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollInYStarted:Z
    invoke-static {v0}, Lcom/google/glass/input/TouchDetector;->access$500(Lcom/google/glass/input/TouchDetector;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    iget-object v1, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    iget-object v2, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollVelocityX:F
    invoke-static {v2}, Lcom/google/glass/input/TouchDetector;->access$600(Lcom/google/glass/input/TouchDetector;)F

    move-result v2

    const v3, 0x3f666666

    #calls: Lcom/google/glass/input/TouchDetector;->interpolate(FFF)F
    invoke-static {v1, v2, v10, v3}, Lcom/google/glass/input/TouchDetector;->access$1000(Lcom/google/glass/input/TouchDetector;FFF)F

    move-result v1

    #setter for: Lcom/google/glass/input/TouchDetector;->scrollVelocityX:F
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$602(Lcom/google/glass/input/TouchDetector;F)F

    .line 173
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    iget-object v1, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    iget-object v2, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollVelocityY:F
    invoke-static {v2}, Lcom/google/glass/input/TouchDetector;->access$700(Lcom/google/glass/input/TouchDetector;)F

    move-result v2

    const v3, 0x3f666666

    #calls: Lcom/google/glass/input/TouchDetector;->interpolate(FFF)F
    invoke-static {v1, v2, v11, v3}, Lcom/google/glass/input/TouchDetector;->access$1000(Lcom/google/glass/input/TouchDetector;FFF)F

    move-result v1

    #setter for: Lcom/google/glass/input/TouchDetector;->scrollVelocityY:F
    invoke-static {v0, v1}, Lcom/google/glass/input/TouchDetector;->access$702(Lcom/google/glass/input/TouchDetector;F)F

    .line 176
    iget v0, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceX:F

    const/high16 v1, 0x4348

    div-float/2addr v0, v1

    float-to-int v6, v0

    .line 177
    .local v6, numSwipesX:I
    iget v0, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceY:F

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    float-to-int v7, v0

    .line 180
    .local v7, numSwipesY:I
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iget v2, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceX:F

    iget v3, p0, Lcom/google/glass/input/TouchDetector$1;->totalDistanceY:F

    iget-object v4, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollVelocityX:F
    invoke-static {v4}, Lcom/google/glass/input/TouchDetector;->access$600(Lcom/google/glass/input/TouchDetector;)F

    move-result v4

    iget-object v5, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->scrollVelocityY:F
    invoke-static {v5}, Lcom/google/glass/input/TouchDetector;->access$700(Lcom/google/glass/input/TouchDetector;)F

    move-result v5

    #calls: Lcom/google/glass/input/TouchDetector;->dispatchPrepareSwipe(IFFFFII)Z
    invoke-static/range {v0 .. v7}, Lcom/google/glass/input/TouchDetector;->access$800(Lcom/google/glass/input/TouchDetector;IFFFFII)Z

    .line 186
    .end local v6           #numSwipesX:I
    .end local v7           #numSwipesY:I
    .end local v8           #deltaTimeMillis:F
    .end local v10           #velocityX:F
    .end local v11           #velocityY:F
    :cond_6
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    #setter for: Lcom/google/glass/input/TouchDetector;->lastScrollEventMillis:J
    invoke-static {v0, v1, v2}, Lcom/google/glass/input/TouchDetector;->access$202(Lcom/google/glass/input/TouchDetector;J)J

    .line 188
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 141
    .end local v9           #isSameFingerCount:Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #calls: Lcom/google/glass/input/TouchDetector;->dispatchConfirm()Z
    invoke-static {v0}, Lcom/google/glass/input/TouchDetector;->access$000(Lcom/google/glass/input/TouchDetector;)Z

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "e"

    .prologue
    .line 210
    iget-object v10, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;
    invoke-static {v10}, Lcom/google/glass/input/TouchDetector;->access$1100(Lcom/google/glass/input/TouchDetector;)Landroid/view/MotionEvent;

    move-result-object v10

    if-nez v10, :cond_0

    .line 211
    invoke-static {}, Lcom/google/glass/input/TouchDetector;->access$1400()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Ignoring up event, because there was no down event."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v10, 0x0

    .line 275
    :goto_0
    return v10

    .line 215
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget-object v11, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;
    invoke-static {v11}, Lcom/google/glass/input/TouchDetector;->access$1100(Lcom/google/glass/input/TouchDetector;)Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float v2, v10, v11

    .line 216
    .local v2, distanceX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget-object v11, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;
    invoke-static {v11}, Lcom/google/glass/input/TouchDetector;->access$1100(Lcom/google/glass/input/TouchDetector;)Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float v3, v10, v11

    .line 217
    .local v3, distanceY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-object v12, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    #getter for: Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;
    invoke-static {v12}, Lcom/google/glass/input/TouchDetector;->access$1100(Lcom/google/glass/input/TouchDetector;)Landroid/view/MotionEvent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    sub-long v5, v10, v12

    .line 218
    .local v5, timeDelta:J
    long-to-float v10, v5

    div-float v7, v2, v10

    .line 219
    .local v7, velocityX:F
    long-to-float v10, v5

    div-float v8, v3, v10

    .line 221
    .local v8, velocityY:F
    const/4 v10, 0x0

    cmpl-float v10, v2, v10

    if-lez v10, :cond_4

    sget-object v0, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    .line 222
    .local v0, directionX:Lcom/google/glass/input/SwipeDirection;
    :goto_1
    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-lez v10, :cond_5

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    .line 224
    .local v1, directionY:Lcom/google/glass/input/SwipeDirection;
    :goto_2
    const/4 v4, 0x0

    .line 225
    .local v4, horizontalSwipeDetected:Z
    const/4 v9, 0x0

    .line 228
    .local v9, verticalSwipeDetected:Z
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3e99999a

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    const/4 v9, 0x1

    .line 229
    :goto_3
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3f19999a

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    const/4 v4, 0x1

    .line 231
    :goto_4
    if-eqz v4, :cond_9

    if-eqz v9, :cond_9

    .line 234
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    .line 235
    const/4 v9, 0x0

    .line 257
    :cond_1
    :goto_5
    if-eqz v4, :cond_d

    .line 258
    iget-object v10, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    #calls: Lcom/google/glass/input/TouchDetector;->dispatchSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    invoke-static {v10, v11, v0}, Lcom/google/glass/input/TouchDetector;->access$1500(Lcom/google/glass/input/TouchDetector;ILcom/google/glass/input/SwipeDirection;)Z

    .line 263
    :cond_2
    :goto_6
    iget-object v11, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    if-nez v4, :cond_e

    if-nez v9, :cond_e

    const/4 v10, 0x1

    :goto_7
    #calls: Lcom/google/glass/input/TouchDetector;->resetSwipes(IZ)V
    invoke-static {v11, v12, v10}, Lcom/google/glass/input/TouchDetector;->access$1200(Lcom/google/glass/input/TouchDetector;IZ)V

    .line 266
    iget-object v10, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    #calls: Lcom/google/glass/input/TouchDetector;->dispatchFingerCountChanged(IZ)V
    invoke-static {v10, v11, v12}, Lcom/google/glass/input/TouchDetector;->access$1300(Lcom/google/glass/input/TouchDetector;IZ)V

    .line 268
    invoke-direct {p0}, Lcom/google/glass/input/TouchDetector$1;->recycleDownEvent()V

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 272
    iget-object v10, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    #setter for: Lcom/google/glass/input/TouchDetector;->downEvent:Landroid/view/MotionEvent;
    invoke-static {v10, v11}, Lcom/google/glass/input/TouchDetector;->access$1102(Lcom/google/glass/input/TouchDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 275
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 221
    .end local v0           #directionX:Lcom/google/glass/input/SwipeDirection;
    .end local v1           #directionY:Lcom/google/glass/input/SwipeDirection;
    .end local v4           #horizontalSwipeDetected:Z
    .end local v9           #verticalSwipeDetected:Z
    :cond_4
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    goto :goto_1

    .line 222
    .restart local v0       #directionX:Lcom/google/glass/input/SwipeDirection;
    :cond_5
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    goto :goto_2

    .line 228
    .restart local v1       #directionY:Lcom/google/glass/input/SwipeDirection;
    .restart local v4       #horizontalSwipeDetected:Z
    .restart local v9       #verticalSwipeDetected:Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 229
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 237
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 239
    :cond_9
    if-nez v4, :cond_1

    if-nez v9, :cond_1

    .line 242
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x4348

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    const/4 v4, 0x1

    .line 243
    :goto_8
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x42c8

    cmpl-float v10, v10, v11

    if-lez v10, :cond_b

    const/4 v9, 0x1

    .line 245
    :goto_9
    if-eqz v4, :cond_1

    if-eqz v9, :cond_1

    .line 248
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_c

    .line 249
    const/4 v9, 0x0

    goto :goto_5

    .line 242
    :cond_a
    const/4 v4, 0x0

    goto :goto_8

    .line 243
    :cond_b
    const/4 v9, 0x0

    goto :goto_9

    .line 251
    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    .line 259
    :cond_d
    if-eqz v9, :cond_2

    .line 260
    iget-object v10, p0, Lcom/google/glass/input/TouchDetector$1;->this$0:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    #calls: Lcom/google/glass/input/TouchDetector;->dispatchSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    invoke-static {v10, v11, v1}, Lcom/google/glass/input/TouchDetector;->access$1500(Lcom/google/glass/input/TouchDetector;ILcom/google/glass/input/SwipeDirection;)Z

    goto :goto_6

    .line 263
    :cond_e
    const/4 v10, 0x0

    goto :goto_7
.end method
