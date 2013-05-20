.class Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;
.super Lcom/google/glass/home/voice/menu/EntityMenuItem;
.source "EntityMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendEmailMessageItem"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 3
    .parameter "entity"

    .prologue
    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/home/voice/menu/Requirement;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/home/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    #calls: Lcom/google/glass/home/voice/menu/EntityMenuItem;->hasEmailAddress(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;
    invoke-static {p1}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->access$100(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/Requirement;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/voice/menu/EntityMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/Entity;[Lcom/google/glass/home/voice/menu/Requirement;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 1
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 127
    invoke-interface {p1, p2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->playSoundForPendingOpenEndedInput(Z)V

    .line 128
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 129
    new-instance v0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem$1;-><init>(Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method
