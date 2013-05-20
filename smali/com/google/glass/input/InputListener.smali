.class public interface abstract Lcom/google/glass/input/InputListener;
.super Ljava/lang/Object;
.source "InputListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/InputListener$DismissAction;
    }
.end annotation


# virtual methods
.method public abstract onAudioData([BII)Z
.end method

.method public abstract onCameraButtonPressed()Z
.end method

.method public abstract onConfirm()Z
.end method

.method public abstract onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
.end method

.method public abstract onDoubleTap()Z
.end method

.method public abstract onFingerCountChanged(IZ)Z
.end method

.method public abstract onPrepareSwipe(IFFFFII)Z
.end method

.method public abstract onResampledAudioData([BII)Z
.end method

.method public abstract onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
.end method

.method public abstract onSwipeCanceled(I)Z
.end method

.method public abstract onVerticalHeadScroll(FF)Z
.end method

.method public abstract onVoiceAmplitudeChanged(D)Z
.end method

.method public abstract onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
.end method

.method public abstract onVoiceServiceConnected()V
.end method

.method public abstract onVoiceServiceDisconnected()V
.end method
