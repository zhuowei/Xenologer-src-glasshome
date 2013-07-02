.class public Lcom/google/glass/home/voice/VoiceMainMenuActivity;
.super Lcom/google/glass/home/voice/VoiceMenuActivity;
.source "VoiceMainMenuActivity.java"

# interfaces
.implements Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method public getPrimaryMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p0}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->getMainMenuItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
