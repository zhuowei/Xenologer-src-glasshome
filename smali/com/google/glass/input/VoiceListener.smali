.class public interface abstract Lcom/google/glass/input/VoiceListener;
.super Ljava/lang/Object;
.source "VoiceListener.java"


# virtual methods
.method public abstract onAudioData([BII)Z
.end method

.method public abstract onResampledAudioData([BII)Z
.end method

.method public abstract onVoiceAmplitudeChanged(D)Z
.end method

.method public abstract onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
.end method

.method public abstract onVoiceServiceConnected()V
.end method

.method public abstract onVoiceServiceDisconnected()V
.end method
