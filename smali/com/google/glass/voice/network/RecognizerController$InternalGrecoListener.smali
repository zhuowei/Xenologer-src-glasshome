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

.field private gwsHeader:Ljava/lang/StringBuilder;

.field private pinholePage:Lcom/google/glass/voice/network/PinholePage;

.field private recognitionCompleteReceived:Z

.field private final recognizedText:Lcom/google/android/speech/utils/RecognizedText;

.field private volatile sendingThroughGws:Z

.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;

.field private final voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceInputCallback;)V
    .locals 1
    .parameter
    .parameter "voiceInputCallback"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;-><init>()V

    .line 349
    new-instance v0, Lcom/google/android/speech/utils/RecognizedText;

    invoke-direct {v0}, Lcom/google/android/speech/utils/RecognizedText;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    .line 372
    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    .line 373
    return-void
.end method

.method static synthetic access$1002(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    return-object v0
.end method

.method private addGwsHeader(Ljava/lang/String;Z)V
    .locals 6
    .parameter "fragment"
    .parameter "complete"

    .prologue
    .line 610
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    if-nez v4, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    if-eqz p2, :cond_0

    .line 615
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, headers:[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v0, cookieList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 618
    aget-object v1, v2, v3

    .line 619
    .local v1, headerString:Ljava/lang/String;
    const-string v4, "Set-Cookie:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 620
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 623
    .end local v1           #headerString:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->cookies:Lcom/google/glass/voice/network/Cookies;
    invoke-static {v4}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v4

    new-instance v5, Lcom/google/glass/voice/network/SearchQueryBuilder;

    invoke-direct {v5}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/google/glass/voice/network/Cookies;->setCookiesFromSetCookieHeaders(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method private sendGwsRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 644
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;-><init>(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method

.method private useGwsServer()Z
    .locals 1

    .prologue
    .line 635
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
    .line 505
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v1

    .line 507
    .local v1, result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 508
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v0

    .line 509
    .local v0, hypothesis:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v2

    .line 514
    .end local v0           #hypothesis:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v1           #result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBeginningOfSpeech()V
    .locals 3

    .prologue
    .line 383
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v0

    const-string v1, "onBeginningOfSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showRecording()V

    .line 385
    return-void
.end method

.method public onDone()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v0

    const-string v1, "onDone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showDone()V

    .line 400
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v3, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v3}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 404
    :cond_1
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    .line 389
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v0

    const-string v1, "onEndOfSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showRecognizing()V

    .line 391
    return-void
.end method

.method public onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 5
    .parameter "exception"

    .prologue
    const/4 v4, 0x0

    .line 415
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v1}, Lcom/google/android/speech/utils/RecognizedText;->getStableForErrorReporting()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, recognizedText:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v1

    const-string v2, "onError [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, p1, v2, v3}, Lcom/google/glass/util/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechExceptionType(Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;
    invoke-static {v3, p1}, Lcom/google/glass/voice/network/RecognizerController;->access$600(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v3

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v2, v3, p1}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 419
    return-void
.end method

.method public onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 4
    .parameter "majelResponse"

    .prologue
    const/4 v0, 0x0

    .line 527
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v1

    const-string v2, "onMajelResult"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    iget-boolean v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 540
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    .line 548
    :goto_0
    return-void

    .line 544
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v1

    const-string v2, "No recognition result from server."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/glass/util/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v3, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v3}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto :goto_0
.end method

.method public onMediaDataResult([B)V
    .locals 5
    .parameter "audio"

    .prologue
    .line 519
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v0

    const-string v1, "onMediaDataResult (ignored) - audio length: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method public onNoSpeechDetected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v0

    const-string v1, "onNoSpeechDetected"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showNoSpeechDetected()V

    .line 411
    return-void
.end method

.method public onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 5
    .parameter "pinholeOutput"

    .prologue
    const/4 v2, 0x0

    .line 552
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->useGwsServer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v1

    const-string v3, "onPinholeResult"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    iget-boolean v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-eqz v1, :cond_5

    .line 571
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 572
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    if-nez v1, :cond_2

    .line 573
    new-instance v1, Lcom/google/glass/voice/network/PinholePage;

    invoke-direct {v1}, Lcom/google/glass/voice/network/PinholePage;-><init>()V

    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    .line 576
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/network/PinholePage;->update(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 577
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    const-string v3, "ans0"

    invoke-virtual {v1, v3}, Lcom/google/glass/voice/network/PinholePage;->getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    move-result-object v0

    .line 579
    .local v0, doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-eqz v0, :cond_3

    .line 580
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v1

    const-string v3, "Got a doc from the pinhole results."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/voice/network/VoiceInputCallback;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    .line 582
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    .line 586
    :cond_3
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderComplete()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->addGwsHeader(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0           #doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    :cond_4
    move v1, v2

    .line 571
    goto :goto_1

    .line 592
    :cond_5
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v1

    const-string v3, "No recognition result from server."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Lcom/google/glass/util/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v3, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v4, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v4}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v2, v3, v4}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto/16 :goto_0
.end method

.method public onReadyForSpeech(FF)V
    .locals 3
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 377
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v0

    const-string v1, "onReadyForSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showListening()V

    .line 379
    return-void
.end method

.method public onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 13
    .parameter "recognitionEvent"

    .prologue
    const/4 v12, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 427
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v7}, Lcom/google/android/speech/utils/RecognizedText;->hasCompletedRecognition()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 428
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v7

    const-string v8, "Result after completed recognition."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/util/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v7

    if-nez v7, :cond_5

    .line 437
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x4e20

    invoke-virtual {v7, v11, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 445
    const-string v5, ""

    .line 446
    .local v5, stablePrefix:Ljava/lang/String;
    const-string v6, ""

    .line 447
    .local v6, unstablePrefix:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v4

    .line 448
    .local v4, partial:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPartCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 449
    invoke-virtual {v4, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPart(I)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v3

    .line 450
    .local v3, part:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getStability()D

    move-result-wide v7

    const-wide v9, 0x3fe999999999999aL

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_2

    .line 451
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

    .line 448
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 453
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

    .line 457
    .end local v3           #part:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    :cond_3
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v7

    const-string v8, "onRecognitionResult"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$700()Ljava/lang/String;

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

    invoke-static {v12, v7, v8}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-nez v7, :cond_4

    .line 462
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Ljava/lang/String;

    move-result-object v5

    .line 464
    :cond_4
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_0

    .line 465
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v7, v5, v6}, Lcom/google/glass/voice/network/VoiceInputCallback;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 467
    .end local v2           #i:I
    .end local v4           #partial:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .end local v5           #stablePrefix:Ljava/lang/String;
    .end local v6           #unstablePrefix:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 469
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v7, p1}, Lcom/google/android/speech/utils/RecognizedText;->updateFinal(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    .line 473
    .local v0, combinedResult:Lcom/google/android/speech/alternates/CorrectableString;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v7

    const-string v8, "onRecognitionResult(combined)"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$700()Ljava/lang/String;

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

    invoke-static {v12, v7, v8}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 479
    iput-boolean v10, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    .line 480
    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    .line 482
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    .line 483
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    .line 484
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->useGwsServer()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 485
    invoke-virtual {v0}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;)V

    .line 492
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 493
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v9, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v10, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v10}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v8, v9, v10}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto/16 :goto_0

    .line 496
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

    invoke-virtual {v7, v11}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getConfidence()F

    move-result v1

    .line 499
    .local v1, confidence:F
    :goto_3
    iget-object v7, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v7, v0, v1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onRecognitionResult(Ljava/lang/CharSequence;F)V

    goto/16 :goto_0

    .line 496
    .end local v1           #confidence:F
    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 3
    .parameter "earsResponse"

    .prologue
    .line 600
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v0

    const-string v1, "Sound search result"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    .line 602
    return-void
.end method
