.class public Lcom/google/glass/input/InputDetector;
.super Ljava/lang/Object;
.source "InputDetector.java"


# static fields
.field private static final MAX_PITCH_ACCUMULATIONS:I = 0x14

.field private static final PITCH_DEGREES_TO_SCROLL_PIXELS:F = 45.0f

.field private static final SCROLL_VELOCITY_DAMPENING:F = 0.9f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accumulatedPitchDelta:F

.field private hasPitch:Z

.field private headScrollVelocityY:F

.field private final inputListener:Lcom/google/glass/input/InputListener;

.field private lastHeadScrollTimeMillis:J

.field private lastPitch:F

.field private numPitchAccumulations:I

.field private final orientationHelper:Lcom/google/glass/input/OrientationHelper;

.field private final orientationListener:Lcom/google/glass/input/OrientationHelper$OrientationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/InputDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V
    .locals 2
    .parameter "context"
    .parameter "inputListener"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/glass/input/InputDetector$1;

    invoke-direct {v0, p0}, Lcom/google/glass/input/InputDetector$1;-><init>(Lcom/google/glass/input/InputDetector;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetector;->orientationListener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    .line 76
    if-nez p2, :cond_0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputDetector constructed with null InputListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p2, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    .line 81
    new-instance v0, Lcom/google/glass/input/OrientationHelper;

    iget-object v1, p0, Lcom/google/glass/input/InputDetector;->orientationListener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/input/OrientationHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/OrientationHelper$OrientationListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetector;->orientationHelper:Lcom/google/glass/input/OrientationHelper;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/input/InputDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/google/glass/input/InputDetector;->hasPitch:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/input/InputDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/google/glass/input/InputDetector;->hasPitch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/input/InputDetector;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/google/glass/input/InputDetector;->lastPitch:F

    return v0
.end method

.method static synthetic access$102(Lcom/google/glass/input/InputDetector;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/google/glass/input/InputDetector;->lastPitch:F

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/input/InputDetector;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/glass/input/InputDetector;->handleHeadScroll(F)V

    return-void
.end method

.method private dispatchVerticalHeadScroll(FF)V
    .locals 1
    .parameter "delta"
    .parameter "velocity"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->inputListener:Lcom/google/glass/input/InputListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/InputListener;->onVerticalHeadScroll(FF)Z

    .line 94
    return-void
.end method

.method private handleHeadScroll(F)V
    .locals 7
    .parameter "deltaY"

    .prologue
    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 99
    .local v0, currentTimeMillis:J
    iget-wide v3, p0, Lcom/google/glass/input/InputDetector;->lastHeadScrollTimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/google/glass/input/InputDetector;->lastHeadScrollTimeMillis:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 100
    iget-wide v3, p0, Lcom/google/glass/input/InputDetector;->lastHeadScrollTimeMillis:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    div-float v2, p1, v3

    .line 103
    .local v2, currentVelocity:F
    const v3, 0x3dccccd0

    mul-float/2addr v3, v2

    const v4, 0x3f666666

    iget v5, p0, Lcom/google/glass/input/InputDetector;->headScrollVelocityY:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/glass/input/InputDetector;->headScrollVelocityY:F

    .line 111
    iget v3, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    .line 112
    iget v3, p0, Lcom/google/glass/input/InputDetector;->numPitchAccumulations:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/input/InputDetector;->numPitchAccumulations:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    .line 114
    iget v3, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    iget v4, p0, Lcom/google/glass/input/InputDetector;->headScrollVelocityY:F

    invoke-direct {p0, v3, v4}, Lcom/google/glass/input/InputDetector;->dispatchVerticalHeadScroll(FF)V

    .line 115
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/glass/input/InputDetector;->accumulatedPitchDelta:F

    .line 120
    .end local v2           #currentVelocity:F
    :cond_0
    iput-wide v0, p0, Lcom/google/glass/input/InputDetector;->lastHeadScrollTimeMillis:J

    .line 121
    return-void
.end method


# virtual methods
.method public startOrientationSensors()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->orientationHelper:Lcom/google/glass/input/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/OrientationHelper;->start()V

    .line 86
    return-void
.end method

.method public stopOrientationSensors()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/input/InputDetector;->orientationHelper:Lcom/google/glass/input/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/OrientationHelper;->stop()V

    .line 90
    return-void
.end method
