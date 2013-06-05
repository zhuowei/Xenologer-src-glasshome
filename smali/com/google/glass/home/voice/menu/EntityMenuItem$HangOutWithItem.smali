.class Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;
.super Lcom/google/glass/home/voice/menu/EntityMenuItem;
.source "EntityMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HangOutWithItem"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    .line 234
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;->setCustomTriggerSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 235
    return-void
.end method


# virtual methods
.method protected onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 1
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 239
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 240
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem$1;-><init>(Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method
