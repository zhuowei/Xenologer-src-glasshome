.class public Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;
.super Ljava/lang/Object;
.source "BasicVoiceMenuEnvironment.java"

# interfaces
.implements Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# instance fields
.field private final glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;


# direct methods
.method public constructor <init>(Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 0
    .parameter "glassVoiceActivity"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    .line 24
    return-void
.end method


# virtual methods
.method public getContext()Lcom/google/glass/app/GlassActivity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v0

    return v0
.end method

.method public logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassVoiceActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 59
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)V
    .locals 1
    .parameter "soundId"
    .parameter "listener"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassVoiceActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)I

    .line 64
    return-void
.end method

.method public preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 1
    .parameter "voiceConfig"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 39
    return-void
.end method

.method public refeedLastVoiceCommand()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassVoiceActivity;->refeedLastVoiceCommand()V

    .line 44
    return-void
.end method

.method public selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 71
    if-eqz p2, :cond_0

    .line 72
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 74
    :cond_0
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "item"
    .parameter "postAnimationRunnable"

    .prologue
    .line 88
    if-eqz p2, :cond_0

    .line 89
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 91
    :cond_0
    return-void
.end method

.method public setAnimateOnNextPause(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 67
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V
    .locals 1
    .parameter "voiceConfig"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 34
    return-void
.end method

.method public showError(Lcom/google/glass/app/GlassError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {p1, v0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 96
    return-void
.end method

.method public showPeopleList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 1
    .parameter "menuItem"
    .parameter "type"
    .parameter "command"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/google/glass/home/voice/EntityListActivity;->startEntityListActivity(Landroid/content/Context;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V

    .line 79
    return-void
.end method

.method public showProgressBar()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public showShareTargetList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V
    .locals 1
    .parameter "menuItem"
    .parameter "commandType"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/glass/home/voice/EntityListActivity;->startEntityListActivity(Lcom/google/glass/app/GlassActivity;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V

    .line 84
    return-void
.end method
