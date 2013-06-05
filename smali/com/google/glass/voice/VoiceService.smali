.class public Lcom/google/glass/voice/VoiceService;
.super Landroid/app/Service;
.source "VoiceService.java"

# interfaces
.implements Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;
.implements Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceService$15;,
        Lcom/google/glass/voice/VoiceService$VoiceConfigState;,
        Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;,
        Lcom/google/glass/voice/VoiceService$InputEffectsConfigChangeListener;,
        Lcom/google/glass/voice/VoiceService$ConfigChangeListener;
    }
.end annotation


# static fields
.field private static final ALLOW_INPUT_EFFECTS_PARAMETER_NAME:Ljava/lang/String; = "allow_input_effects"

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

.field private static recognizerController:Lcom/google/glass/voice/network/RecognizerController;


# instance fields
.field private activeRecognizer:Lcom/google/glass/voice/Sensory;

.field private audioRecordingBuffer:Ljava/nio/ByteBuffer;

.field private audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

.field private final binder:Landroid/os/IBinder;

.field private configChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/VoiceService$ConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentConfig:Lcom/google/glass/voice/VoiceConfig;

.field private currentConfigDescriptor:Lcom/google/glass/voice/VoiceConfigDescriptor;

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
    .line 72
    const-class v0, Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    .line 95
    const/16 v0, 0x64

    const-wide/high16 v1, 0x4000

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/RetryStrategy;->exponentialBackoff(IDI)Lcom/google/glass/util/RetryStrategy;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->MIC_ACQUIRE_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

    .line 122
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/VoiceService;->SENSORY_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    .line 398
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

    .line 400
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 128
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 129
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->OFF:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->currentConfigDescriptor:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->loadedRecognizers:Ljava/util/Map;

    .line 186
    new-array v0, v4, [Lcom/google/glass/voice/VoiceService$InputEffectsConfigChangeListener;

    new-instance v1, Lcom/google/glass/voice/VoiceService$InputEffectsConfigChangeListener;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceService$InputEffectsConfigChangeListener;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->configChangeListeners:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 198
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->missedCommands:Ljava/util/Queue;

    .line 204
    new-instance v0, Lcom/google/glass/voice/VoiceService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$1;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->handler:Landroid/os/Handler;

    .line 226
    new-instance v0, Lcom/google/glass/voice/VoiceService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$2;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 239
    new-instance v0, Lcom/google/glass/voice/VoiceService$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$3;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->headsetReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 254
    new-instance v0, Lcom/google/glass/voice/VoiceService$4;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$4;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 271
    new-instance v0, Lcom/google/glass/voice/VoiceService$5;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$5;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 383
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 396
    new-instance v0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/util/PowerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->attachVoiceSearchUi()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->detachVoiceSearchUi()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->endpointNetworkRecognizer()V

    return-void
.end method

.method static synthetic access$1302(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/RecognizerController;
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput-object p0, Lcom/google/glass/voice/VoiceService;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->initialize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->compileDynamicGrammars()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->closeSensoryRecognizers()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceCommand;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->setConfigToTarget()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/VoiceService;->setConfigAsync(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceService;->startVoiceConfigWithRetries(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/glass/voice/VoiceService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/glass/voice/VoiceService;[BII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceService;->handleAudioData([BII)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/VoiceService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->updateConfigs()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/voice/VoiceService;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/voice/VoiceService;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService;->pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private attachVoiceSearchUi()V
    .locals 2

    .prologue
    .line 1273
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1274
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 1283
    :goto_0
    return-void

    .line 1278
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/VoiceSearchUi;

    .line 1279
    .local v0, voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;
    if-eqz v0, :cond_1

    .line 1280
    sget-object v1, Lcom/google/glass/voice/VoiceService;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/network/RecognizerController;->attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V

    .line 1282
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/voice/VoiceService;->pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method private closeSensoryRecognizers()V
    .locals 3

    .prologue
    .line 1339
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1340
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

    .line 1341
    .local v1, recognizer:Lcom/google/glass/voice/Sensory;
    if-eqz v1, :cond_0

    .line 1342
    invoke-virtual {v1}, Lcom/google/glass/voice/Sensory;->closePhrasespot()V

    goto :goto_0

    .line 1346
    .end local v1           #recognizer:Lcom/google/glass/voice/Sensory;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1347
    return-void
.end method

.method private compileDynamicGrammars()V
    .locals 3

    .prologue
    .line 623
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 624
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Grammars already up-to-date."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 630
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 632
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->THIRD_PARTY_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->ADDITIONAL_COMMANDS:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method private createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;
    .locals 3

    .prologue
    const/16 v2, 0x3e80

    .line 587
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Creating MIS..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "...using mock microphone."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v0, Lcom/google/glass/voice/MockMicrophoneInputStream;

    invoke-direct {v0, p0, p0, v2}, Lcom/google/glass/voice/MockMicrophoneInputStream;-><init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    .line 593
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
    .line 1287
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->pendingVoiceSearchUi:Ljava/lang/ref/WeakReference;

    .line 1289
    sget-boolean v0, Lcom/google/glass/voice/VoiceService;->networkRecognitionDisabledForTest:Z

    if-nez v0, :cond_0

    .line 1290
    sget-object v0, Lcom/google/glass/voice/VoiceService;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->detachVoiceSearchUi()V

    .line 1292
    :cond_0
    return-void
.end method

.method private doInBackground(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 485
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 487
    .local v0, exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    sget-object v1, Lcom/google/glass/voice/VoiceService;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/glass/voice/VoiceService$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/glass/voice/VoiceService$7;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/lang/Runnable;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 498
    return-void
.end method

.method private endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 1296
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1297
    sget-object v0, Lcom/google/glass/voice/VoiceService;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->stopListening()V

    .line 1298
    return-void
.end method

.method private finishSavingAudio()V
    .locals 3

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->finishSavingAudio()V

    .line 823
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/audio/AudioSaver;->registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V

    .line 824
    return-void
.end method

.method private declared-synchronized getActiveRecognizer()Lcom/google/glass/voice/Sensory;
    .locals 1

    .prologue
    .line 1334
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
    .line 438
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 439
    sget-object v0, Lcom/google/glass/voice/VoiceService;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 444
    sget-object v0, Lcom/google/glass/voice/VoiceService;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    return-object v0
.end method

.method private static getByteLength(J)I
    .locals 2
    .parameter "millis"

    .prologue
    .line 827
    const-wide/16 v0, 0x3e80

    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->toByteLength(JJ)I

    move-result v0

    return v0
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
    .line 645
    invoke-static {p0}, Lcom/google/glass/voice/VoiceService;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/voice/VoiceService;->getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;

    move-result-object v0

    .line 648
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

.method private getCustomVoiceConfig([Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "phrases"
    .parameter "tags"

    .prologue
    .line 1035
    const-string v0, "CUSTOM"

    invoke-static {p0, v0, p1, p2}, Lcom/google/glass/voice/VoiceConfig;->newCustomVoiceConfig(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
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
    .line 653
    if-eqz p1, :cond_0

    .line 654
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/entity/EntityHelper;->getPlusEntityForUser(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 659
    .local v0, user:Lcom/google/googlex/glass/common/proto/Entity;
    :goto_0
    if-eqz v0, :cond_1

    .line 660
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 662
    :goto_1
    return-object v1

    .line 656
    .end local v0           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .restart local v0       #user:Lcom/google/googlex/glass/common/proto/Entity;
    goto :goto_0

    .line 662
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method private getHybridVoiceConfig([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 6
    .parameter "systemVoiceConfigs"
    .parameter "customPhrases"
    .parameter "customTags"

    .prologue
    .line 1044
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1045
    .local v1, components:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/VoiceConfig;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/google/glass/voice/SystemVoiceConfig;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1046
    .local v4, systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    invoke-direct {p0, v4}, Lcom/google/glass/voice/VoiceService;->getSystemVoiceConfig(Lcom/google/glass/voice/SystemVoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1049
    .end local v4           #systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    :cond_0
    array-length v5, p2

    if-lez v5, :cond_1

    .line 1050
    invoke-direct {p0, p2, p3}, Lcom/google/glass/voice/VoiceService;->getCustomVoiceConfig([Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/glass/voice/VoiceConfig;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/glass/voice/VoiceConfig;

    invoke-static {v5}, Lcom/google/glass/voice/VoiceConfig;->newHybridVoiceConfig([Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    return-object v5
.end method

.method private static getLastCommandAudio(Lcom/google/glass/voice/VoiceCommandRecognitionResult;Lcom/google/glass/util/CircularByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9
    .parameter "recognitionResult"
    .parameter "sensoryRefeedBuffer"

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->getSensoryResult()Lcom/google/glass/voice/SensoryResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/voice/SensoryResult;->getPhraseDurationMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    add-long v1, v5, v7

    .line 801
    .local v1, millis:J
    sget-wide v5, Lcom/google/glass/voice/VoiceService;->SENSORY_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    invoke-static {v5, v6}, Lcom/google/glass/voice/VoiceService;->getByteLength(J)I

    move-result v4

    .line 802
    .local v4, totalBufferLength:I
    invoke-static {v1, v2}, Lcom/google/glass/voice/VoiceService;->getByteLength(J)I

    move-result v3

    .line 804
    .local v3, refeedLength:I
    if-le v3, v4, :cond_0

    .line 805
    sget-object v5, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v6, "Cannot refeed last command, sensory refeed buffer too small."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 813
    :goto_0
    return-object v0

    .line 809
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

    .line 810
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 811
    .local v0, copy:Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v0, v3}, Lcom/google/glass/util/CircularByteBuffer;->getLast(Ljava/nio/ByteBuffer;I)V

    .line 812
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 1057
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getMainMenuConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 1061
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMillis(J)J
    .locals 2
    .parameter "byteLength"

    .prologue
    .line 831
    const-wide/16 v0, 0x3e80

    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->toMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 1

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->isUsingMockMicrophone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    check-cast v0, Lcom/google/glass/voice/MockMicrophoneInputStream;

    .line 1139
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
    .line 638
    invoke-static {p0}, Lcom/google/glass/voice/VoiceService;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/glass/voice/VoiceService;->getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;

    move-result-object v0

    .line 641
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
    .line 567
    invoke-virtual {p1, p0}, Lcom/google/glass/voice/VoiceConfig;->getSensoryRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/Sensory;

    move-result-object v0

    return-object v0
.end method

.method private getSystemVoiceConfig(Lcom/google/glass/voice/SystemVoiceConfig;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .parameter "systemVoiceConfig"

    .prologue
    .line 1003
    sget-object v0, Lcom/google/glass/voice/VoiceService$15;->$SwitchMap$com$google$glass$voice$SystemVoiceConfig:[I

    invoke-virtual {p1}, Lcom/google/glass/voice/SystemVoiceConfig;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1028
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown system voice config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1005
    :pswitch_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    .line 1025
    :goto_0
    return-object v0

    .line 1007
    :pswitch_1
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 1009
    :pswitch_2
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 1011
    :pswitch_3
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->NAVIGATION:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 1013
    :pswitch_4
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 1015
    :pswitch_5
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 1017
    :pswitch_6
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 1019
    :pswitch_7
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 1021
    :pswitch_8
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->SEARCH:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 1023
    :pswitch_9
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 1025
    :pswitch_a
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 1003
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private getVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)Lcom/google/glass/voice/VoiceConfig;
    .locals 6
    .parameter "descriptor"

    .prologue
    .line 980
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->getSystemVoiceConfigs()[Lcom/google/glass/voice/SystemVoiceConfig;

    move-result-object v2

    .line 981
    .local v2, systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, customPhrases:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->getCustomTags()[Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, customTags:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    array-length v3, v0

    if-nez v3, :cond_0

    .line 985
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lcom/google/glass/voice/VoiceService;->getSystemVoiceConfig(Lcom/google/glass/voice/SystemVoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v3

    .line 993
    :goto_0
    return-object v3

    .line 988
    :cond_0
    array-length v3, v2

    if-nez v3, :cond_1

    .line 989
    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/VoiceService;->getCustomVoiceConfig([Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v3

    goto :goto_0

    .line 992
    :cond_1
    array-length v3, v2

    if-lez v3, :cond_2

    .line 993
    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/voice/VoiceService;->getHybridVoiceConfig([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v3

    goto :goto_0

    .line 996
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal voice config description: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private handleAudioData([BII)V
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 731
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v2, v3, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioRecordingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 736
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioRecordingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 738
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v3, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v2, v3, :cond_2

    .line 740
    :try_start_0
    sget-boolean v2, Lcom/google/glass/voice/VoiceService;->networkRecognitionDisabledForTest:Z

    if-nez v2, :cond_0

    .line 744
    sget-object v2, Lcom/google/glass/voice/VoiceService;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->audioRecordingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->writeAudio(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v2

    goto :goto_0

    .line 761
    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v2}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa0

    if-ne p3, v2, :cond_3

    .line 762
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/glass/logging/audio/AudioSaver;->saveAudio([BII)V

    .line 766
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->getActiveRecognizer()Lcom/google/glass/voice/Sensory;

    move-result-object v1

    .line 768
    .local v1, recognizer:Lcom/google/glass/voice/Sensory;
    if-nez v1, :cond_4

    .line 769
    sget-object v2, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v3, "Ignoring audio due to null recognizer."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 774
    :cond_4
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioRecordingBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v3}, Lcom/google/glass/voice/MicrophoneInputStream;->getSampleRate()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/voice/Sensory;->pipePhrasespot(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/VoiceCommandRecognitionResult;

    move-result-object v0

    .line 777
    .local v0, recognitionResult:Lcom/google/glass/voice/VoiceCommandRecognitionResult;
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->sensoryRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/util/CircularByteBuffer;->put(Ljava/nio/ByteBuffer;)V

    .line 779
    if-eqz v0, :cond_0

    .line 784
    sget-object v2, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v3, "Sensory triggered a recognition result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
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

    .line 787
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->getSensoryResult()Lcom/google/glass/voice/SensoryResult;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/logging/audio/AudioSaver;->onResult(Lcom/google/glass/voice/SensoryResult;)V

    .line 788
    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryRecognitionResult:Lcom/google/glass/voice/VoiceCommandRecognitionResult;

    .line 789
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->sensoryRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-static {v0, v2}, Lcom/google/glass/voice/VoiceService;->getLastCommandAudio(Lcom/google/glass/voice/VoiceCommandRecognitionResult;Lcom/google/glass/util/CircularByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryCommandAudio:Ljava/nio/ByteBuffer;

    .line 790
    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/VoiceService;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V

    goto/16 :goto_0
.end method

.method public static hasContacts(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 418
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
    .line 427
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

    .line 518
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 519
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Initializing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/16 v0, 0xa0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioRecordingBuffer:Ljava/nio/ByteBuffer;

    .line 521
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

    .line 524
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 526
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->headsetReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.google.glass.action.CALL_SETUP_STATE"

    aput-object v2, v1, v5

    const-string v2, "com.google.glass.action.CALL_STATE"

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-static {p0}, Lcom/google/glass/voice/Sensory;->initialize(Landroid/content/Context;)V

    .line 531
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 532
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 533
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 536
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->compileDynamicGrammars()V

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->activeRecognizer:Lcom/google/glass/voice/Sensory;

    .line 540
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-nez v0, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->initializeInputStreams()V

    .line 544
    :cond_0
    invoke-static {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createContainer(Landroid/content/Context;)V

    .line 545
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getRecognizerController(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/network/RecognizerController;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    .line 547
    new-instance v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    .line 548
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-static {p0, v1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createS3SavedAudioSyncer(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;-><init>(Lcom/google/glass/logging/audio/SavedAudioSyncer;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    .line 554
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.glass.ACTION_GUEST_MODE"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    return-void
.end method

.method private initializeInputStreams()V
    .locals 2

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    .line 579
    const-wide/16 v0, 0x3e80

    invoke-static {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 580
    return-void
.end method

.method private static isGuestModeEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 666
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v0

    return v0
.end method

.method private isUsingMockMicrophone()Z
    .locals 1

    .prologue
    .line 583
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
    .line 559
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->loadedRecognizers:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->getRecognizer(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/Sensory;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    return-void
.end method

.method private onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 974
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->configChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceService$ConfigChangeListener;

    .line 975
    .local v0, configChangeListener:Lcom/google/glass/voice/VoiceService$ConfigChangeListener;
    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/VoiceService$ConfigChangeListener;->onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 977
    .end local v0           #configChangeListener:Lcom/google/glass/voice/VoiceService$ConfigChangeListener;
    :cond_0
    return-void
.end method

.method private queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 4
    .parameter "command"

    .prologue
    .line 853
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 854
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

    .line 855
    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 856
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 859
    return-void
.end method

.method private declared-synchronized setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 1311
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1313
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->loadRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->activeRecognizer:Lcom/google/glass/voice/Sensory;

    if-eqz v0, :cond_1

    .line 1322
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->activeRecognizer:Lcom/google/glass/voice/Sensory;

    invoke-virtual {v0}, Lcom/google/glass/voice/Sensory;->reinitialize()V

    .line 1324
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/Sensory;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->activeRecognizer:Lcom/google/glass/voice/Sensory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    monitor-exit p0

    return-void

    .line 1311
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
    .line 432
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 433
    sput-object p0, Lcom/google/glass/voice/VoiceService;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 434
    return-void
.end method

.method public static setBackgroundThreadFactory(Lcom/google/glass/util/ThreadCheckThreadFactory;)V
    .locals 0
    .parameter "backgroundThreadFactory"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 449
    sput-object p0, Lcom/google/glass/voice/VoiceService;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    .line 450
    return-void
.end method

.method private setConfigAsync(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V
    .locals 2
    .parameter "config"
    .parameter "allowScreenOff"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/glass/voice/VoiceService$VoiceConfigState;

    invoke-direct {v1, p1, p2}, Lcom/google/glass/voice/VoiceService$VoiceConfigState;-><init>(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 910
    new-instance v0, Lcom/google/glass/voice/VoiceService$12;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$12;-><init>(Lcom/google/glass/voice/VoiceService;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    .line 916
    return-void
.end method

.method private setConfigToTarget()V
    .locals 6

    .prologue
    .line 919
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 920
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/VoiceService$VoiceConfigState;

    .line 921
    .local v2, configState:Lcom/google/glass/voice/VoiceService$VoiceConfigState;
    if-nez v2, :cond_0

    .line 922
    sget-object v3, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v4, "Delayed setConfigAsync call processed without a valid target configuration."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_0
    #getter for: Lcom/google/glass/voice/VoiceService$VoiceConfigState;->config:Lcom/google/glass/voice/VoiceConfigDescriptor;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceService$VoiceConfigState;->access$1900(Lcom/google/glass/voice/VoiceService$VoiceConfigState;)Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/glass/voice/VoiceService;->getVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 926
    .local v1, config:Lcom/google/glass/voice/VoiceConfig;
    #getter for: Lcom/google/glass/voice/VoiceService$VoiceConfigState;->config:Lcom/google/glass/voice/VoiceConfigDescriptor;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceService$VoiceConfigState;->access$1900(Lcom/google/glass/voice/VoiceService$VoiceConfigState;)Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/voice/VoiceService;->currentConfigDescriptor:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 927
    #getter for: Lcom/google/glass/voice/VoiceService$VoiceConfigState;->allowScreenOff:Z
    invoke-static {v2}, Lcom/google/glass/voice/VoiceService$VoiceConfigState;->access$2000(Lcom/google/glass/voice/VoiceService$VoiceConfigState;)Z

    move-result v0

    .line 928
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

    .line 933
    if-nez v0, :cond_1

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 934
    sget-object v3, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v4, "Attempt to set a VoiceConfig while screen is off - setting to OFF instead."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 938
    :cond_1
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->isValidConfig()Z

    move-result v3

    if-nez v3, :cond_2

    .line 939
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

    .line 940
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 943
    :cond_2
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    if-eq v3, v1, :cond_3

    .line 944
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

    .line 945
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v3, v1}, Lcom/google/glass/voice/VoiceService;->onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V

    .line 946
    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v1, v3, :cond_4

    .line 948
    iput-object v1, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 949
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->stopReadingFromMicrophone()V

    .line 950
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->stopSensory()V

    .line 951
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->stopNetworkRecognizer()V

    .line 952
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->stopMicrophone()V

    .line 971
    :cond_3
    :goto_0
    return-void

    .line 954
    :cond_4
    iget-object v3, v1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v3, v4, :cond_6

    .line 955
    iget-boolean v3, v1, Lcom/google/glass/voice/VoiceConfig;->isDynamic:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 958
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->finishSavingAudio()V

    .line 961
    :cond_5
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    iget-object v3, v3, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v3, v4, :cond_6

    .line 962
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->stopNetworkRecognizer()V

    .line 966
    :cond_6
    iput-object v1, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 967
    sget-object v3, Lcom/google/glass/voice/VoiceService;->MIC_ACQUIRE_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/google/glass/voice/VoiceService;->startVoiceConfigWithRetries(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V

    .line 968
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-direct {p0, v3}, Lcom/google/glass/voice/VoiceService;->startReadingFromMicrophone(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static setNetworkRecognitionDisabledForTest(Z)V
    .locals 0
    .parameter "networkRecognitionDisabled"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 455
    sput-boolean p0, Lcom/google/glass/voice/VoiceService;->networkRecognitionDisabledForTest:Z

    .line 456
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
    .line 1149
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1150
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->prepareToSaveAudio()V

    .line 1152
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->startListening()V

    .line 1154
    :cond_0
    return-void
.end method

.method private startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 1262
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1264
    sget-boolean v0, Lcom/google/glass/voice/VoiceService;->networkRecognitionDisabledForTest:Z

    if-eqz v0, :cond_0

    .line 1269
    :goto_0
    return-void

    .line 1268
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceService;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0, p1, p0}, Lcom/google/glass/voice/network/RecognizerController;->startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;)V

    goto :goto_0
.end method

.method private startReadingFromMicrophone(Ljava/io/InputStream;)V
    .locals 3
    .parameter "inputStream"

    .prologue
    .line 1175
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1179
    :cond_0
    new-instance v0, Lcom/google/glass/voice/VoiceService$14;

    const-string v1, "MicrophoneRead"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/voice/VoiceService$14;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 1204
    .local v0, readThread:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1205
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to start microphone read thread but already had a microphone thread running"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_1
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Starting MicrophoneRead thread to write to handleAudioData"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1212
    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    .line 1213
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private startSensory(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 1221
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1222
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

    .line 1223
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1224
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
    .line 1111
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    if-ne p1, v0, :cond_0

    .line 1113
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->stopMicrophone()V

    .line 1120
    :goto_0
    iget-object v0, p1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v0, v1, :cond_1

    .line 1121
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->startSensory(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1127
    :goto_1
    return-void

    .line 1116
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->startMicrophone()V

    goto :goto_0

    .line 1122
    :cond_1
    iget-object v0, p1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v0, v1, :cond_2

    .line 1123
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_1

    .line 1125
    :cond_2
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

    goto :goto_1
.end method

.method private startVoiceConfigWithRetries(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V
    .locals 7
    .parameter "config"
    .parameter "retryStrategy"
    .parameter "attemptsMade"

    .prologue
    .line 1072
    iget-boolean v4, p0, Lcom/google/glass/voice/VoiceService;->destroyed:Z

    if-eqz v4, :cond_0

    .line 1073
    sget-object v4, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v5, "Voice service destroyed; giving up starting voice config."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :goto_0
    return-void

    .line 1077
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 1078
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceService;->startVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    :try_end_0
    .catch Lcom/google/glass/voice/MicrophoneInputException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1079
    :catch_0
    move-exception v2

    .line 1082
    .local v2, e:Lcom/google/glass/voice/MicrophoneInputException;
    invoke-virtual {p2, p3}, Lcom/google/glass/util/RetryStrategy;->tryAgain(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1083
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

    .line 1084
    sget-object v4, Lcom/google/glass/logging/GlassError;->AUDIO_CONTENTION_ERROR:Lcom/google/glass/logging/GlassError;

    invoke-static {p0, v4}, Lcom/google/glass/logging/GlassError;->report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    goto :goto_0

    .line 1087
    :cond_1
    invoke-virtual {p2, p3}, Lcom/google/glass/util/RetryStrategy;->getDelayMillis(I)I

    move-result v4

    int-to-long v0, v4

    .line 1088
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

    .line 1090
    move v3, p3

    .line 1092
    .local v3, finalAttemptsMade:I
    sget-object v4, Lcom/google/glass/voice/VoiceService;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/google/glass/voice/VoiceService$13;

    invoke-direct {v5, p0, p1, p2, v3}, Lcom/google/glass/voice/VoiceService$13;-><init>(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v0, v1, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 1099
    .end local v0           #delayMillis:J
    .end local v2           #e:Lcom/google/glass/voice/MicrophoneInputException;
    .end local v3           #finalAttemptsMade:I
    :catch_1
    move-exception v2

    .line 1100
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
    .line 1161
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1162
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->stopListening()V

    .line 1164
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->finishSavingAudio()V

    .line 1168
    :cond_0
    return-void
.end method

.method private stopNetworkRecognizer()V
    .locals 1

    .prologue
    .line 1305
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1306
    sget-object v0, Lcom/google/glass/voice/VoiceService;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->cancel()V

    .line 1307
    return-void
.end method

.method private stopReadingFromMicrophone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1231
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Stopping reading from microphone thread."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1238
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1239
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :cond_2
    iput-object v3, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    .line 1247
    :goto_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v1}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1248
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->finishSavingAudio()V

    goto :goto_0

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to stop reading from mic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1244
    iput-object v3, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/google/glass/voice/VoiceService;->microphoneReadThread:Ljava/lang/Thread;

    throw v1
.end method

.method private stopSensory()V
    .locals 2

    .prologue
    .line 1253
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Stopping sensory recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1255
    return-void
.end method

.method private updateConfigs()V
    .locals 0

    .prologue
    .line 896
    return-void
.end method


# virtual methods
.method areDynamicGrammarsInvalid()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public getLastSensoryRecognitionResult()Lcom/google/glass/voice/VoiceCommandRecognitionResult;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryRecognitionResult:Lcom/google/glass/voice/VoiceCommandRecognitionResult;

    return-object v0
.end method

.method public getVoiceConfigDescriptor()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->currentConfigDescriptor:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method invalidateGrammars(Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 604
    new-instance v0, Lcom/google/glass/voice/VoiceService$9;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceService$9;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    .line 611
    return-void
.end method

.method public onAmplitudeChanged(D)V
    .locals 1
    .parameter "amplitude"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceAmplitudeChanged(D)V

    .line 867
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 461
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v0

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->isUsingMockMicrophone()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->initializeInputStreams()V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 502
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 504
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Creating VoiceService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v0, Lcom/google/glass/voice/VoiceService$8;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$8;-><init>(Lcom/google/glass/voice/VoiceService;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 671
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Destroying VoiceService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/voice/VoiceService;->destroyed:Z

    .line 679
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-eqz v1, :cond_0

    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v1}, Lcom/google/glass/voice/MicrophoneInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 687
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->headsetReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 688
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 690
    new-instance v1, Lcom/google/glass/voice/VoiceService$10;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceService$10;-><init>(Lcom/google/glass/voice/VoiceService;)V

    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    .line 697
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->destroyContainer()V

    .line 699
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->close()V

    .line 703
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 704
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 683
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

    .line 709
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v1, v2, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v1, :cond_0

    .line 716
    new-array v0, p3, [B

    .line 717
    .local v0, copy:[B
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 723
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
    .line 873
    return-void
.end method

.method public overrideControllerForTesting(Lcom/google/glass/voice/network/RecognizerController;)V
    .locals 1
    .parameter "rc"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 470
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 471
    new-instance v0, Lcom/google/glass/voice/VoiceService$6;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceService$6;-><init>(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/network/RecognizerController;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method publishCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 4
    .parameter "command"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 836
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "publishCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
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

    .line 838
    new-instance v0, Lcom/google/glass/voice/VoiceService$11;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceService$11;-><init>(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/voice/VoiceCommand;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService;->doInBackground(Ljava/lang/Runnable;)V

    .line 850
    return-void
.end method

.method public refeedLastCommand()V
    .locals 5

    .prologue
    .line 899
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryCommandAudio:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 900
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No command to refeed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 903
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/google/glass/voice/VoiceService;->getMillis(J)J

    move-result-wide v0

    .line 904
    .local v0, refeedMillis:J
    sget-object v2, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "millis in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    sget-object v2, Lcom/google/glass/voice/VoiceService;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceService;->lastSensoryCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->interleave(Ljava/nio/ByteBuffer;)V

    .line 906
    return-void
.end method

.method setListener(Lcom/google/glass/voice/VoiceServiceListener;)V
    .locals 5
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 877
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 878
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    .line 880
    if-eqz p1, :cond_0

    .line 883
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->missedCommands:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .local v0, missedCommand:Lcom/google/glass/voice/VoiceCommand;
    if-eqz v0, :cond_0

    .line 885
    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Publishing queued voice command"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
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

    .line 888
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceService;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0

    .line 891
    .end local v0           #missedCommand:Lcom/google/glass/voice/VoiceCommand;
    :cond_0
    return-void
.end method
