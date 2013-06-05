.class public abstract Lcom/google/glass/input/InputDetectingActivity;
.super Landroid/app/Activity;
.source "InputDetectingActivity.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# static fields
.field private static final LONG_PRESS_INTERCEPTOR_PRIORITY:I = 0x1


# instance fields
.field private inputDetector:Lcom/google/glass/input/InputDetector;

.field private keyDetector:Lcom/google/glass/input/KeyDetector;

.field private final longPressInterceptor:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Lcom/google/glass/input/InputDetectingActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/input/InputDetectingActivity$1;-><init>(Lcom/google/glass/input/InputDetectingActivity;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->longPressInterceptor:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method private setLongPress()V
    .locals 2

    .prologue
    .line 264
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.glass.action.LONG_TAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, intent:Landroid/content/IntentFilter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 266
    iget-object v1, p0, Lcom/google/glass/input/InputDetectingActivity;->longPressInterceptor:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    return-void
.end method

.method private unsetLongPress()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->longPressInterceptor:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 272
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 132
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected identityHashCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 169
    return-void
.end method

.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/google/glass/input/InputDetector;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/InputDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    .line 69
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 70
    new-instance v0, Lcom/google/glass/input/KeyDetector;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/KeyDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->keyDetector:Lcom/google/glass/input/KeyDetector;

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 102
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected onDisallowedInput()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 141
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->shouldAllowCameraButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->onCameraButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->onDisallowedInput()V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/google/glass/input/InputDetectingActivity;->keyDetector:Lcom/google/glass/input/KeyDetector;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/input/KeyDetector;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->keyDetector:Lcom/google/glass/input/KeyDetector;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/input/KeyDetector;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->unsetLongPress()V

    .line 91
    return-void
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipeX"
    .parameter "numSwipeY"

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->setLongPress()V

    .line 84
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 76
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 96
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onSwipeCanceled(I)Z
    .locals 1
    .parameter "fingerCount"

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVerticalHeadScroll(FF)Z
    .locals 1
    .parameter "delta"
    .parameter "velocity"

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAllowLongPress()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method protected startOrientationSensors()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->startOrientationSensors()V

    .line 255
    return-void
.end method

.method protected stopOrientationSensors()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->stopOrientationSensors()V

    .line 260
    return-void
.end method
