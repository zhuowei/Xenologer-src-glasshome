.class Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;
.super Lcom/google/glass/home/voice/menu/EntityMenuItem;
.source "EntityMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShareTargetMenuItem"
.end annotation


# instance fields
.field private final timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 1
    .parameter "entity"
    .parameter "timelineItem"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;)V

    .line 256
    iput-object p2, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 257
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;->setCustomTriggerSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 258
    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method


# virtual methods
.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {p1, v0}, Lcom/google/glass/voice/EntityUtils;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 1
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 267
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 268
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;-><init>(Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method
