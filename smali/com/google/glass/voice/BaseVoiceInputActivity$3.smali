.class Lcom/google/glass/voice/BaseVoiceInputActivity$3;
.super Ljava/lang/Object;
.source "BaseVoiceInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/BaseVoiceInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 348
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    const/4 v1, 0x7

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->logSearchStarted(I)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1400(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V

    .line 350
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->reset()V
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1500(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    .line 351
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->isRetry:Z
    invoke-static {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1602(Lcom/google/glass/voice/BaseVoiceInputActivity;Z)Z

    .line 352
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 353
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 354
    return-void
.end method
