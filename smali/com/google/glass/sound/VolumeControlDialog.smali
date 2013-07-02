.class public Lcom/google/glass/sound/VolumeControlDialog;
.super Landroid/app/Dialog;
.source "VolumeControlDialog.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;
.implements Lcom/google/glass/widget/ValueSlider$Listener;


# static fields
.field public static final HIGH_VOLUME_RATIO:F = 0.5f

.field private static final HORIZONTAL_SCROLL_DAMPER:F = 0.5f

.field private static final PLAY_DING_DELAY_MILLIS:J = 0x64L

.field static final TAG:Ljava/lang/String;


# instance fields
.field private headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private headsetState:I

.field private playDingRunnable:Ljava/lang/Runnable;

.field private touchDetector:Lcom/google/glass/input/TouchDetector;

.field private tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

.field private valueSlider:Lcom/google/glass/widget/ValueSlider;

.field private volumeHelper:Lcom/google/glass/sound/VolumeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/sound/VolumeControlDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sound/VolumeControlDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    sget v1, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    new-instance v1, Lcom/google/glass/sound/VolumeControlDialog$1;

    invoke-direct {v1, p0}, Lcom/google/glass/sound/VolumeControlDialog$1;-><init>(Lcom/google/glass/sound/VolumeControlDialog;)V

    iput-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 55
    new-instance v1, Lcom/google/glass/sound/VolumeControlDialog$2;

    invoke-direct {v1, p0}, Lcom/google/glass/sound/VolumeControlDialog$2;-><init>(Lcom/google/glass/sound/VolumeControlDialog;)V

    iput-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->playDingRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v1, Lcom/google/glass/sound/VolumeHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/sound/VolumeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->volumeHelper:Lcom/google/glass/sound/VolumeHelper;

    .line 80
    new-instance v1, Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p0}, Lcom/google/glass/sound/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 83
    sget v1, Lcom/google/glass/common/R$layout;->volume_control_dialog:I

    invoke-virtual {p0, v1}, Lcom/google/glass/sound/VolumeControlDialog;->setContentView(I)V

    .line 84
    sget v1, Lcom/google/glass/common/R$id;->tuggable_view:I

    invoke-virtual {p0, v1}, Lcom/google/glass/sound/VolumeControlDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    iput-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    .line 85
    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v1}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->activate()V

    .line 88
    new-instance v0, Lcom/google/glass/horizontalscroll/FrameLayoutCard;

    invoke-direct {v0, p1}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, frameLayoutCard:Lcom/google/glass/horizontalscroll/FrameLayoutCard;
    new-instance v1, Lcom/google/glass/widget/ValueSlider;

    invoke-direct {v1, p1}, Lcom/google/glass/widget/ValueSlider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    .line 90
    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v0, v1}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;->addView(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v1, v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->setView(Landroid/view/View;)V

    .line 94
    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v1, p0}, Lcom/google/glass/widget/ValueSlider;->addListener(Lcom/google/glass/widget/ValueSlider$Listener;)V

    .line 95
    invoke-static {p1}, Lcom/google/glass/sound/VolumeHelper;->getHeadsetState(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/glass/sound/VolumeControlDialog;->initSlider(I)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/sound/VolumeControlDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/sound/VolumeControlDialog;->initSlider(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/sound/VolumeControlDialog;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/sound/VolumeControlDialog;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/sound/VolumeControlDialog;)Lcom/google/glass/sound/VolumeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->volumeHelper:Lcom/google/glass/sound/VolumeHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/sound/VolumeControlDialog;)Lcom/google/glass/widget/ValueSlider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/sound/VolumeControlDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->headsetState:I

    return v0
.end method

.method private getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/glass/sound/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method private initSlider(I)V
    .locals 3
    .parameter "headsetState"

    .prologue
    .line 99
    sget-object v0, Lcom/google/glass/sound/VolumeControlDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing slider with headset state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput p1, p0, Lcom/google/glass/sound/VolumeControlDialog;->headsetState:I

    .line 102
    new-instance v0, Lcom/google/glass/sound/VolumeControlDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/sound/VolumeControlDialog$3;-><init>(Lcom/google/glass/sound/VolumeControlDialog;I)V

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/sound/VolumeControlDialog$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    return-void
.end method


# virtual methods
.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onCameraButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/glass/sound/VolumeControlDialog;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 158
    invoke-virtual {p0}, Lcom/google/glass/sound/VolumeControlDialog;->dismiss()V

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onDoubleTap()Z

    move-result v0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 4
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/ValueSlider;->onFingerCountChanged(IZ)V

    .line 177
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->playDingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/ValueSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 179
    invoke-virtual {p0}, Lcom/google/glass/sound/VolumeControlDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->playDingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/ValueSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 213
    const/high16 v0, 0x3f00

    mul-float/2addr p2, v0

    .line 214
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v0, p2}, Lcom/google/glass/widget/ValueSlider;->onPrepareSwipe(F)V

    .line 215
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v1}, Lcom/google/glass/widget/ValueSlider;->getFillBarOverScrollPixels()I

    move-result v1

    int-to-float v2, v1

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 128
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/sound/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.HEADSET_PLUG"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;[Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 135
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/sound/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 3
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 191
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v1, v2}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v1, p2}, Lcom/google/glass/widget/ValueSlider;->onSwipe(Lcom/google/glass/input/SwipeDirection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v1, v2}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    goto :goto_0

    .line 201
    :cond_2
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v1, v2}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSwipeCanceled(I)Z
    .locals 1
    .parameter "fingerCount"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onSwipeCanceled(I)Z

    move-result v0

    return v0
.end method

.method public onValueChanged(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 141
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/sound/VolumeControlDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/sound/VolumeControlDialog$4;-><init>(Lcom/google/glass/sound/VolumeControlDialog;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public onVerticalHeadScroll(FF)Z
    .locals 1
    .parameter "delta"
    .parameter "velocity"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog;->tuggableView:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->onVerticalHeadScroll(FF)Z

    move-result v0

    return v0
.end method
