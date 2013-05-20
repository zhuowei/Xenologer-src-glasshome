.class final Lcom/google/glass/home/voice/menu/MainMenuCommandItem$2;
.super Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
.source "MainMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newTakePhotoItem()Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
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
    .line 161
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
    .locals 5
    .parameter "environment"
    .parameter "spoken"

    .prologue
    const/4 v3, 0x1

    .line 164
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    .line 165
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    .line 166
    .local v0, context:Landroid/content/Context;
    if-eqz p2, :cond_0

    .line 169
    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {p1, v2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 174
    :goto_0
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {p1, v2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 175
    new-instance v1, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v1, v0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    .line 176
    .local v1, powerHelper:Lcom/google/glass/util/PowerHelper;
    new-instance v4, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v4, v0}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2, v3, p2}, Lcom/google/glass/camera/CameraHelper;->takePicture(ZZZ)V

    .line 180
    return-void

    .line 171
    .end local v1           #powerHelper:Lcom/google/glass/util/PowerHelper;
    :cond_0
    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {p1, v2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0

    .line 176
    .restart local v1       #powerHelper:Lcom/google/glass/util/PowerHelper;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
