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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;
    }
.end annotation


# instance fields
.field private combinedRecognitionResult:Ljava/lang/CharSequence;

.field private volatile parsingPinholeResults:Z

.field private processingThread:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;

.field private recognitionCompleteReceived:Z

.field private final recognizedText:Lcom/google/android/speech/utils/RecognizedText;

.field private volatile sendingThroughGws:Z

.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;

.field private final voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceSearchUi;)V
    .locals 2
    .parameter
    .parameter "voiceSearchUi"

    .prologue
    const/4 v1, 0x0

    .line 393
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;-><init>()V

    .line 373
    new-instance v0, Lcom/google/android/speech/utils/RecognizedText;

    invoke-direct {v0}, Lcom/google/android/speech/utils/RecognizedText;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    .line 387
    iput-boolean v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->parsingPinholeResults:Z

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->processingThread:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;

    .line 391
    iput-boolean v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 394
    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    .line 395
    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->parsingPinholeResults:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->parsingPinholeResults:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceSearchUi;
    .locals 1
    .parameter "x0"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    return p1
.end method

.method private sendGwsRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 634
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;-><init>(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 687
    return-void
.end method

.method private useGwsServer()Z
    .locals 1

    .prologue
    .line 625
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SEARCH_GWS_FLOW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SPECIAL_GWS_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Ljava/lang/String;
    .locals 3
    .parameter "recognitionEvent"

    .prologue
    .line 527
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v1

    .line 529
    .local v1, result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 530
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v0

    .line 531
    .local v0, hypothesis:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v2

    .line 536
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
    .line 405
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->showRecording()V

    .line 407
    return-void
.end method

.method public onDone()V
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDone, still parsing? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->parsingPinholeResults:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    if-nez v0, :cond_0

    .line 420
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->parsingPinholeResults:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->processingThread:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->processingThread:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->onDone()V

    .line 426
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v3, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v3}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 430
    :cond_1
    return-void

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->showDone()V

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 411
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->showRecognizing()V

    .line 413
    return-void
.end method

.method public onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 441
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v1}, Lcom/google/android/speech/utils/RecognizedText;->getStableForErrorReporting()Ljava/lang/String;

    move-result-object v0

    .line 443
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

    .line 444
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechExceptionType(Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;
    invoke-static {v3, p1}, Lcom/google/glass/voice/network/RecognizerController;->access$600(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v3

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v2, v3, p1}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/voice/network/VoiceSearchUi;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 445
    return-void
.end method

.method public onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 4
    .parameter "majelResponse"

    .prologue
    const/4 v0, 0x0

    .line 549
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onMajelResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-boolean v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 562
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceSearchUi;->onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    .line 570
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No recognition result from server."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v3, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v3}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto :goto_0
.end method

.method public onMediaDataResult([B)V
    .locals 3
    .parameter "audio"

    .prologue
    .line 541
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

    .line 545
    return-void
.end method

.method public onNoSpeechDetected()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNoSpeechDetected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->showNoSpeechDetected()V

    .line 437
    return-void
.end method

.method public onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 4
    .parameter "pinholeOutput"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 574
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 576
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->useGwsServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 579
    :cond_0
    iput-boolean v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->parsingPinholeResults:Z

    .line 580
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onPinholeResult"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-eqz v0, :cond_3

    .line 594
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 596
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->processingThread:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;

    if-nez v0, :cond_2

    .line 597
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;-><init>(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Lcom/google/glass/voice/network/RecognizerController$1;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->processingThread:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;

    .line 598
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->processingThread:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;

    new-array v1, v1, [Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 594
    goto :goto_1

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->processingThread:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->addPinholeOutput(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    goto :goto_0

    .line 605
    :cond_3
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No recognition result from server."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v3, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v3}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto :goto_0
.end method

.method public onReadyForSpeech(FF)V
    .locals 2
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 399
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->showListening()V

    .line 401
    return-void
.end method

.method public onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 13
    .parameter "recognitionEvent"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 453
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v7}, Lcom/google/android/speech/utils/RecognizedText;->hasCompletedRecognition()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 454
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Result after completed recognition."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v7

    if-nez v7, :cond_5

    .line 463
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x4e20

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 471
    const-string v5, ""

    .line 472
    .local v5, stablePrefix:Ljava/lang/String;
    const-string v6, ""

    .line 473
    .local v6, unstablePrefix:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v4

    .line 474
    .local v4, partial:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPartCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 475
    invoke-virtual {v4, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPart(I)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v3

    .line 476
    .local v3, part:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getStability()D

    move-result-wide v7

    const-wide v9, 0x3fe999999999999aL

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_2

    .line 477
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

    .line 474
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 479
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

    .line 483
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

    .line 485
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-nez v7, :cond_4

    .line 487
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Ljava/lang/String;

    move-result-object v5

    .line 489
    :cond_4
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_0

    .line 490
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v7, v5, v6}, Lcom/google/glass/voice/network/VoiceSearchUi;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 492
    .end local v2           #i:I
    .end local v4           #partial:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .end local v5           #stablePrefix:Ljava/lang/String;
    .end local v6           #unstablePrefix:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 494
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v7, p1}, Lcom/google/android/speech/utils/RecognizedText;->updateFinal(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    .line 498
    .local v0, combinedResult:Lcom/google/android/speech/alternates/CorrectableString;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "onRecognitionResult(combined)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
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

    .line 504
    iput-boolean v11, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    .line 505
    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    .line 506
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->useGwsServer()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 507
    invoke-virtual {v0}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;)V

    .line 514
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 515
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v9, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v10, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v10}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v8, v9, v10}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/glass/voice/network/VoiceSearchUi;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto/16 :goto_0

    .line 518
    :cond_7
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasCombinedResult()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getConfidence()F

    move-result v1

    .line 521
    .local v1, confidence:F
    :goto_3
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v7, v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi;->onRecognitionResult(Ljava/lang/CharSequence;F)V

    goto/16 :goto_0

    .line 518
    .end local v1           #confidence:F
    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 2
    .parameter "earsResponse"

    .prologue
    .line 613
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sound search result"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceSearchUi;->onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    .line 615
    return-void
.end method
