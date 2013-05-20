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
    .line 235
    iput-object p1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method

.method public onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 281
    return-void
.end method

.method public onRecognitionResult(Ljava/lang/CharSequence;F)V
    .locals 3
    .parameter "text"
    .parameter "confidence"

    .prologue
    .line 274
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 275
    .local v0, args:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 276
    return-void
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    return-void
.end method

.method public showDone()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    return-void
.end method

.method public showListening()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method

.method public showNoSpeechDetected()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 254
    return-void
.end method

.method public showRecognizing()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 249
    return-void
.end method

.method public showRecording()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    .line 268
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 269
    .local v0, args:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void
.end method
