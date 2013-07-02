.class public Lcom/google/glass/util/TtsHelper;
.super Ljava/lang/Object;
.source "TtsHelper.java"


# static fields
.field private static final MAX_TTS_WAKE_LOCK_HOLD_MS:J = 0x1d4c0L

.field private static final MSG_SPEAK_TEXT:I = 0x0

.field private static final MSG_STOP_SPEAKING:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final handler:Landroid/os/Handler;

.field private lastTextSynthesized:Ljava/lang/String;

.field private pendingTextToSynthesize:Ljava/lang/String;

.field private pendingTtsListener:Landroid/speech/tts/UtteranceProgressListener;

.field private textToSpeech:Landroid/speech/tts/TextToSpeech;

.field private textToSpeechInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/glass/util/TtsHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/TtsHelper$1;-><init>(Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->handler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->context:Landroid/content/Context;

    .line 88
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    const-string v1, "Initializing TextToSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/google/glass/util/TtsHelper$2;

    invoke-direct {v1, p0}, Lcom/google/glass/util/TtsHelper$2;-><init>(Lcom/google/glass/util/TtsHelper;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 103
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/TtsHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/util/TtsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/util/TtsHelper;Landroid/speech/tts/UtteranceProgressListener;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->pendingTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/util/TtsHelper;Landroid/speech/tts/UtteranceProgressListener;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->pendingTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/glass/util/TtsHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/glass/util/TtsHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public clearLastTextSynthesized()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public getLastTextSynthesized()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    return-object v0
.end method

.method public isSpeaking()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public speakText(Ljava/lang/String;)V
    .locals 1
    .parameter "textToSynthesize"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 108
    return-void
.end method

.method public speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 5
    .parameter "textToSynthesize"
    .parameter "listener"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 116
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/google/glass/util/TtsHelper;->pendingTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 118
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    .line 119
    iget-boolean v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    const-string v1, "TTS not yet initialized, queuing up text"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queued up text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    const-string v1, "TTS is ready, speaking text"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Speaking text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public stopSpeaking()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->pendingTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 138
    iget-boolean v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    if-nez v0, :cond_1

    .line 139
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    const-string v1, "TTS not yet initialized, not calling stop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :goto_0
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->isTtsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/TtsHelper$3;

    invoke-direct {v1, p0}, Lcom/google/glass/util/TtsHelper$3;-><init>(Lcom/google/glass/util/TtsHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    :cond_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
