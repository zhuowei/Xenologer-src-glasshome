.class public Lcom/google/glass/home/search/SoundSearchActivity;
.super Lcom/google/glass/voice/BaseVoiceInputActivity;
.source "SoundSearchActivity.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method protected getInputTypeResId()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/google/glass/home/R$string;->sound_search_input_type:I

    return v0
.end method

.method protected getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/home/search/SoundSearchActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/google/glass/home/R$string;->sound_search_prompt:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x4

    return v0
.end method

.method protected onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 3
    .parameter "earsResponse"

    .prologue
    .line 53
    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/search/SoundSearchActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/home/search/SoundSearchResultsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "soundSearchResponse"

    invoke-virtual {p1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0}, Lcom/google/glass/home/search/SoundSearchActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/SoundSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/glass/home/search/SoundSearchActivity;->finish()V

    .line 64
    return-void
.end method
