.class public Lcom/google/glass/home/voice/MainMenuEntityItemView;
.super Lcom/google/glass/entity/EntityItemView;
.source "MainMenuEntityItemView.java"


# instance fields
.field private commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

.field private entityCommand:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

.field private environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/glass/entity/EntityItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0}, Lcom/google/glass/entity/EntityItemView;->onConfirm()Z

    .line 57
    iget-object v0, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->showProgressBar()V

    .line 58
    iget-object v0, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->entityCommand:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->entityCommand:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    invoke-static {v0, v1}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->newContactMenuItem(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)Lcom/google/glass/home/voice/menu/EntityMenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->trigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V

    .line 69
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->newEntityMenuItem(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;->trigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V

    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No entity or mirror command defined!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCommandType(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V
    .locals 1
    .parameter "commandType"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->entityCommand:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 48
    return-void
.end method

.method public setEntityCommand(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->entityCommand:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    .line 39
    return-void
.end method

.method public setVoiceMenuEnvironment(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V
    .locals 0
    .parameter "environment"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    .line 30
    return-void
.end method
