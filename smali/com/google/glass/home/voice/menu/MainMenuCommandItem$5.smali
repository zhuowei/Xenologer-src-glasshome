.class final Lcom/google/glass/home/voice/menu/MainMenuCommandItem$5;
.super Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
.source "MainMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newSendMessageItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
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
    .line 231
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
    .locals 2
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    .line 235
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->CONTACTS:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 237
    sget-object v0, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;->GENERAL:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;

    sget-object v1, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->MESSAGE:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    invoke-interface {p1, p0, v0, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->showPeopleList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V

    .line 238
    return-void
.end method
