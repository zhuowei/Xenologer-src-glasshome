.class public Lcom/google/glass/voice/VoiceService;
.super Landroid/app/Service;
.source "VoiceService.java"

# interfaces
.implements Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;
.implements Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceService$VoiceConfigState;,
        Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    }
.end annotation


# static fields
.field public static final EXTRA_USE_MOCK_MICROPHONE:Ljava/lang/String; = "use_mock_microphone"

.field private static final MAX_MISSED_COMMAND_COUNT:I = 0x5

.field private static final MIC_ACQUIRE_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy; = null

.field private static final MSG_POST_RESAMPLED_AUDIO_DATA:I = 0x1

.field private static final MSG_SCREEN_OFF:I = 0x0

.field private static final PER_RECOGNIZER_AUDIO_LOGGING:Z = false

.field private static final READ_BUFFER_SIZE:I = 0xa0

#the value of this static final field might be set in the static constructor
.field private static final SENSORY_COMMAND_AUDIO_BUFFER_SIZE_MS:J = 0x0L

.field private static final SENSORY_START_BOUND_FUZZ_FACTOR_MS:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

.field private static networkRecognitionDisabledForTest:Z


# instance fields
.field private activeRecognizer:Lcom/google/glass/voice/Sensory;

.field private audioRecordingBuffer:Ljava/nio/ByteBuffer;

.field private audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

.field private final binder:Landroid/os/IBinder;

.field private currentConfig:Lcom/google/glass/voice/VoiceConfig;

.field private volatile destroyed:Z

.field private final dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final handler:Landroid/os/Handler;

.field private final headsetReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

.field private final isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastSensoryCommandAudio:Ljava/nio/ByteBuffer;

.field private lastSensoryRecognitionResult:Lcom/google/glass/voice/VoiceCommandRecognitionResult;

.field private volatile listener:Lcom/google/glass/voice/VoiceServiceListener;

.field private final loadedRecognizers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/voice/VoiceConfig;",
            "Lcom/google/glass/voice/Sensory;",
            ">;"
        }
    .end annotation
.end field

.field private microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

.field private microphoneInterleavingStream:Lcom/google/glass/voice/InterleavingInputStream;

.field private volatile microphoneReadThread:Ljava/lang/Thread;

.field private missedCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/glass/voice/VoiceCommand;",
            ">;"
        }
    .end annotation
.end field

.field private pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/glass/voice/network/VoiceSearchUi;",
            ">;"
        }
    .end annotation
.end field

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private resampleInputStream:Lcom/google/glass/voice/ResampleInputStream;

.field private savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

.field private final screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private sensoryRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

