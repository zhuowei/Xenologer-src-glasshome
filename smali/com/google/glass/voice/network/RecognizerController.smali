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

.field private static final PIPE_SIZE:I = 0x7d00

.field private static final SAVE_RESPONSE:Z = false

.field private static final SERVER_KEY:Ljava/lang/String; = "persist.search.server"

.field private static final STABILITY_THRESHOLD:D = 0.8

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z

.field private static final log:Lcom/google/glass/util/FormattingLogger;


# instance fields
.field private audioPipe:Lcom/google/glass/util/BytePipe;

.field private final cookies:Lcom/google/glass/voice/network/Cookies;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private microphoneStream:Ljava/io/InputStream;

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

    .line 80
    invoke-static {}, Lcom/google/glass/util/FormattingLoggers;->getContextLogger()Lcom/google/glass/util/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/RecognizerController;->log:Lcom/google/glass/util/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;Lcom/google/glass/voice/network/Cookies;)V
    .locals 2
    .parameter "recognizer"
    .parameter "speechLevelSource"
    .parameter "speechSettings"
    .parameter "cookies"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/google/glass/util/BytePipe;

    const/16 v1, 0x7d00

    invoke-direct {v0, v1}, Lcom/google/glass/util/BytePipe;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    .line 164
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    .line 165
    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    .line 166
    iput-object p3, p0, Lcom/google/glass/voice/network/RecognizerController;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 167
    iput-object p4, p0, Lcom/google/glass/voice/network/RecognizerController;->cookies:Lcom/google/glass/voice/network/Cookies;

    .line 171
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecognizerController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    .line 172
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 173
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$1;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/network/RecognizerController$1;-><init>(Lcom/google/glass/voice/network/RecognizerController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    .line 195
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NAV_CONTAMINATE_FIX:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lcom/google/glass/voice/InterleavingInputStream;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/InterleavingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->microphoneStream:Ljava/io/InputStream;

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->microphoneStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/google/glass/util/FormattingLogger;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->log:Lcom/google/glass/util/FormattingLogger;

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

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/Cookies;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->cookies:Lcom/google/glass/voice/network/Cookies;

    return-object v0
.end method

.method private getGrammarType(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Grammar;
    .locals 1
    .parameter "mode"

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGreco3Mode(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1
    .parameter "mode"

    .prologue
    .line 302
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method

.method public static getModeForVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/android/speech/params/SessionParams$Mode;
    .locals 1
    .parameter "voiceConfig"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 266
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-ne p0, v0, :cond_0

    .line 268
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->SERVICE_API:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 275
    :goto_0
    return-object v0

    .line 269
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    if-ne p0, v0, :cond_1

    .line 271
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->SOUND_SEARCH:Lcom/google/android/speech/params/SessionParams$Mode;

    goto :goto_0

    .line 275
    :cond_1
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    goto :goto_0
.end method

.method private getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    .locals 3
    .parameter "type"
    .parameter "ex"

    .prologue
    .line 738
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
    .line 722
    instance-of v0, p1, Lcom/google/android/speech/exception/NetworkRecognizeException;

    if-eqz v0, :cond_0

    .line 723
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    .line 732
    :goto_0
    return-object v0

    .line 724
    :cond_0
    instance-of v0, p1, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    if-eqz v0, :cond_1

    .line 725
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0

    .line 726
    :cond_1
    instance-of v0, p1, Lcom/google/android/speech/exception/AudioRecognizeException;

    if-eqz v0, :cond_2

    .line 727
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0

    .line 732
    :cond_2
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->SERVER:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0
.end method


# virtual methods
.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)V
    .locals 4
    .parameter "voiceInputCallback"

    .prologue
    const/4 v3, 0x0

    .line 306
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->log:Lcom/google/glass/util/FormattingLogger;

    const-string v1, "attachVoiceInputCallback"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    new-instance v1, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;-><init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceInputCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setListener(Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;)V

    .line 312
    :goto_0
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/RecognizerController$2;-><init>(Lcom/google/glass/voice/network/RecognizerController;)V

    invoke-interface {p1, v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 318
    return-void

    .line 310
    :cond_0
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    const-string v1, "queueingGrecoListener was null in attachVoiceInputCallback"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 338
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->log:Lcom/google/glass/util/FormattingLogger;

    const-string v1, "cancel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    invoke-interface {v0}, Lcom/google/android/speech/Recognizer;->cancel()V

    .line 340
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setCanceled()V

    .line 343
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 344
    return-void
.end method

.method public detachVoiceInputCallback()V
    .locals 3

    .prologue
    .line 321
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->log:Lcom/google/glass/util/FormattingLogger;

    const-string v1, "detachVoiceInputCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setCanceled()V

    .line 325
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

    .line 281
    new-instance v0, Lcom/google/android/speech/params/AudioInputParams$Builder;

    invoke-direct {v0}, Lcom/google/android/speech/params/AudioInputParams$Builder;-><init>()V

    .line 282
    .local v0, audioBuilder:Lcom/google/android/speech/params/AudioInputParams$Builder;
    invoke-virtual {v0, v4}, Lcom/google/android/speech/params/AudioInputParams$Builder;->setPlayBeepEnabled(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;

    .line 284
    new-instance v1, Lcom/google/android/speech/params/SessionParams$Builder;

    invoke-direct {v1}, Lcom/google/android/speech/params/SessionParams$Builder;-><init>()V

    .line 285
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

    .line 293
    invoke-virtual {v1, v5}, Lcom/google/android/speech/params/SessionParams$Builder;->setNoSpeechDetectedEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    .line 294
    return-object v1
.end method

.method public interleave(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "lastHotwordAudio"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->microphoneStream:Ljava/io/InputStream;

    check-cast v0, Lcom/google/glass/voice/InterleavingInputStream;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/InterleavingInputStream;->interleave(Ljava/nio/ByteBuffer;)V

    .line 217
    return-void
.end method

.method public startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;)V
    .locals 9
    .parameter "voiceConfig"
    .parameter "listener"

    .prologue
    const/4 v8, 0x0

    .line 220
    new-instance v4, Lcom/google/glass/voice/ResampleInputStream;

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController;->microphoneStream:Ljava/io/InputStream;

    const/16 v6, 0x3e80

    const/16 v7, 0x1f40

    invoke-direct {v4, p2, v5, v6, v7}, Lcom/google/glass/voice/ResampleInputStream;-><init>(Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Ljava/io/InputStream;II)V

    iput-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->resampleInputStream:Lcom/google/glass/voice/ResampleInputStream;

    .line 223
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v3

    .line 224
    .local v3, vc:Lcom/google/glass/voice/network/VoiceSearchContainer;
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    if-ne p1, v4, :cond_1

    .line 231
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

    .line 238
    :goto_0
    invoke-virtual {v3}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioInputStreamFactory()Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController;->soundSearchMicrophoneInputStream:Lcom/google/android/ears/s3/audio/WrappedMicrophoneInputStream;

    invoke-virtual {v4, v5}, Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;->setInputStream(Ljava/io/InputStream;)V

    .line 243
    :goto_1
    sget-object v4, Lcom/google/glass/voice/network/RecognizerController;->log:Lcom/google/glass/util/FormattingLogger;

    const-string v5, "startListening"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/util/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    new-instance v4, Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-direct {v4}, Lcom/google/glass/voice/network/QueueingGrecoListener;-><init>()V

    iput-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 246
    invoke-static {p1}, Lcom/google/glass/voice/network/RecognizerController;->getModeForVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/glass/voice/network/RecognizerController;->getSessionParamsBuilder(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams$Builder;->build()Lcom/google/android/speech/params/SessionParams;

    move-result-object v2

    .line 248
    .local v2, sessionParams:Lcom/google/android/speech/params/SessionParams;
    invoke-virtual {v2}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/speech/params/AudioInputParams;->shouldStoreCompleteAudio()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 251
    .local v1, futureAudio:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    :goto_2
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-interface {v4, v2, v5, v6, v1}, Lcom/google/android/speech/Recognizer;->startListening(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 254
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-eq p1, v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    const-wide/16 v5, 0x4e20

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    :cond_0
    return-void

    .line 234
    .end local v1           #futureAudio:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    .end local v2           #sessionParams:Lcom/google/android/speech/params/SessionParams;
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/network/RecognizerController;->log:Lcom/google/glass/util/FormattingLogger;

    const-string v5, "Error creating sound search MicrophoneInputStream"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/util/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v3}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioInputStreamFactory()Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController;->resampleInputStream:Lcom/google/glass/voice/ResampleInputStream;

    invoke-virtual {v4, v5}, Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;->setInputStream(Ljava/io/InputStream;)V

    goto :goto_1

    .line 248
    .restart local v2       #sessionParams:Lcom/google/android/speech/params/SessionParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 329
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->log:Lcom/google/glass/util/FormattingLogger;

    const-string v1, "stopListening"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/util/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    invoke-interface {v0}, Lcom/google/android/speech/Recognizer;->stopListening()V

    .line 331
    return-void
.end method

.method public declared-synchronized writeAudio(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/BytePipe;->write(Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
