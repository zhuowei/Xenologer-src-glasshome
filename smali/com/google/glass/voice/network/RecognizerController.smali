.class public Lcom/google/glass/voice/network/RecognizerController;
.super Ljava/lang/Object;
.source "RecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;
    }
.end annotation


# static fields
.field private static final FORCED_TIMEOUT_MS:J = 0x4e20L

.field private static final MSG_FORCED_END:I = 0x0

.field private static final STABILITY_THRESHOLD:D = 0.8

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

.field private final recognizer:Lcom/google/android/speech/Recognizer;

.field private final speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

.field private final speechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;)V
    .locals 2
    .parameter "recognizer"
    .parameter "speechLevelSource"
    .parameter "speechSettings"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    .line 90
    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    .line 91
    iput-object p3, p0, Lcom/google/glass/voice/network/RecognizerController;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecognizerController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    .line 96
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$1;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/network/RecognizerController$1;-><init>(Lcom/google/glass/voice/network/RecognizerController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    .line 118
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/QueueingGrecoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/Recognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/SpeechLevelSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController;->getSpeechExceptionType(Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    move-result-object v0

    return-object v0
.end method

.method private getGrammarType(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Grammar;
    .locals 1
    .parameter "mode"

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGreco3Mode(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1
    .parameter "mode"

    .prologue
    .line 171
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method

.method private static getModeForVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/android/speech/params/SessionParams$Mode;
    .locals 1
    .parameter "voiceConfig"

    .prologue
    .line 139
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-ne p0, v0, :cond_0

    .line 141
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->SERVICE_API:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 145
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    goto :goto_0
.end method

.method private getSessionParamsBuilder(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    new-instance v0, Lcom/google/android/speech/params/AudioInputParams$Builder;

    invoke-direct {v0}, Lcom/google/android/speech/params/AudioInputParams$Builder;-><init>()V

    .line 151
    .local v0, audioBuilder:Lcom/google/android/speech/params/AudioInputParams$Builder;
    invoke-virtual {v0, v4}, Lcom/google/android/speech/params/AudioInputParams$Builder;->setPlayBeepEnabled(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;

    .line 153
    new-instance v1, Lcom/google/android/speech/params/SessionParams$Builder;

    invoke-direct {v1}, Lcom/google/android/speech/params/SessionParams$Builder;-><init>()V

    .line 154
    .local v1, builder:Lcom/google/android/speech/params/SessionParams$Builder;
    const-string v2, "en-US"

    invoke-virtual {v1, v2}, Lcom/google/android/speech/params/SessionParams$Builder;->setSpokenBcp47Locale(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController;->getGrammarType(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Grammar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setGreco3Grammar(Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController;->getGreco3Mode(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setGreco3Mode(Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v3}, Lcom/google/android/speech/SpeechSettings;->isProfanityFilterEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setProfanityFilterEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/speech/params/SessionParams$Builder;->setPartialResultsEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/speech/params/SessionParams$Builder;->setRecordedAudio(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/speech/params/SessionParams$Builder;->setMode(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/speech/params/AudioInputParams$Builder;->build()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setAudioInputParams(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/params/SessionParams$Builder;

    .line 162
    invoke-virtual {v1, v5}, Lcom/google/android/speech/params/SessionParams$Builder;->setNoSpeechDetectedEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    .line 163
    return-object v1
.end method

.method private getSpeechException(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;
    .locals 1
    .parameter "type"
    .parameter "ex"

    .prologue
    .line 422
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/voice/network/RecognizerController$3;-><init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private getSpeechExceptionType(Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;
    .locals 1
    .parameter "ex"

    .prologue
    .line 406
    instance-of v0, p1, Lcom/google/android/speech/exception/NetworkRecognizeException;

    if-eqz v0, :cond_0

    .line 407
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    .line 416
    :goto_0
    return-object v0

    .line 408
    :cond_0
    instance-of v0, p1, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    if-eqz v0, :cond_1

    .line 409
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    goto :goto_0

    .line 410
    :cond_1
    instance-of v0, p1, Lcom/google/android/speech/exception/AudioRecognizeException;

    if-eqz v0, :cond_2

    .line 411
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    goto :goto_0

    .line 416
    :cond_2
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->SERVER:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    goto :goto_0
.end method


# virtual methods
.method public attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V
    .locals 2
    .parameter "voiceSearchUi"

    .prologue
    .line 175
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v1, "attachVoiceSearchUi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    new-instance v1, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;-><init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceSearchUi;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setListener(Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;)V

    .line 181
    :goto_0
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/RecognizerController$2;-><init>(Lcom/google/glass/voice/network/RecognizerController;)V

    invoke-interface {p1, v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->setSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V

    .line 187
    return-void

    .line 179
    :cond_0
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v1, "queueingGrecoListener was null in attachVoiceSearchUi"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    invoke-interface {v0}, Lcom/google/android/speech/Recognizer;->cancel()V

    .line 209
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setCanceled()V

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 213
    return-void
.end method

.method public detachVoiceSearchUi()V
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v1, "detachVoiceSearchUi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setCanceled()V

    .line 194
    :cond_0
    return-void
.end method

.method public startListening(Lcom/google/glass/voice/VoiceConfig;Landroid/content/Context;)V
    .locals 6
    .parameter "voiceConfig"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 121
    sget-object v2, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v3, "startListening"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v2, Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-direct {v2}, Lcom/google/glass/voice/network/QueueingGrecoListener;-><init>()V

    iput-object v2, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 124
    invoke-static {p1}, Lcom/google/glass/voice/network/RecognizerController;->getModeForVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/voice/network/RecognizerController;->getSessionParamsBuilder(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/speech/params/SessionParams$Builder;->build()Lcom/google/android/speech/params/SessionParams;

    move-result-object v1

    .line 126
    .local v1, sessionParams:Lcom/google/android/speech/params/SessionParams;
    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/speech/params/AudioInputParams;->shouldStoreCompleteAudio()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 129
    .local v0, futureAudio:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    :goto_0
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4, v0}, Lcom/google/android/speech/Recognizer;->startListening(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 132
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-eq p1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    :cond_0
    return-void

    .line 126
    .end local v0           #futureAudio:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    invoke-interface {v0}, Lcom/google/android/speech/Recognizer;->stopListening()V

    .line 200
    return-void
.end method
