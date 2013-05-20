.class Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;
.super Lcom/google/glass/home/voice/menu/EntityMenuItem;
.source "EntityMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallEntityItem"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 3
    .parameter "entity"

    .prologue
    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/home/voice/menu/Requirement;

    const/4 v1, 0x0

    #calls: Lcom/google/glass/home/voice/menu/EntityMenuItem;->hasPhoneNumber(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;
    invoke-static {p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->access$000(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/home/voice/menu/Requirements;->IS_HEADSET_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/home/voice/menu/Requirements;->IS_PHONE_AVAILABLE:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/voice/menu/EntityMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;[Lcom/google/glass/home/voice/menu/Requirement;)V

    .line 104
    return-void
.end method


# virtual methods
.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 1
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 108
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    :goto_0
    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 109
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 110
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem$1;-><init>(Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 117
    return-void

    .line 108
    :cond_0
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0
.end method
