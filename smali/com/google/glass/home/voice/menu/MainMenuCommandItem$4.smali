.class final Lcom/google/glass/home/voice/menu/MainMenuCommandItem$4;
.super Lcom/google/glass/home/voice/menu/MainMenuCommandItem;
.source "MainMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->newNavigationItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
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
    .line 200
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
    .locals 1
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    .line 204
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NAV_CONTAMINATE_FIX:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->refeedLastVoiceCommand()V

    .line 207
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NAVIGATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-interface {p1, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 208
    new-instance v0, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$4$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/home/voice/menu/MainMenuCommandItem$4$1;-><init>(Lcom/google/glass/home/voice/menu/MainMenuCommandItem$4;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    invoke-interface {p1, p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method
