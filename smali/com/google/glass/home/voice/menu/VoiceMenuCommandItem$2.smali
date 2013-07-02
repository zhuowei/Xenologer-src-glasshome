.class final Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$2;
.super Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;
.source "VoiceMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newTakePhotoItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;
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
    .line 183
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/home/voice/menu/Requirement;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 5
    .parameter "environment"
    .parameter "spoken"

    .prologue
    const/4 v3, 0x1

    .line 186
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    .line 187
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    .line 189
    .local v0, context:Landroid/content/Context;
    sget-object v2, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-interface {p1, v2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 190
    new-instance v1, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v1, v0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    .line 191
    .local v1, powerHelper:Lcom/google/glass/util/PowerHelper;
    new-instance v4, Lcom/google/glass/camera/CameraHelper;

    invoke-direct {v4, v0}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2, v3, p2}, Lcom/google/glass/camera/CameraHelper;->takePicture(ZZZ)V

    .line 195
    return-void

    .line 191
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
