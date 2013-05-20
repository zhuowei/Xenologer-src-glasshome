.class public interface abstract Lcom/google/glass/voice/VoiceServiceListener;
.super Ljava/lang/Object;
.source "VoiceServiceListener.java"


# virtual methods
.method public abstract onAudioData([BII)V
.end method

.method public abstract onResampledAudioData([BII)V
.end method

.method public abstract onVoiceAmplitudeChanged(D)V
.end method

.method public abstract onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)V
.end method

.method public abstract onVoiceServiceConnected()V
.end method

.method public abstract onVoiceServiceDisconnected()V
.end method
