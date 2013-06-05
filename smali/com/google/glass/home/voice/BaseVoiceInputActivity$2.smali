.class Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;
.super Ljava/lang/Object;
.source "BaseVoiceInputActivity.java"

# interfaces
.implements Lcom/google/glass/voice/network/VoiceSearchUi;


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
    .line 261
    iput-object p1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 323
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 313
    return-void
.end method

.method public onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 307
    return-void
.end method

.method public onRecognitionResult(Ljava/lang/CharSequence;F)V
    .locals 3
    .parameter "text"
    .parameter "confidence"

    .prologue
    .line 300
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 301
    .local v0, args:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 302
    return-void
.end method

.method public onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 318
    return-void
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 290
    return-void
.end method

.method public showDone()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 285
    return-void
.end method

.method public showListening()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 265
    return-void
.end method

.method public showNoSpeechDetected()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    return-void
.end method

.method public showRecognizing()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 275
    return-void
.end method

.method public showRecording()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    .line 294
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 295
    .local v0, args:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 296
    return-void
.end method
