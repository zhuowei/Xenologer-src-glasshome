.class final Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$12;
.super Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;
.source "VoiceMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newIgnoreCallItem(Landroid/content/Context;Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/home/voice/menu/Requirement;Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 366
    iput-object p4, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$12;->val$listener:Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/home/voice/menu/Requirement;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 2
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 369
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    .line 370
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 371
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 372
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$12;->val$listener:Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->REJECT_CALL:Lcom/google/glass/voice/VoiceCommand;

    invoke-interface {v0, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;->onVoiceMenuCommandItemTriggered(Lcom/google/glass/voice/VoiceCommand;)V

    .line 373
    return-void
.end method
