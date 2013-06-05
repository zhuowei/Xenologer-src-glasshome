.class public abstract Lcom/google/glass/home/voice/menu/VoiceMenuItem;
.super Ljava/lang/Object;
.source "VoiceMenuItem.java"


# instance fields
.field private customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

.field private hasSubMenu:Z

.field private hasTriggered:Z

.field protected final requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/menu/Requirement;",
            ">;"
        }
    .end annotation
.end field

.field private voicePendingAfterTrigger:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;-><init>(Ljava/util/List;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/menu/Requirement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, requirements:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/Requirement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->hasTriggered:Z

    .line 27
    return-void
.end method

.method private playTriggerSounds(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V
    .locals 3
    .parameter "environment"
    .parameter "spoken"
    .parameter "voiceInterface"

    .prologue
    .line 87
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 89
    .local v0, sounds:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/sound/SoundManager$SoundId;>;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 91
    :cond_0
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->voicePendingAfterTrigger:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->hasSubMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->hasSubMenu:Z

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 97
    :cond_2
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_3
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 105
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager$SoundId;

    new-instance v2, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;-><init>(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V

    invoke-interface {p1, v1, v2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)V

    .line 118
    :cond_5
    return-void
.end method


# virtual methods
.method public getContextIconId()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getContextLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLabel(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public isEnabled(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z
    .locals 3
    .parameter "environment"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/voice/menu/Requirement;

    .line 53
    .local v1, requirement:Lcom/google/glass/home/voice/menu/Requirement;
    invoke-interface {v1, p1}, Lcom/google/glass/home/voice/menu/Requirement;->isSatisfied(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const/4 v2, 0x0

    .line 58
    .end local v1           #requirement:Lcom/google/glass/home/voice/menu/Requirement;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public abstract matches(Lcom/google/glass/voice/VoiceCommand;)Z
.end method

.method protected abstract onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
.end method

.method public setCustomTriggerSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 0
    .parameter "customTriggerSound"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 40
    return-object p0
.end method

.method public setHasSubMenu(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 0
    .parameter "hasSubMenu"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->hasSubMenu:Z

    .line 45
    return-object p0
.end method

.method public setVoicePendingAfterTrigger(Z)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .locals 0
    .parameter "voicePendingAfterTrigger"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->voicePendingAfterTrigger:Z

    .line 35
    return-object p0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public trigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V
    .locals 3
    .parameter "environment"
    .parameter "spoken"
    .parameter "voiceInterface"

    .prologue
    .line 69
    iget-boolean v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->hasTriggered:Z

    if-eqz v2, :cond_0

    .line 83
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/voice/menu/Requirement;

    .line 73
    .local v1, requirement:Lcom/google/glass/home/voice/menu/Requirement;
    invoke-interface {v1, p1}, Lcom/google/glass/home/voice/menu/Requirement;->isSatisfied(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    invoke-interface {v1, p1}, Lcom/google/glass/home/voice/menu/Requirement;->getError(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->showError(Lcom/google/glass/app/GlassError;)V

    goto :goto_0

    .line 79
    .end local v1           #requirement:Lcom/google/glass/home/voice/menu/Requirement;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->hasTriggered:Z

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->playTriggerSounds(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    goto :goto_0
.end method
