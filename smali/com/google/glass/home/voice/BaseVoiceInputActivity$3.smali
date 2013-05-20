.class Lcom/google/glass/home/voice/BaseVoiceInputActivity$3;
.super Ljava/lang/Object;
.source "BaseVoiceInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/BaseVoiceInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 294
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->reset()V
    invoke-static {v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$1300(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    .line 295
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 296
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V

    .line 297
    return-void
.end method
