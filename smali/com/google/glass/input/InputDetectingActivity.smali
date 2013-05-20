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

.field private shouldKeepVoiceOn:Z

.field private touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Lcom/google/glass/input/InputDetectingActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/input/InputDetectingActivity$1;-><init>(Lcom/google/glass/input/InputDetectingActivity;)V

    iput-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->longPressInterceptor:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method private identityHashCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setLongPress()V
    .locals 2

    .prologue
    .line 407
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.glass.action.LONG_TAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, intent:Landroid/content/IntentFilter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 409
    iget-object v1, p0, Lcom/google/glass/input/InputDetectingActivity;->longPressInterceptor:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 410
    return-void
.end method

.method private unsetLongPress()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->longPressInterceptor:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 415
    return-void
.end method


# virtual methods
.method public attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V
    .locals 1
    .parameter "voiceSearchUi"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/InputDetector;->attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V

    .line 271
    return-void
.end method

.method public bindVoiceService()V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->shouldAllowVoiceInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->bindVoiceService()V

    .line 344
    :cond_0
    return-void
.end method

.method public detachVoiceSearchUi()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->detachVoiceSearchUi()V

    .line 276
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 157
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

.method public endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->endpointNetworkRecognizer()V

    .line 281
    return-void
.end method

.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public onAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 194
    return-void
.end method

.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
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

    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 127
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method protected onDisallowedInput()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 142
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

    .line 166
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->shouldAllowCameraButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->onCameraButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->onDisallowedInput()V

    goto :goto_0

    .line 183
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
    .line 188
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
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 133
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

    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-boolean v0, p0, Lcom/google/glass/input/InputDetectingActivity;->shouldKeepVoiceOn:Z

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->unbindVoiceService()V

    .line 115
    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->unsetLongPress()V

    .line 116
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
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/input/InputDetectingActivity;->shouldKeepVoiceOn:Z

    .line 100
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->bindVoiceService()V

    .line 101
    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->setLongPress()V

    .line 102
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 91
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public onSwipeCanceled(I)Z
    .locals 1
    .parameter "fingerCount"

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVerticalHeadScroll(FF)Z
    .locals 1
    .parameter "delta"
    .parameter "velocity"

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceAmplitudeChanged(D)Z
    .locals 1
    .parameter "amplitude"

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1
    .parameter "command"

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceServiceConnected()V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voice Service Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 249
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->updateVoiceConfigs()V

    .line 250
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/input/InputDetectingActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 251
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/InputDetectingActivity;->shouldKeepVoiceOn:Z

    .line 389
    invoke-virtual {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 390
    return-void
.end method

.method public refeedLastVoiceCommand()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->refeedLastVoiceCommand()V

    .line 375
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/InputDetector;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 366
    return-void
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAllowLongPress()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAllowVoiceInput()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method protected startOrientationSensors()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->startOrientationSensors()V

    .line 398
    return-void
.end method

.method protected stopOrientationSensors()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->stopOrientationSensors()V

    .line 403
    return-void
.end method

.method public unbindVoiceService()V
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/glass/input/InputDetectingActivity;->shouldAllowVoiceInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->unbindVoiceService()V

    .line 351
    :cond_0
    return-void
.end method

.method public updateVoiceConfigs()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/glass/input/InputDetectingActivity;->inputDetector:Lcom/google/glass/input/InputDetector;

    invoke-virtual {v0}, Lcom/google/glass/input/InputDetector;->updateVoiceConfigs()V

    .line 361
    return-void
.end method
