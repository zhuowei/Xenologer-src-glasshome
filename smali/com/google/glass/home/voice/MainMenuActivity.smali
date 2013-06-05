.class public abstract Lcom/google/glass/home/voice/MainMenuActivity;
.super Lcom/google/glass/app/GlassVoiceActivity;
.source "MainMenuActivity.java"

# interfaces
.implements Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lcom/google/glass/app/GlassActivity;
    .locals 0

    .prologue
    .line 35
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
    .line 24
    invoke-static {p0}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->getMainMenuItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v0

    return v0
.end method

.method protected isInGuestMode()Z
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v0

    return v0
.end method

.method public logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;)V

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 41
    return-void
.end method

.method public playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)V
    .locals 1
    .parameter "soundId"
    .parameter "listener"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)I

    .line 46
    return-void
.end method