.field private targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/voice/VoiceService$VoiceConfigState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    const-class v0, Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    .line 90
    const/16 v0, 0x64

    const-wide/high16 v1, 0x4000

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/RetryStrategy;->exponentialBackoff(IDI)Lcom/google/glass/util/RetryStrategy;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->MIC_ACQUIRE_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

    .line 117
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/VoiceService;->SENSORY_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    .line 364
    new-instance v0, Lcom/google/glass/util/ThreadCheckThreadFactory;

    new-instance v1, Lcom/google/glass/util/PriorityThreadFactory;

    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/backgroundExecutor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/glass/util/ThreadCheckThreadFactory;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/glass/voice/VoiceService;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    .line 366
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 120
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->loadedRecognizers:Ljava/util/Map;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 192
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->missedCommands:Ljava/util/Queue;

    .line 197
    new-instance v0, Lcom/google/glass/voice/VoiceService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$1;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->handler:Landroid/os/Handler;

    .line 219
    new-instance v0, Lcom/google/glass/voice/VoiceService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$2;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 232
    new-instance v0, Lcom/google/glass/voice/VoiceService$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$3;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->headsetReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 247
    new-instance v0, Lcom/google/glass/voice/VoiceService$4;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$4;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 264
    new-instance v0, Lcom/google/glass/voice/VoiceService$5;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$5;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 349
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 362
    new-instance v0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/util/PowerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/glass/voice/VoiceService;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService;->pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->attachVoiceSearchUi()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->detachVoiceSearchUi()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->endpointNetworkRecognizer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->initialize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->compileDynamicGrammars()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->closeSensoryRecognizers()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceCommand;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->setConfigToTarget()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/VoiceService;->setConfigAsync(Lcom/google/glass/voice/VoiceConfig;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceService;->startVoiceConfigWithRetries(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/glass/voice/VoiceService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/VoiceService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->updateConfigs()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/voice/VoiceService;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->getConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;

    move-result-object v0

    return-object v0
.end method

.method private attachVoiceSearchUi()V
    .locals 2

    .prologue
    .line 1145
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1146
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1150
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/VoiceSearchUi;

    .line 1151
    .local v0, voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;
    if-eqz v0, :cond_1

    .line 1152
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getRecognizerController(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/network/RecognizerController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/network/RecognizerController;->attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V

    .line 1155
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/voice/VoiceService;->pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method private closeSensoryRecognizers()V
    .locals 3

    .prologue
    .line 1210
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1211
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/Sensory;

    .line 1212
    .local v1, recognizer:Lcom/google/glass/voice/Sensory;
    if-eqz v1, :cond_0

    .line 1213
    invoke-virtual {v1}, Lcom/google/glass/voice/Sensory;->closePhrasespot()V

    goto :goto_0

    .line 1217
    .end local v1           #recognizer:Lcom/google/glass/voice/Sensory;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1218
    return-void
.end method

.method private compileDynamicGrammars()V
    .locals 3

    .prologue
    .line 579
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 580
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 581
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Grammars already up-to-date."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 586
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 588
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->THIRD_PARTY_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->ADDITIONAL_COMMANDS:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method private createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;
    .locals 3

    .prologue
    const/16 v2, 0x3e80

    .line 544
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Creating MIS..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "...using mock microphone."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v0, Lcom/google/glass/voice/MockMicrophoneInputStream;

    invoke-direct {v0, p0, p0, v2}, Lcom/google/glass/voice/MockMicrophoneInputStream;-><init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    .line 550
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-direct {v0, p0, p0, v2}, Lcom/google/glass/voice/MicrophoneInputStream;-><init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    goto :goto_0
.end method

.method private detachVoiceSearchUi()V
    .locals 1

    .prologue
    .line 1160
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;

    .line 1162
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getRecognizerController(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/network/RecognizerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->detachVoiceSearchUi()V

    .line 1163
    return-void
.end method

.method private doInBackground(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 432
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 434
    .local v0, exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    sget-object v1, Lcom/google/glass/voice/VoiceService;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/glass/voice/VoiceService$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/glass/voice/VoiceService$6;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/lang/Runnable;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method private endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 1167
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1168
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getRecognizerController(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/network/RecognizerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->stopListening()V

    .line 1169
    return-void
.end method

.method private finishSavingAudio()V
    .locals 3

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->finishSavingAudio()V

    .line 788
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/audio/AudioSaver;->registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V

    .line 789
    return-void
.end method

.method private declared-synchronized getActiveRecognizer()Lcom/google/glass/voice/Sensory;
    .locals 1

    .prologue
    .line 1205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->activeRecognizer:Lcom/google/glass/voice/Sensory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getBackgroundExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 397
    sget-object v0, Lcom/google/glass/voice/VoiceService;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 402
    sget-object v0, Lcom/google/glass/voice/VoiceService;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    return-object v0
.end method

.method private static getByteLength(J)I
    .locals 2
    .parameter "millis"

    .prologue
    .line 792
    const-wide/16 v0, 0x3e80

    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->toByteLength(JJ)I

    move-result v0

    return v0
.end method

.method private getConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static getContactEntities(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    invoke-static {p0}, Lcom/google/glass/voice/VoiceService;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/voice/VoiceService;->getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHelper;->getSpeakableCommunicationTargets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method private static getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;
    .locals 3
    .parameter "context"
    .parameter "plusEntityOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    if-eqz p1, :cond_0

    .line 611
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/entity/EntityHelper;->getPlusEntityForUser(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 616
    .local v0, user:Lcom/google/googlex/glass/common/proto/Entity;
    :goto_0
    if-eqz v0, :cond_1

    .line 617
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 619
    :goto_1
    return-object v1

    .line 613
    .end local v0           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .restart local v0       #user:Lcom/google/googlex/glass/common/proto/Entity;
    goto :goto_0

    .line 619
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method private static getLastCommandAudio(Lcom/google/glass/voice/VoiceCommandRecognitionResult;Lcom/google/glass/util/CircularByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9
    .parameter "recognitionResult"
    .parameter "sensoryRefeedBuffer"

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->getSensoryResult()Lcom/google/glass/voice/SensoryResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/voice/SensoryResult;->getPhraseDurationMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    add-long v1, v5, v7

    .line 766
    .local v1, millis:J
    sget-wide v5, Lcom/google/glass/voice/VoiceService;->SENSORY_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    invoke-static {v5, v6}, Lcom/google/glass/voice/VoiceService;->getByteLength(J)I

    move-result v4

    .line 767
    .local v4, totalBufferLength:I
    invoke-static {v1, v2}, Lcom/google/glass/voice/VoiceService;->getByteLength(J)I

    move-result v3

    .line 769
    .local v3, refeedLength:I
    if-le v3, v4, :cond_0

    .line 770
    sget-object v5, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v6, "Cannot refeed last command, sensory refeed buffer too small."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 778
    :goto_0
    return-object v0

    .line 774
    :cond_0
    sget-object v5, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ready to copy out "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes to refeed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 776
    .local v0, copy:Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v0, v3}, Lcom/google/glass/util/CircularByteBuffer;->getLast(Ljava/nio/ByteBuffer;I)V

    .line 777
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private static getMillis(J)J
    .locals 2
    .parameter "byteLength"

    .prologue
    .line 796
    const-wide/16 v0, 0x3e80

    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->toMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 1

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->isUsingMockMicrophone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    check-cast v0, Lcom/google/glass/voice/MockMicrophoneInputStream;

    .line 1012
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    invoke-static {p0}, Lcom/google/glass/voice/VoiceService;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/glass/voice/VoiceService;->getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityHelper;->getSpeakablePlusShareTargets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method private getRecognizer(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/Sensory;
    .locals 1
    .parameter "config"

    .prologue
    .line 512
    invoke-virtual {p1, p0}, Lcom/google/glass/voice/VoiceConfig;->getRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/Sensory;

    move-result-object v0

    return-object v0
.end method

.method public static hasContacts(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 380
    invoke-static {p0}, Lcom/google/glass/voice/VoiceService;->getContactEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPlusShareTargets(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 385
    invoke-static {p0}, Lcom/google/glass/voice/VoiceService;->getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 465
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 466
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Initializing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/16 v0, 0xa0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioRecordingBuffer:Ljava/nio/ByteBuffer;

    .line 468
    new-instance v0, Lcom/google/glass/util/CircularByteBuffer;

    const-wide/16 v1, 0x3e80

    sget-wide v3, Lcom/google/glass/voice/VoiceService;->SENSORY_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/CircularByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->sensoryRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    .line 471
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 473
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->headsetReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.google.glass.action.CALL_SETUP_STATE"

    aput-object v2, v1, v5

    const-string v2, "com.google.glass.action.CALL_STATE"

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-static {p0}, Lcom/google/glass/voice/Sensory;->initialize(Landroid/content/Context;)V

    .line 478
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 479
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 480
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 483
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->compileDynamicGrammars()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->activeRecognizer:Lcom/google/glass/voice/Sensory;

    .line 487
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->initializeInputStreams()V

    .line 491
    :cond_0
    invoke-static {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createContainer(Landroid/content/Context;)V

    .line 492
    new-instance v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    .line 493
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-static {p0, v1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createS3SavedAudioSyncer(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;-><init>(Lcom/google/glass/logging/audio/SavedAudioSyncer;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    .line 499
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.glass.ACTION_GUEST_MODE"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    return-void
.end method

.method private initializeInputStreams()V
    .locals 4

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    .line 525
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NAV_CONTAMINATE_FIX:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Lcom/google/glass/voice/InterleavingInputStream;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/InterleavingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInterleavingStream:Lcom/google/glass/voice/InterleavingInputStream;

    .line 531
    :goto_0
    new-instance v1, Lcom/google/glass/voice/ResampleInputStream;

    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInterleavingStream:Lcom/google/glass/voice/InterleavingInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInterleavingStream:Lcom/google/glass/voice/InterleavingInputStream;

    :goto_1
    const/16 v2, 0x3e80

    const/16 v3, 0x1f40

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/glass/voice/ResampleInputStream;-><init>(Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Ljava/io/InputStream;II)V

    iput-object v1, p0, Lcom/google/glass/voice/VoiceService;->resampleInputStream:Lcom/google/glass/voice/ResampleInputStream;

    .line 536
    const-wide/16 v0, 0x3e80

    invoke-static {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 537
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInterleavingStream:Lcom/google/glass/voice/InterleavingInputStream;

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    goto :goto_1
.end method

.method private static isGuestModeEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 623
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v0

    return v0
.end method

.method private isUsingMockMicrophone()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->isMock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->loadedRecognizers:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->getRecognizer(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/Sensory;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    return-void
.end method

.method private queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 4
    .parameter "command"

    .prologue
    .line 818
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 819
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queueing missed command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 820
    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 821
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 824
    return-void
.end method

.method private declared-synchronized setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 1182
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1184
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->activeRecognizer:Lcom/google/glass/voice/Sensory;

    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->activeRecognizer:Lcom/google/glass/voice/Sensory;

    invoke-virtual {v0}, Lcom/google/glass/voice/Sensory;->reinitialize()V

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/Sensory;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->activeRecognizer:Lcom/google/glass/voice/Sensory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    monitor-exit p0

    return-void

    .line 1182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setBackgroundExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .parameter "backgroundExecutor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 390
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 391
    sput-object p0, Lcom/google/glass/voice/VoiceService;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 392
    return-void
.end method

.method public static setBackgroundThreadFactory(Lcom/google/glass/util/ThreadCheckThreadFactory;)V
    .locals 0
    .parameter "backgroundThreadFactory"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 407
    sput-object p0, Lcom/google/glass/voice/VoiceService;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    .line 408
    return-void
.end method

.method private setConfigAsync(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 2
    .parameter "config"
    .parameter "allowScreenOff"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/glass/voice/VoiceService$VoiceConfigState;

    invoke-direct {v1, p1, p2}, Lcom/google/glass/voice/VoiceService$VoiceConfigState;-><init>(Lcom/google/glass/voice/VoiceConfig;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 876
    new-instance v0, Lcom/google/glass/voice/VoiceService$11;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$11;-><init>(Lcom/google/glass/voice/VoiceService;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method

.method private setConfigToTarget()V
    .locals 6

    .prologue
    .line 885
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/VoiceService$VoiceConfigState;

    .line 886
    .local v2, configState:Lcom/google/glass/voice/VoiceService$VoiceConfigState;
    if-nez v2, :cond_0

    .line 887
    sget-object v3, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v4, "Delayed setConfigAsync call processed without a valid target configuration."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    #getter for: Lcom/google/glass/voice/VoiceService$VoiceConfigState;->config:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceService$VoiceConfigState;->access$1900(Lcom/google/glass/voice/VoiceService$VoiceConfigState;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 891
    .local v1, config:Lcom/google/glass/voice/VoiceConfig;
    #getter for: Lcom/google/glass/voice/VoiceService$VoiceConfigState;->allowScreenOff:Z
    invoke-static {v2}, Lcom/google/glass/voice/VoiceService$VoiceConfigState;->access$2000(Lcom/google/glass/voice/VoiceService$VoiceConfigState;)Z

    move-result v0

    .line 892
    .local v0, allowScreenOff:Z
    sget-object v3, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConfig called with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    if-nez v0, :cond_1

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 898
    sget-object v3, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v4, "Attempt to set a VoiceConfig while screen is off - setting to OFF instead."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 902
    :cond_1
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->isValidConfig()Z

    move-result v3

    if-nez v3, :cond_2

    .line 903
    sget-object v3, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to set invalid VoiceConfig "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - setting to OFF instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 907
    :cond_2
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    if-eq v3, v1, :cond_3

    .line 908
    sget-object v3, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoiceConfig changing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v1, v3, :cond_4

    .line 912
    iput-object v1, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 913
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->stopSensory()V

    .line 914
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->stopNetworkRecognizer()V

    .line 915
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->stopMicrophone()V

    .line 942
    :cond_3
    :goto_0
    return-void

    .line 916
    :cond_4
    iget-object v3, v1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v3, v4, :cond_6

    .line 919
    :cond_5
    iput-object v1, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 920
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->stopSensory()V

    .line 922
    sget-object v3, Lcom/google/glass/voice/VoiceService;->MIC_ACQUIRE_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/google/glass/voice/VoiceService;->startVoiceConfigWithRetries(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V

    goto :goto_0

    .line 926
    :cond_6
    iget-object v3, v1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v3, v4, :cond_8

    .line 927
    iget-boolean v3, v1, Lcom/google/glass/voice/VoiceConfig;->isDynamic:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 930
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->finishSavingAudio()V

    .line 933
    :cond_7
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    iget-object v3, v3, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v3, v4, :cond_8

    .line 934
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->stopNetworkRecognizer()V

    .line 938
    :cond_8
    iput-object v1, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 939
    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceService;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method public static setNetworkRecognitionDisabledForTest(Z)V
    .locals 0
    .parameter "networkRecognitionDisabled"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 412
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 413
    sput-boolean p0, Lcom/google/glass/voice/VoiceService;->networkRecognitionDisabledForTest:Z

    .line 414
    return-void
.end method

.method private startMicrophone()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1022
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1023
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->prepareToSaveAudio()V

    .line 1025
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->startListening()V

    .line 1027
    :cond_0
    return-void
.end method

.method private startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 1132
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1134
    sget-boolean v1, Lcom/google/glass/voice/VoiceService;->networkRecognitionDisabledForTest:Z

    if-eqz v1, :cond_0

    .line 1141
    :goto_0
    return-void

    .line 1138
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v0

    .line 1139
    .local v0, vc:Lcom/google/glass/voice/network/VoiceSearchContainer;
    invoke-virtual {v0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioInputStreamFactory()Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->resampleInputStream:Lcom/google/glass/voice/ResampleInputStream;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;->setInputStream(Ljava/io/InputStream;)V

    .line 1140
    invoke-virtual {v0, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getRecognizerController(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/network/RecognizerController;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/google/glass/voice/network/RecognizerController;->startListening(Lcom/google/glass/voice/VoiceConfig;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private startReadingFromMicrophone(Ljava/io/InputStream;)V
    .locals 3
    .parameter "inputStream"

    .prologue
    .line 1048
    new-instance v0, Lcom/google/glass/voice/VoiceService$13;

    const-string v1, "MicrophoneRead"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/voice/VoiceService$13;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 1071
    .local v0, readThread:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to start microphone read thread but was already listening"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :goto_0
    return-void

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1077
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to start microphone read thread but already had a microphone thread running"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1082
    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    .line 1083
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private startSensory(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 1091
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1092
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting voice recognition with config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1094
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->startReadingFromMicrophone(Ljava/io/InputStream;)V

    .line 1095
    return-void
.end method

.method private startVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->startMicrophone()V

    .line 993
    iget-object v0, p1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v0, v1, :cond_0

    .line 994
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->startSensory(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1000
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-object v0, p1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v0, v1, :cond_1

    .line 996
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 998
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown voice config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startVoiceConfigWithRetries(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V
    .locals 7
    .parameter "config"
    .parameter "retryStrategy"
    .parameter "attemptsMade"

    .prologue
    .line 952
    iget-boolean v4, p0, Lcom/google/glass/voice/VoiceService;->destroyed:Z

    if-eqz v4, :cond_0

    .line 953
    sget-object v4, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v5, "Voice service destroyed; giving up starting voice config."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :goto_0
    return-void

    .line 957
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 958
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->startVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    :try_end_0
    .catch Lcom/google/glass/voice/MicrophoneInputException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 959
    :catch_0
    move-exception v2

    .line 962
    .local v2, e:Lcom/google/glass/voice/MicrophoneInputException;
    invoke-virtual {p2, p3}, Lcom/google/glass/util/RetryStrategy;->tryAgain(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 963
    sget-object v4, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to open mic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times; giving up."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 966
    :cond_1
    invoke-virtual {p2, p3}, Lcom/google/glass/util/RetryStrategy;->getDelayMillis(I)I

    move-result v4

    int-to-long v0, v4

    .line 967
    .local v0, delayMillis:J
    sget-object v4, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error opening mic, will retry in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    move v3, p3

    .line 970
    .local v3, finalAttemptsMade:I
    sget-object v4, Lcom/google/glass/voice/VoiceService;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/google/glass/voice/VoiceService$12;

    invoke-direct {v5, p0, p1, p2, v3}, Lcom/google/glass/voice/VoiceService$12;-><init>(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v0, v1, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 977
    .end local v0           #delayMillis:J
    .end local v2           #e:Lcom/google/glass/voice/MicrophoneInputException;
    .end local v3           #finalAttemptsMade:I
    :catch_1
    move-exception v2

    .line 978
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception starting microphone for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopMicrophone()V
    .locals 1

    .prologue
    .line 1034
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1035
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->stopListening()V

    .line 1037
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->finishSavingAudio()V

    .line 1041
    :cond_0
    return-void
.end method

.method private stopNetworkRecognizer()V
    .locals 1

    .prologue
    .line 1176
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1177
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getRecognizerController(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/network/RecognizerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->cancel()V

    .line 1178
    return-void
.end method

.method private stopSensory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1102
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1103
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1107
    :cond_0
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Stopping reading from mic for Sensory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1110
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1111
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    :cond_1
    iput-object v3, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    .line 1119
    :goto_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v1}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1120
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->finishSavingAudio()V

    .line 1123
    :cond_2
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Stopping active recognition"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceService;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to stop reading from mic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    iput-object v3, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    throw v1
.end method

.method private updateConfigs()V
    .locals 0

    .prologue
    .line 861
    return-void
.end method


# virtual methods
.method areDynamicGrammarsInvalid()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getLastSensoryRecognitionResult()Lcom/google/glass/voice/VoiceCommandRecognitionResult;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryRecognitionResult:Lcom/google/glass/voice/VoiceCommandRecognitionResult;

    return-object v0
.end method

.method invalidateGrammars(Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 560
    new-instance v0, Lcom/google/glass/voice/VoiceService$8;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceService$8;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    .line 567
    return-void
.end method

.method public onAmplitudeChanged(D)V
    .locals 1
    .parameter "amplitude"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceAmplitudeChanged(D)V

    .line 832
    :cond_0
    return-void
.end method

.method public onAudioData([BII)V
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0xa0

    .line 687
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v2, v3, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-eq v2, v3, :cond_0

    .line 705
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->getActiveRecognizer()Lcom/google/glass/voice/Sensory;

    move-result-object v1

    .line 707
    .local v1, recognizer:Lcom/google/glass/voice/Sensory;
    if-eqz v1, :cond_0

    .line 711
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioRecordingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 712
    if-le p3, v5, :cond_2

    .line 717
    sget-object v2, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes of audio data but can only buffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; ignoring this audio sample."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 722
    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioRecordingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 735
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v2}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p3, v5, :cond_3

    .line 736
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/glass/logging/audio/AudioSaver;->saveAudio([BII)V

    .line 740
    :cond_3
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioRecordingBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v3}, Lcom/google/glass/voice/MicrophoneInputStream;->getSampleRate()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/voice/Sensory;->pipePhrasespot(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/VoiceCommandRecognitionResult;

    move-result-object v0

    .line 743
    .local v0, recognitionResult:Lcom/google/glass/voice/VoiceCommandRecognitionResult;
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->sensoryRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/util/CircularByteBuffer;->put(Ljava/nio/ByteBuffer;)V

    .line 745
    if-eqz v0, :cond_0

    .line 750
    sget-object v2, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v3, "Sensory triggered a recognition result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v2, 0x4

    sget-object v3, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recognition result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->getSensoryResult()Lcom/google/glass/voice/SensoryResult;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/logging/audio/AudioSaver;->onResult(Lcom/google/glass/voice/SensoryResult;)V

    .line 754
    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryRecognitionResult:Lcom/google/glass/voice/VoiceCommandRecognitionResult;

    .line 755
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->sensoryRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-static {v0, v2}, Lcom/google/glass/voice/VoiceService;->getLastCommandAudio(Lcom/google/glass/voice/VoiceCommandRecognitionResult;Lcom/google/glass/util/CircularByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryCommandAudio:Ljava/nio/ByteBuffer;

    .line 756
    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/VoiceService;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 419
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v0

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->isUsingMockMicrophone()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->initializeInputStreams()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 449
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 451
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Creating VoiceService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v0, Lcom/google/glass/voice/VoiceService$7;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$7;-><init>(Lcom/google/glass/voice/VoiceService;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 628
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Destroying VoiceService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/voice/VoiceService;->destroyed:Z

    .line 636
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-eqz v1, :cond_0

    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v1}, Lcom/google/glass/voice/MicrophoneInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 644
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->headsetReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 645
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 647
    new-instance v1, Lcom/google/glass/voice/VoiceService$9;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceService$9;-><init>(Lcom/google/glass/voice/VoiceService;)V

    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    .line 654
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->destroyContainer()V

    .line 656
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    if-eqz v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->close()V

    .line 660
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 661
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Error closing microphone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResampledAudioData([BII)V
    .locals 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 666
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v1, v2, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v1, :cond_0

    .line 673
    new-array v0, p3, [B

    .line 674
    .local v0, copy:[B
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v3, p3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onTimestampedAudioData(J[BII)V
    .locals 0
    .parameter "startTime"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 838
    return-void
.end method

.method publishCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 4
    .parameter "command"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 801
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "publishCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publishCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 803
    new-instance v0, Lcom/google/glass/voice/VoiceService$10;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceService$10;-><init>(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceCommand;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    .line 815
    return-void
.end method

.method public refeedLastCommand()V
    .locals 6

    .prologue
    .line 864
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryCommandAudio:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_0

    .line 865
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No command to refeed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 868
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/glass/voice/VoiceService;->getMillis(J)J

    move-result-wide v1

    .line 869
    .local v1, refeedMillis:J
    sget-object v3, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "millis in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v0

    .line 871
    .local v0, r:Lcom/google/glass/voice/network/VoiceSearchContainer;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->microphoneInterleavingStream:Lcom/google/glass/voice/InterleavingInputStream;

    iget-object v4, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/InterleavingInputStream;->interleave(Ljava/nio/ByteBuffer;)V

    .line 872
    return-void
.end method

.method setListener(Lcom/google/glass/voice/VoiceServiceListener;)V
    .locals 5
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 842
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 843
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    .line 845
    if-eqz p1, :cond_0

    .line 848
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->missedCommands:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .local v0, missedCommand:Lcom/google/glass/voice/VoiceCommand;
    if-eqz v0, :cond_0

    .line 850
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Publishing queued voice command"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v1, 0x4

    sget-object v2, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Publishing queued voice command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceService;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0

    .line 856
    .end local v0           #missedCommand:Lcom/google/glass/voice/VoiceCommand;
    :cond_0
    return-void
.end method
