.class final Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$10;
.super Lcom/google/glass/home/voice/menu/ShareMenuItem;
.source "VoiceMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newShareItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/voice/menu/ShareMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;ILcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/glass/home/voice/menu/Requirement;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 334
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/home/voice/menu/ShareMenuItem;-><init>(Lcom/google/glass/voice/VoiceCommand;ILcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/glass/home/voice/menu/Requirement;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 2
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/menu/ShareMenuItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    .line 338
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 339
    sget-object v0, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;->PHOTO:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;

    sget-object v1, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->SHARE:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    invoke-interface {p1, p0, v0, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->showPeopleList(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)V

    .line 340
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "20"

    invoke-interface {p1, v0, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 342
    return-void
.end method
