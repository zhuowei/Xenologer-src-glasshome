.class final Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8;
.super Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
.source "MainMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newAdditionalCommandItem(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 1
    .parameter "x0"

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;Lcom/google/glass/home/voice/menu/MainMenuCommandItem$1;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 1
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 355
    new-instance v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8$1;-><init>(Lcom/google/glass/home/voice/menu/MainMenuCommandItem$8;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method
