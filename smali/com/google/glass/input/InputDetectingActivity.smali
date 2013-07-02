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

.field private logTag:Ljava/lang/String;

.field private final longPressInterceptor:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->logTag:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/google/glass/input/InputDetectingActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/input/InputDetectingActivity$1;-><init>(Lcom/google/glass/input/InputDetectingActivity;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->longPressInterceptor:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method private setLongPress()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.glass.action.LONG_TAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, intent:Landroid/content/IntentFilter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 281
    iget-object v1, p0, Lcom/google/glass/input/InputDetectingActivity;->longPressInterceptor:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 282
    return-void
.end method

.method private unsetLongPress()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->longPressInterceptor:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 287
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 147
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->logTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->logTag:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->logTag:Ljava/lang/String;

    const/16 v1, 0x16

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->logTag:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning, future log events will be logged with the tag \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/input/InputDetectingActivity;->logTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->logTag:Ljava/lang/String;

    return-object v0
.end method

.method protected identityHashCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 184
    return-void
.end method

.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate(%s, %s):"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance v0, Lcom/google/glass/input/InputDetector;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/InputDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    .line 84
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 85
    new-instance v0, Lcom/google/glass/input/KeyDetector;

    invoke-direct {v0, p0, p0}, Lcom/google/glass/input/KeyDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->keyDetector:Lcom/google/glass/input/KeyDetector;

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 117
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method protected onDisallowedInput()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
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

    .line 156
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->shouldAllowCameraButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->onCameraButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->onDisallowedInput()V

    goto :goto_0

    .line 173
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
    .line 178
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
    .locals 5
    .parameter "intent"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNewIntent(%s, %s):"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPause: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->unsetLongPress()V

    .line 106
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
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResume: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->setLongPress()V

    .line 99
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 91
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStart: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 111
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onSwipeCanceled(I)Z
    .locals 1
    .parameter "fingerCount"

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVerticalHeadScroll(FF)Z
    .locals 1
    .parameter "delta"
    .parameter "velocity"

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAllowLongPress()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method protected startOrientationSensors()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->startOrientationSensors()V

    .line 270
    return-void
.end method

.method protected stopOrientationSensors()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->stopOrientationSensors()V

    .line 275
    return-void
.end method
