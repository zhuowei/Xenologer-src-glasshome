.class public interface abstract Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;
.super Ljava/lang/Object;
.source "VoiceMenuEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;,
        Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;
    }
.end annotation


# virtual methods
.method public abstract getContext()Lcom/google/glass/app/GlassActivity;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
.end method

.method public abstract playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
.end method

.method public abstract playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)V
.end method

.method public abstract preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
.end method

.method public abstract refeedLastVoiceCommand()V
.end method

.method public abstract selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
.end method

.method public abstract selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
.end method

.method public abstract setAnimateOnNextPause(Z)V
.end method

.method public abstract setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
.end method

.method public abstract showError(Lcom/google/glass/app/GlassError;)V
.end method

.method public abstract showPeopleList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
.end method

.method public abstract showProgressBar()V
.end method
