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

.field private static final SAVE_RESPONSE:Z = false

.field private static final SERVER_KEY:Ljava/lang/String; = "persist.search.server"

.field private static final STABILITY_THRESHOLD:D = 0.8

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private microphoneStream:Ljava/io/InputStream;

.field private pi:Ljava/io/PipedInputStream;

.field private po:Ljava/io/PipedOutputStream;

.field private queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

.field private final recognizer:Lcom/google/android/speech/Recognizer;

.field private resampleInputStream:Lcom/google/glass/voice/ResampleInputStream;

.field private soundSearchMicrophoneInputStream:Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;

.field private final speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

.field private final speechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;)V
    .locals 3
    .parameter "recognizer"
    .parameter "speechLevelSource"
    .parameter "speechSettings"

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->po:Ljava/io/PipedOutputStream;

    .line 123
    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->pi:Ljava/io/PipedInputStream;

    .line 162
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    .line 163
    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    .line 164
    iput-object p3, p0, Lcom/google/glass/voice/network/RecognizerController;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 168
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RecognizerController"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    .line 169
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 170
    new-instance v1, Lcom/google/glass/voice/network/RecognizerController$1;

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/voice/network/RecognizerController$1;-><init>(Lcom/google/glass/voice/network/RecognizerController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    .line 193
    :try_start_0
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->po:Ljava/io/PipedOutputStream;

    .line 198
    new-instance v1, Lcom/google/glass/voice/network/RecognizerController$2;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/network/RecognizerController$2;-><init>(Lcom/google/glass/voice/network/RecognizerController;)V

    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->pi:Ljava/io/PipedInputStream;

    .line 214
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->pi:Ljava/io/PipedInputStream;

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController;->po:Ljava/io/PipedOutputStream;

    invoke-virtual {v1, v2}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->NAV_CONTAMINATE_FIX:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Lcom/google/glass/voice/InterleavingInputStream;

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController;->pi:Ljava/io/PipedInputStream;

    invoke-direct {v1, v2}, Lcom/google/glass/voice/InterleavingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->microphoneStream:Ljava/io/InputStream;

    .line 224
    :goto_1
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v2, "Error initializing RecognizerController."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->pi:Ljava/io/PipedInputStream;

    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->microphoneStream:Ljava/io/InputStream;

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/QueueingGrecoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/Recognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/SpeechLevelSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController;->getSpeechExceptionType(Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    return-object v0
.end method

.method private getGrammarType(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Grammar;
    .locals 1
    .parameter "mode"

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGreco3Mode(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1
    .parameter "mode"

    .prologue
    .line 326
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method

.method public static getModeForVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/android/speech/params/SessionParams$Mode;
    .locals 1
    .parameter "voiceConfig"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-ne p0, v0, :cond_0

    .line 292
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->SERVICE_API:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 299
    :goto_0
    return-object v0

    .line 293
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    if-ne p0, v0, :cond_1

    .line 295
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->SOUND_SEARCH:Lcom/google/android/speech/params/SessionParams$Mode;

    goto :goto_0

    .line 299
    :cond_1
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    goto :goto_0
.end method

.method private getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    .locals 3
    .parameter "type"
    .parameter "ex"

    .prologue
    .line 770
    new-instance v0, Lcom/google/glass/voice/network/SpeechException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/voice/network/SpeechException;-><init>(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSpeechExceptionType(Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;
    .locals 1
    .parameter "ex"

    .prologue
    .line 754
    instance-of v0, p1, Lcom/google/android/speech/exception/NetworkRecognizeException;

    if-eqz v0, :cond_0

    .line 755
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    .line 764
    :goto_0
    return-object v0

    .line 756
    :cond_0
    instance-of v0, p1, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    if-eqz v0, :cond_1

    .line 757
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0

    .line 758
    :cond_1
    instance-of v0, p1, Lcom/google/android/speech/exception/AudioRecognizeException;

    if-eqz v0, :cond_2

    .line 759
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0

    .line 764
    :cond_2
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->SERVER:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0
.end method


# virtual methods
.method public attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V
    .locals 2
    .parameter "voiceSearchUi"

    .prologue
    .line 330
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v1, "attachVoiceSearchUi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    new-instance v1, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;-><init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceSearchUi;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setListener(Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;)V

    .line 336
    :goto_0
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/RecognizerController$3;-><init>(Lcom/google/glass/voice/network/RecognizerController;)V

    invoke-interface {p1, v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->setSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V

    .line 342
    return-void

    .line 334
    :cond_0
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v1, "queueingGrecoListener was null in attachVoiceSearchUi"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 362
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    invoke-interface {v0}, Lcom/google/android/speech/Recognizer;->cancel()V

    .line 364
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setCanceled()V

    .line 367
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 368
    return-void
.end method

.method public detachVoiceSearchUi()V
    .locals 2

    .prologue
    .line 345
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v1, "detachVoiceSearchUi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setCanceled()V

    .line 349
    :cond_0
    return-void
.end method

.method public getSessionParamsBuilder(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 6
    .parameter "mode"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 305
    new-instance v0, Lcom/google/android/speech/params/AudioInputParams$Builder;

    invoke-direct {v0}, Lcom/google/android/speech/params/AudioInputParams$Builder;-><init>()V

    .line 306
    .local v0, audioBuilder:Lcom/google/android/speech/params/AudioInputParams$Builder;
    invoke-virtual {v0, v4}, Lcom/google/android/speech/params/AudioInputParams$Builder;->setPlayBeepEnabled(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;

    .line 308
    new-instance v1, Lcom/google/android/speech/params/SessionParams$Builder;

    invoke-direct {v1}, Lcom/google/android/speech/params/SessionParams$Builder;-><init>()V

    .line 309
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

    .line 317
    invoke-virtual {v1, v5}, Lcom/google/android/speech/params/SessionParams$Builder;->setNoSpeechDetectedEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    .line 318
    return-object v1
.end method

.method public interleave(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "lastSensoryCommandAudio"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->microphoneStream:Ljava/io/InputStream;

    check-cast v0, Lcom/google/glass/voice/InterleavingInputStream;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/InterleavingInputStream;->interleave(Ljava/nio/ByteBuffer;)V

    .line 241
    return-void
.end method

.method public startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;)V
    .locals 9
    .parameter "voiceConfig"
    .parameter "listener"

    .prologue
    const/4 v8, 0x0

    .line 244
    new-instance v4, Lcom/google/glass/voice/ResampleInputStream;

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController;->microphoneStream:Ljava/io/InputStream;

    const/16 v6, 0x3e80

    const/16 v7, 0x1f40

    invoke-direct {v4, p2, v5, v6, v7}, Lcom/google/glass/voice/ResampleInputStream;-><init>(Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Ljava/io/InputStream;II)V

    iput-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->resampleInputStream:Lcom/google/glass/voice/ResampleInputStream;

    .line 247
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v3

    .line 248
    .local v3, vc:Lcom/google/glass/voice/network/VoiceSearchContainer;
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    if-ne p1, v4, :cond_1

    .line 255
    :try_start_0
    new-instance v4, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStreamFactory;

    new-instance v5, Lcom/google/android/ears/s3/audio/AudioListeners;

    invoke-direct {v5}, Lcom/google/android/ears/s3/audio/AudioListeners;-><init>()V

    invoke-direct {v4, v5}, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStreamFactory;-><init>(Lcom/google/android/ears/s3/audio/AudioListener;)V

    invoke-virtual {v4}, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v4

    check-cast v4, Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;

    iput-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->soundSearchMicrophoneInputStream:Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    invoke-virtual {v3}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioInputStreamFactory()Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController;->soundSearchMicrophoneInputStream:Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;

    invoke-virtual {v4, v5}, Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;->setInputStream(Ljava/io/InputStream;)V

    .line 267
    :goto_1
    sget-object v4, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v5, "startListening"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v4, Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-direct {v4}, Lcom/google/glass/voice/network/QueueingGrecoListener;-><init>()V

    iput-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 270
    invoke-static {p1}, Lcom/google/glass/voice/network/RecognizerController;->getModeForVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/glass/voice/network/RecognizerController;->getSessionParamsBuilder(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams$Builder;->build()Lcom/google/android/speech/params/SessionParams;

    move-result-object v2

    .line 272
    .local v2, sessionParams:Lcom/google/android/speech/params/SessionParams;
    invoke-virtual {v2}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/speech/params/AudioInputParams;->shouldStoreCompleteAudio()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 275
    .local v1, futureAudio:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    :goto_2
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-interface {v4, v2, v5, v6, v1}, Lcom/google/android/speech/Recognizer;->startListening(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 278
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-eq p1, v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    const-wide/16 v5, 0x4e20

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    :cond_0
    return-void

    .line 258
    .end local v1           #futureAudio:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    .end local v2           #sessionParams:Lcom/google/android/speech/params/SessionParams;
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v5, "Error creating sound search MicrophoneInputStream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 264
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v3}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioInputStreamFactory()Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController;->resampleInputStream:Lcom/google/glass/voice/ResampleInputStream;

    invoke-virtual {v4, v5}, Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;->setInputStream(Ljava/io/InputStream;)V

    goto :goto_1

    .line 272
    .restart local v2       #sessionParams:Lcom/google/android/speech/params/SessionParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 353
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    invoke-interface {v0}, Lcom/google/android/speech/Recognizer;->stopListening()V

    .line 355
    return-void
.end method

.method public declared-synchronized writeAudio(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->po:Ljava/io/PipedOutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/PipedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
