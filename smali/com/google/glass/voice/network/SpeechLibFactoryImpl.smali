.class public Lcom/google/glass/voice/network/SpeechLibFactoryImpl;
.super Ljava/lang/Object;
.source "SpeechLibFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/SpeechLibFactory;


# static fields
.field private static final ENGINE_EMBEDDED:I = 0x1

.field private static final ENGINE_NETWORK:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildEngineSelector(Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/EngineSelector;
    .locals 1
    .parameter "engineParams"
    .parameter "sessionParams"

    .prologue
    .line 47
    new-instance v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;-><init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;)V

    return-object v0
.end method

.method public buildRecognitionEngineStore(Lcom/google/android/speech/params/RecognitionEngineParams;)Lcom/google/android/speech/RecognitionEngineStore;
    .locals 1
    .parameter "engineParams"

    .prologue
    .line 73
    new-instance v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;-><init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;Lcom/google/android/speech/params/RecognitionEngineParams;)V

    return-object v0
.end method

.method public buildResultsMerger(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/EngineSelector;Lcom/google/android/speech/callback/RecognitionEngineCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;
    .locals 1
    .parameter "sessionParams"
    .parameter "recognitionDispatcher"
    .parameter "engineSelector"
    .parameter "recognitionEngineCallback"
    .parameter "executor"
    .parameter "timeoutExecutor"

    .prologue
    .line 41
    new-instance v0, Lcom/google/glass/voice/network/ResultsMergerImpl;

    invoke-direct {v0, p2, p4}, Lcom/google/glass/voice/network/ResultsMergerImpl;-><init>(Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V

    return-object v0
.end method

.method public buildSpeechLibLogger()Lcom/google/android/speech/logger/SpeechLibLogger;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$3;-><init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;)V

    return-object v0
.end method
