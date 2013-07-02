.class Lcom/google/glass/voice/BaseVoiceInputActivity$2;
.super Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;
.source "BaseVoiceInputActivity.java"


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
    .line 262
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/voiceInputCallback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 335
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 319
    return-void
.end method

.method public onMajelResult([B)V
    .locals 4
    .parameter "responseBytes"

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-static {p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->parseFrom([B)Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onRecognitionResult(Ljava/lang/CharSequence;F)V
    .locals 3
    .parameter "text"
    .parameter "confidence"

    .prologue
    .line 301
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 302
    .local v0, args:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 303
    return-void
.end method

.method public onSoundSearchResult([B)V
    .locals 4
    .parameter "responseBytes"

    .prologue
    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {p1}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/ISpeechLevelSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 291
    return-void
.end method

.method public showDone()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method

.method public showListening()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 266
    return-void
.end method

.method public showNoSpeechDetected()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 281
    return-void
.end method

.method public showRecognizing()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 276
    return-void
.end method

.method public showRecording()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v0, v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 271
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    .line 295
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 296
    .local v0, args:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 297
    return-void
.end method
