.class final Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1;
.super Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;
.source "VoiceMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newGoogleItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 158
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 2
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    .line 162
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    .line 163
    .local v0, activity:Landroid/app/Activity;
    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-interface {p1, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 164
    new-instance v1, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1$1;-><init>(Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$1;Landroid/app/Activity;ZLcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V

    invoke-interface {p1, p0, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method
