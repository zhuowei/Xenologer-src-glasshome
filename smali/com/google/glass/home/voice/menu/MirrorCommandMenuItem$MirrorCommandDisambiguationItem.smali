.class Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$MirrorCommandDisambiguationItem;
.super Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;
.source "MirrorCommandMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MirrorCommandDisambiguationItem"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter "commandType"
    .parameter "shareTarget"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;)V

    .line 38
    return-void
.end method

.method private getShareTarget()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$MirrorCommandDisambiguationItem;->shareTargets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method


# virtual methods
.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$MirrorCommandDisambiguationItem;->getShareTarget()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 2
    .parameter "voiceCommand"

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getSemanticTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$MirrorCommandDisambiguationItem;->getShareTarget()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 2
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$MirrorCommandDisambiguationItem;->getLiteral()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$MirrorCommandDisambiguationItem;->getShareTarget()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    #calls: Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->getStartMirrorInputRunnable(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Runnable;
    invoke-static {p1, v0, p2, v1}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->access$000(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method
