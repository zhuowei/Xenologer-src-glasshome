.class Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;
.super Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;
.source "RecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/RecognizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalGrecoListener"
.end annotation


# instance fields
.field private combinedRecognitionResult:Ljava/lang/CharSequence;

.field private recognitionCompleteReceived:Z

.field private final recognizedText:Lcom/google/android/speech/utils/RecognizedText;

.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;

.field private final voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceSearchUi;)V
    .locals 1
    .parameter
    .parameter "voiceSearchUi"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;-><init>()V

    .line 218
    new-instance v0, Lcom/google/android/speech/utils/RecognizedText;

    invoke-direct {v0}, Lcom/google/android/speech/utils/RecognizedText;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    .line 232
    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    .line 233
    return-void
.end method


# virtual methods
.method public getRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Ljava/lang/String;
    .locals 3
    .parameter "recognitionEvent"

    .prologue
    .line 356
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v1

    .line 358
    .local v1, result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 359
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v0

    .line 360
    .local v0, hypothesis:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v2

    .line 365
    .end local v0           #hypothesis:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v1           #result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->showRecording()V

    .line 245
    return-void
.end method

.method public onDone()V
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->showDone()V

    .line 258
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v2, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    new-instance v3, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v3}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;
    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi;->onError(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)V

    .line 262
    :cond_0
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->showRecognizing()V

    .line 251
    return-void
.end method

.method public onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v1}, Lcom/google/android/speech/utils/RecognizedText;->getStableForErrorReporting()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, recognizedText:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechExceptionType(Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;
    invoke-static {v3, p1}, Lcom/google/glass/voice/network/RecognizerController;->access$600(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    move-result-object v3

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;
    invoke-static {v2, v3, p1}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/voice/network/VoiceSearchUi;->onError(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)V

    .line 277
    return-void
.end method

.method public onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 4
    .parameter "majelResponse"

    .prologue
    const/4 v0, 0x0

    .line 378
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onMajelResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-boolean v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 391
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceSearchUi;->onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    .line 399
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No recognition result from server."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v2, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    new-instance v3, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v3}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;
    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi;->onError(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)V

    goto :goto_0
.end method

.method public onMediaDataResult([B)V
    .locals 3
    .parameter "audio"

    .prologue
    .line 370
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaDataResult (ignored) - audio length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method public onNoSpeechDetected()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNoSpeechDetected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->showNoSpeechDetected()V

    .line 269
    return-void
.end method

.method public onReadyForSpeech(FF)V
    .locals 2
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 237
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->showListening()V

    .line 239
    return-void
.end method

.method public onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 13
    .parameter "recognitionEvent"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 285
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v7}, Lcom/google/android/speech/utils/RecognizedText;->hasCompletedRecognition()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 286
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Result after completed recognition."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v7

    if-nez v7, :cond_5

    .line 295
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x4e20

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 303
    const-string v5, ""

    .line 304
    .local v5, stablePrefix:Ljava/lang/String;
    const-string v6, ""

    .line 305
    .local v6, unstablePrefix:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v4

    .line 306
    .local v4, partial:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPartCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 307
    invoke-virtual {v4, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPart(I)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v3

    .line 308
    .local v3, part:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getStability()D

    move-result-wide v7

    const-wide v9, 0x3fe999999999999aL

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_2

    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 311
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 315
    .end local v3           #part:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    :cond_3
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRecognitionResult("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v7, v8}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-nez v7, :cond_4

    .line 319
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Ljava/lang/String;

    move-result-object v5

    .line 321
    :cond_4
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_0

    .line 322
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v7, v5, v6}, Lcom/google/glass/voice/network/VoiceSearchUi;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 324
    .end local v2           #i:I
    .end local v4           #partial:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .end local v5           #stablePrefix:Ljava/lang/String;
    .end local v6           #unstablePrefix:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 326
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v7, p1}, Lcom/google/android/speech/utils/RecognizedText;->updateFinal(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    .line 330
    .local v0, combinedResult:Lcom/google/android/speech/alternates/CorrectableString;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "onRecognitionResult(combined)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRecognitionResult(combined="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v7, v8}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    iput-boolean v11, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    .line 337
    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 344
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v9, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    new-instance v10, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v10}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;
    invoke-static {v8, v9, v10}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/glass/voice/network/VoiceSearchUi;->onError(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)V

    goto/16 :goto_0

    .line 347
    :cond_6
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasCombinedResult()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getConfidence()F

    move-result v1

    .line 350
    .local v1, confidence:F
    :goto_3
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v7, v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi;->onRecognitionResult(Ljava/lang/CharSequence;F)V

    goto/16 :goto_0

    .line 347
    .end local v1           #confidence:F
    :cond_7
    const/4 v1, 0x0

    goto :goto_3
.end method
