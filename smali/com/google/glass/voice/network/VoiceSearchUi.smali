.class public interface abstract Lcom/google/glass/voice/network/VoiceSearchUi;
.super Ljava/lang/Object;
.source "VoiceSearchUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;,
        Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)V
.end method

.method public abstract onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
.end method

.method public abstract onRecognitionResult(Ljava/lang/CharSequence;F)V
.end method

.method public abstract setSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V
.end method

.method public abstract showDone()V
.end method

.method public abstract showListening()V
.end method

.method public abstract showNoSpeechDetected()V
.end method

.method public abstract showRecognizing()V
.end method

.method public abstract showRecording()V
.end method

.method public abstract updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method
