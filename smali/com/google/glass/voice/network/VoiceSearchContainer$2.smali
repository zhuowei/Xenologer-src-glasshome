.class Lcom/google/glass/voice/network/VoiceSearchContainer$2;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"

# interfaces
.implements Lcom/google/android/voicesearch/AudioRouter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioController()Lcom/google/android/speech/audio/AudioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$2;->this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setHeadsetEnabled(Z)V
    .locals 0
    .parameter "headsetEnabled"

    .prologue
    .line 283
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method
