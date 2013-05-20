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
    .line 22
    const-class v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/glass/util/TtsHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/TtsHelper$1;-><init>(Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->handler:Landroid/os/Handler;

    .line 135
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->context:Landroid/content/Context;

    .line 138
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    const-string v1, "Initializing TextToSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/google/glass/util/TtsHelper$2;

    invoke-direct {v1, p0}, Lcom/google/glass/util/TtsHelper$2;-><init>(Lcom/google/glass/util/TtsHelper;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 153
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/TtsHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/util/TtsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/util/TtsHelper;Landroid/speech/tts/UtteranceProgressListener;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->pendingTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/util/TtsHelper;Landroid/speech/tts/UtteranceProgressListener;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->pendingTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/util/TtsHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/util/TtsHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/util/TtsHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public clearLastTextSynthesized()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public getLastTextSynthesized()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    return-object v0
.end method

.method public speakText(Ljava/lang/String;)V
    .locals 1
    .parameter "textToSynthesize"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 161
    return-void
.end method

.method public speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 4
    .parameter "textToSynthesize"
    .parameter "listener"

    .prologue
    const/4 v3, 0x3

    .line 169
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lcom/google/glass/util/TtsHelper;->pendingTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 171
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    .line 172
    iget-boolean v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    const-string v1, "TTS not yet initialized, queuing up text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
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

    invoke-static {v3, v0, v1}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_0
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    const-string v1, "TTS is ready, speaking text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
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

    invoke-static {v3, v0, v1}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public stopSpeaking()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->pendingTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 189
    iget-boolean v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    if-nez v0, :cond_1

    .line 190
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    const-string v1, "TTS not yet initialized, not calling stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->isTtsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/TtsHelper$3;

    invoke-direct {v1, p0}, Lcom/google/glass/util/TtsHelper$3;-><init>(Lcom/google/glass/util/TtsHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 206
    :cond_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
