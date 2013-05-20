.class public interface abstract Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;
.super Ljava/lang/Object;
.source "VoiceMenuEnvironment.java"


# virtual methods
.method public abstract getContext()Lcom/google/glass/app/GlassActivity;
.end method

.method public abstract getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
.end method

.method public abstract playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
.end method

.method public abstract playSoundForPendingOpenEndedInput(Z)V
.end method

.method public abstract preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
.end method

.method public abstract refeedLastVoiceCommand()V
.end method

.method public abstract selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
.end method

.method public abstract selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
.end method

.method public abstract setAnimateOnNextPause(Z)V
.end method

.method public abstract setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
.end method

.method public abstract showError(Lcom/google/glass/app/GlassError;)V
.end method

.method public abstract showProgressBar()V
.end method
