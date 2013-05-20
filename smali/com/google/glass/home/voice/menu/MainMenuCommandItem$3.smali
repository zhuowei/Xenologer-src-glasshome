.class final Lcom/google/glass/home/voice/menu/MainMenuCommandItem$3;
.super Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
.source "MainMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newRecordVideoItem()Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V
    .locals 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 187
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;Lcom/google/glass/home/voice/menu/MainMenuCommandItem$1;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 3
    .parameter "environment"
    .parameter "spoken"

    .prologue
    const/4 v1, 0x1

    .line 190
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    .line 191
    if-eqz p2, :cond_0

    .line 194
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 201
    :goto_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 203
    new-instance v2, Lcom/google/glass/camera/CameraHelper;

    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/google/glass/camera/CameraHelper;->recordVideo(ZZ)V

    .line 206
    return-void

    .line 196
    :cond_0
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
