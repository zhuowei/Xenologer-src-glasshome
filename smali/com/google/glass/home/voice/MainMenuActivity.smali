.class public abstract Lcom/google/glass/home/voice/MainMenuActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "MainMenuActivity.java"

# interfaces
.implements Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lcom/google/glass/app/GlassActivity;
    .locals 0

    .prologue
    .line 33
    return-object p0
.end method

.method public getMainMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->getMainMenuItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

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
    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 39
    return-void
.end method

.method public playSoundForPendingOpenEndedInput(Z)V
    .locals 3
    .parameter "spoken"

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    new-instance v2, Lcom/google/glass/home/voice/MainMenuActivity$1;

    invoke-direct {v2, p0}, Lcom/google/glass/home/voice/MainMenuActivity$1;-><init>(Lcom/google/glass/home/voice/MainMenuActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)I

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0
.end method
