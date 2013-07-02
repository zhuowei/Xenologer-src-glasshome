.class public Lcom/google/glass/voice/VoiceEngine;
.super Landroid/content/ContextWrapper;
.source "VoiceEngine.java"

# interfaces
.implements Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;
.implements Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;,
        Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;,
        Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    }
.end annotation


# static fields
.field private static final ALLOW_INPUT_EFFECTS_PARAMETER_NAME:Ljava/lang/String; = "allow_input_effects"

#the value of this static final field might be set in the static constructor
.field static final HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J = 0x0L

.field private static final MAX_MISSED_COMMAND_COUNT:I = 0x5

.field private static final MIC_ACQUIRE_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy; = null

.field private static final MSG_POST_RESAMPLED_AUDIO_DATA:I = 0x1

.field private static final MSG_SCREEN_OFF:I = 0x0

.field static final PER_RECOGNIZER_AUDIO_LOGGING:Z = false

.field private static final READ_BUFFER_SIZE:I = 0xa0

.field private static final TAG:Ljava/lang/String;

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

.field private static networkRecognitionDisabledForTest:Z

.field private static recognizerController:Lcom/google/glass/voice/network/RecognizerController;


# instance fields
.field private activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

.field private audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

.field private audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

.field private configChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;",
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

.field private lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

.field private lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

.field private volatile listener:Lcom/google/glass/voice/VoiceServiceListener;

.field private microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

.field private volatile microphoneReadThread:Ljava/lang/Thread;

.field private mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

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

.field private final pauseLock:Ljava/lang/Object;

.field private volatile paused:Z

.field private pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/voice/network/VoiceInputCallback;",
            ">;"
        }
    .end annotation
.end field

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

.field private savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

.field private final screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private voiceConfigFactory:Lcom/google/glass/voice/VoiceConfigFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    const-class v0, Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    .line 83
    const/16 v0, 0x64

    const-wide/high16 v1, 0x4000

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/RetryStrategy;->exponentialBackoff(IDI)Lcom/google/glass/util/RetryStrategy;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->MIC_ACQUIRE_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/VoiceEngine;->HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    .line 334
    new-instance v0, Lcom/google/glass/util/ThreadCheckThreadFactory;

    new-instance v1, Lcom/google/glass/util/PriorityThreadFactory;

    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/backgroundExecutor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/glass/util/ThreadCheckThreadFactory;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    .line 336
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "base"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 386
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 105
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 106
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->OFF:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfigDescriptor:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pauseLock:Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/CommandRecognizerLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    .line 162
    new-array v0, v4, [Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;

    new-instance v1, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->configChangeListeners:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 174
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    .line 180
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$1;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->handler:Landroid/os/Handler;

    .line 202
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$2;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 215
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$3;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->headsetReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 230
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$4;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$4;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 246
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$5;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$5;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 321
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 387
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/util/PowerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->compileDynamicGrammars()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/CommandRecognizerLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceCommand;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingSetConfigToTarget()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceEngine;->startVoiceConfigWithRetries(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->checkPaused()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/voice/VoiceEngine;[BII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceEngine;->handleAudioData([BII)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceEngine;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingAttachVoiceInputCallback()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingDetachVoiceInputCallback()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingEndpointNetworkRecognizer()V

    return-void
.end method

.method static synthetic access$802(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/RecognizerController;
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    sput-object p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->initialize()V

    return-void
.end method

.method private blockingAttachVoiceInputCallback()V
    .locals 2

    .prologue
    .line 1135
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1136
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v1, :cond_0

    .line 1145
    :goto_0
    return-void

    .line 1140
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/VoiceInputCallback;

    .line 1141
    .local v0, voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;
    if-eqz v0, :cond_1

    .line 1142
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/network/RecognizerController;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)V

    .line 1144
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0
.end method

.method private blockingDetachVoiceInputCallback()V
    .locals 1

    .prologue
    .line 1149
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1151
    sget-boolean v0, Lcom/google/glass/voice/VoiceEngine;->networkRecognitionDisabledForTest:Z

    if-nez v0, :cond_0

    .line 1152
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->detachVoiceInputCallback()V

    .line 1154
    :cond_0
    return-void
.end method

.method private blockingEndpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 1158
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1159
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->stopListening()V

    .line 1160
    return-void
.end method

.method private blockingSetConfigToTarget()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 790
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 791
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;

    .line 792
    .local v2, configState:Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;
    if-nez v2, :cond_0

    .line 793
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v4, "Delayed setConfigAsync call processed without a valid target configuration."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->voiceConfigFactory:Lcom/google/glass/voice/VoiceConfigFactory;

    #getter for: Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->config:Lcom/google/glass/voice/VoiceConfigDescriptor;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->access$1400(Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;)Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/VoiceConfigFactory;->getVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 797
    .local v1, config:Lcom/google/glass/voice/VoiceConfig;
    #getter for: Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->config:Lcom/google/glass/voice/VoiceConfigDescriptor;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->access$1400(Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;)Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfigDescriptor:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 798
    #getter for: Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->allowScreenOff:Z
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->access$1500(Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;)Z

    move-result v0

    .line 799
    .local v0, allowScreenOff:Z
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConfig called with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    if-nez v0, :cond_1

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 805
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v4, "Attempt to set a VoiceConfig while screen is off - setting to OFF instead."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 809
    :cond_1
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->isValidConfig()Z

    move-result v3

    if-nez v3, :cond_2

    .line 810
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

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

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 814
    :cond_2
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    if-eq v3, v1, :cond_4

    .line 815
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoiceConfig changing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v3, v1}, Lcom/google/glass/voice/VoiceEngine;->onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V

    .line 817
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v3, :cond_3

    .line 818
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfigDescriptor:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-interface {v3, v4}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 820
    :cond_3
    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v1, v3, :cond_5

    .line 822
    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 823
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopReadingFromMicrophone()V

    .line 824
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopHotwordRecognition()V

    .line 825
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopNetworkRecognizer()V

    .line 826
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopMicrophone()V

    .line 845
    :cond_4
    :goto_0
    return-void

    .line 828
    :cond_5
    iget-object v3, v1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v3, v4, :cond_7

    .line 829
    iget-boolean v3, v1, Lcom/google/glass/voice/VoiceConfig;->isDynamic:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 832
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->finishSavingAudio()V

    .line 835
    :cond_6
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    iget-object v3, v3, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v3, v4, :cond_7

    .line 836
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopNetworkRecognizer()V

    .line 840
    :cond_7
    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 841
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->MIC_ACQUIRE_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

    invoke-direct {p0, v1, v3, v6}, Lcom/google/glass/voice/VoiceEngine;->startVoiceConfigWithRetries(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V

    .line 842
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-direct {p0, v3}, Lcom/google/glass/voice/VoiceEngine;->startReadingFromMicrophone(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private checkPaused()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1093
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 1094
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Can only check paused state on microphone read thread."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1097
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1098
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceEngine;->paused:Z

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 1101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1102
    return-void
.end method

.method private compileDisambiguationGrammars()V
    .locals 5

    .prologue
    .line 565
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 568
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-virtual {v4}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->getAllConfigs()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/CommandRecognizerLoader;->unload(Ljava/util/Collection;)V

    .line 570
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/ListMultimap;

    move-result-object v2

    .line 572
    .local v2, mirrorCommandEntities:Lcom/google/common/collect/ListMultimap;,"Lcom/google/common/collect/ListMultimap<Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;>;"
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-virtual {v3, v2}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->updateConfigs(Lcom/google/common/collect/ListMultimap;)V

    .line 575
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-virtual {v3}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->getAllConfigs()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 576
    .local v0, disambiguationConfig:Lcom/google/glass/voice/VoiceConfig;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v3, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 578
    .end local v0           #disambiguationConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    return-void
.end method

.method private compileDynamicGrammars()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 548
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 549
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v1, "Grammars already up-to-date."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V

    .line 555
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V

    .line 556
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V

    .line 558
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->THIRD_PARTY_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V

    .line 560
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->compileDisambiguationGrammars()V

    goto :goto_0
.end method

.method private createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;
    .locals 5

    .prologue
    const/16 v4, 0x3e80

    const/4 v3, 0x0

    .line 512
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v1, "Creating MIS..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v1, "...using mock microphone."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    new-instance v0, Lcom/google/glass/voice/MockMicrophoneInputStream;

    invoke-direct {v0, p0, p0, v4}, Lcom/google/glass/voice/MockMicrophoneInputStream;-><init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    .line 518
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-direct {v0, p0, p0, v4}, Lcom/google/glass/voice/MicrophoneInputStream;-><init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    goto :goto_0
.end method

.method private doInBackground(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 406
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 408
    .local v0, exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/glass/voice/VoiceEngine$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/glass/voice/VoiceEngine$10;-><init>(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/Runnable;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method private finishSavingAudio()V
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->finishSavingAudio()V

    .line 708
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/audio/AudioSaver;->registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V

    .line 709
    return-void
.end method

.method private declared-synchronized getActiveRecognizer()Lcom/google/glass/voice/HotwordRecognizer;
    .locals 1

    .prologue
    .line 1193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
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
    .line 365
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 366
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 371
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    return-object v0
.end method

.method private getEndpointerEventPreprocessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 484
    .local v0, eventPreprocessors:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;>;"
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->SOUND_SEARCH:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    new-instance v1, Lcom/google/glass/voice/SoundSearchEventPreprocessor;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/SoundSearchEventPreprocessor;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_0
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->NAV_CONTAMINATE_FIX:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    new-instance v1, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_1
    return-object v0
.end method

.method private handleAudioData([BII)V
    .locals 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v6, 0x0

    .line 639
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v3, v4, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 645
    .local v0, audioRecordingBuffer:Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    iget-object v3, v3, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v3, v4, :cond_2

    .line 647
    :try_start_0
    sget-boolean v3, Lcom/google/glass/voice/VoiceEngine;->networkRecognitionDisabledForTest:Z

    if-nez v3, :cond_0

    .line 651
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/network/RecognizerController;->writeAudio(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v3

    goto :goto_0

    .line 668
    :cond_2
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa0

    if-ne p3, v3, :cond_3

    .line 669
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3, p1, p2, p3}, Lcom/google/glass/logging/audio/AudioSaver;->saveAudio([BII)V

    .line 673
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->getActiveRecognizer()Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    .line 675
    .local v2, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    if-nez v2, :cond_4

    .line 676
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v4, "Ignoring audio due to null recognizer."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 681
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v4}, Lcom/google/glass/voice/MicrophoneInputStream;->getSampleRate()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/google/glass/voice/HotwordRecognizer;->writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;

    move-result-object v1

    .line 684
    .local v1, hotwordResult:Lcom/google/glass/voice/HotwordResult;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/util/CircularByteBuffer;->put(Ljava/nio/ByteBuffer;)Z

    .line 686
    if-eqz v1, :cond_0

    .line 691
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v4, "Hotword recognizer triggered a recognition result"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    const/4 v3, 0x4

    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recognition result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3, v1}, Lcom/google/glass/logging/audio/AudioSaver;->onResult(Lcom/google/glass/voice/HotwordResult;)V

    .line 695
    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    .line 696
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-static {v1, v3}, Lcom/google/glass/voice/AudioByteUtils;->getLastCommandAudio(Lcom/google/glass/voice/HotwordResult;Lcom/google/glass/util/CircularByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    .line 697
    invoke-virtual {v1}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/voice/VoiceEngine;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 435
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 436
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v1, "Initializing"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    new-instance v0, Lcom/google/glass/util/CircularByteBuffer;

    const-wide/16 v1, 0x3e80

    sget-wide v3, Lcom/google/glass/voice/VoiceEngine;->HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/CircularByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    .line 440
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 441
    new-instance v0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    .line 442
    new-instance v0, Lcom/google/glass/voice/VoiceConfigFactory;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->mirrorCommandHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceConfigFactory;-><init>(Landroid/content/Context;Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->voiceConfigFactory:Lcom/google/glass/voice/VoiceConfigFactory;

    .line 444
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->headsetReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.google.glass.action.CALL_SETUP_STATE"

    aput-object v2, v1, v5

    const-string v2, "com.google.glass.action.CALL_STATE"

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-static {p0}, Lcom/google/glass/voice/Sensory;->initialize(Landroid/content/Context;)V

    .line 450
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    aput-object v2, v1, v5

    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    aput-object v2, v1, v7

    const/4 v2, 0x3

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfig;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->SHARE:Lcom/google/glass/voice/VoiceConfig;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->INCOMING_CALL:Lcom/google/glass/voice/VoiceConfig;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load([Lcom/google/glass/voice/VoiceConfig;)V

    .line 459
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->compileDynamicGrammars()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    .line 463
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceEngine;->initializeInputStreams()V

    .line 467
    :cond_0
    invoke-static {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createContainer(Landroid/content/Context;)V

    .line 468
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->getEndpointerEventPreprocessors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getRecognizerController(Ljava/util/List;)Lcom/google/glass/voice/network/RecognizerController;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    .line 471
    new-instance v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    .line 472
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-static {p0, v1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createS3SavedAudioSyncer(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;-><init>(Lcom/google/glass/logging/audio/SavedAudioSyncer;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    .line 478
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.glass.ACTION_GUEST_MODE"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    return-void
.end method

.method private isUsingMockMicrophone()Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

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

.method private onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 848
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->configChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;

    .line 849
    .local v0, configChangeListener:Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;->onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 851
    .end local v0           #configChangeListener:Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    :cond_0
    return-void
.end method

.method private queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 4
    .parameter "command"

    .prologue
    .line 730
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 731
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queueing missed command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 732
    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 733
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 736
    return-void
.end method

.method private declared-synchronized setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 1173
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1175
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->deactivate()V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->getRecognizer(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    .line 1181
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    if-eqz v0, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->activate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    :cond_1
    monitor-exit p0

    return-void

    .line 1173
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
    .line 359
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 360
    sput-object p0, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 361
    return-void
.end method

.method public static setBackgroundThreadFactory(Lcom/google/glass/util/ThreadCheckThreadFactory;)V
    .locals 0
    .parameter "backgroundThreadFactory"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 376
    sput-object p0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    .line 377
    return-void
.end method

.method public static setNetworkRecognitionDisabledForTest(Z)V
    .locals 0
    .parameter "networkRecognitionDisabled"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 381
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 382
    sput-boolean p0, Lcom/google/glass/voice/VoiceEngine;->networkRecognitionDisabledForTest:Z

    .line 383
    return-void
.end method

.method private startHotwordRecognition(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 1109
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1110
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting voice recognition with config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1112
    return-void
.end method

.method private startMicrophone()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 946
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 947
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/logging/audio/AudioSaver;->prepareToSaveAudio(Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->startListening()V

    .line 951
    :cond_0
    return-void
.end method

.method private startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 1124
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1126
    sget-boolean v0, Lcom/google/glass/voice/VoiceEngine;->networkRecognitionDisabledForTest:Z

    if-eqz v0, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1130
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0, p1, p0}, Lcom/google/glass/voice/network/RecognizerController;->startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;)V

    goto :goto_0
.end method

.method private startReadingFromMicrophone(Ljava/io/InputStream;)V
    .locals 5
    .parameter "inputStream"

    .prologue
    const/4 v4, 0x0

    .line 973
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    :goto_0
    return-void

    .line 977
    :cond_0
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$17;

    const-string v1, "MicrophoneRead"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/voice/VoiceEngine$17;-><init>(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 1009
    .local v0, readThread:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1010
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to start microphone read thread but already had one running"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    :cond_1
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v2, "Starting MicrophoneRead thread to write to handleAudioData"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1015
    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    .line 1016
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
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
    .line 900
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    if-ne p1, v0, :cond_0

    .line 902
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopMicrophone()V

    .line 909
    :goto_0
    iget-object v0, p1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v0, v1, :cond_1

    .line 910
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->startHotwordRecognition(Lcom/google/glass/voice/VoiceConfig;)V

    .line 916
    :goto_1
    return-void

    .line 905
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->startMicrophone()V

    goto :goto_0

    .line 911
    :cond_1
    iget-object v0, p1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v0, v1, :cond_2

    .line 912
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_1

    .line 914
    :cond_2
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

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

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private startVoiceConfigWithRetries(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V
    .locals 8
    .parameter "config"
    .parameter "retryStrategy"
    .parameter "attemptsMade"

    .prologue
    const/4 v7, 0x0

    .line 861
    iget-boolean v4, p0, Lcom/google/glass/voice/VoiceEngine;->destroyed:Z

    if-eqz v4, :cond_0

    .line 862
    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v5, "Voice service destroyed; giving up starting voice config."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    :goto_0
    return-void

    .line 866
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 867
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->startVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    :try_end_0
    .catch Lcom/google/glass/voice/MicrophoneInputException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 868
    :catch_0
    move-exception v2

    .line 871
    .local v2, e:Lcom/google/glass/voice/MicrophoneInputException;
    invoke-virtual {p2, p3}, Lcom/google/glass/util/RetryStrategy;->tryAgain(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 872
    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

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

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    sget-object v4, Lcom/google/glass/logging/GlassError;->AUDIO_CONTENTION_ERROR:Lcom/google/glass/logging/GlassError;

    invoke-static {p0, v4}, Lcom/google/glass/logging/GlassError;->report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    goto :goto_0

    .line 876
    :cond_1
    invoke-virtual {p2, p3}, Lcom/google/glass/util/RetryStrategy;->getDelayMillis(I)I

    move-result v4

    int-to-long v0, v4

    .line 877
    .local v0, delayMillis:J
    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

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

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 879
    move v3, p3

    .line 881
    .local v3, finalAttemptsMade:I
    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/google/glass/voice/VoiceEngine$16;

    invoke-direct {v5, p0, p1, p2, v3}, Lcom/google/glass/voice/VoiceEngine$16;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/util/RetryStrategy;I)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v0, v1, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 888
    .end local v0           #delayMillis:J
    .end local v2           #e:Lcom/google/glass/voice/MicrophoneInputException;
    .end local v3           #finalAttemptsMade:I
    :catch_1
    move-exception v2

    .line 889
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception starting microphone for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private stopHotwordRecognition()V
    .locals 3

    .prologue
    .line 1115
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v1, "Stopping hotword recognition"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1116
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1117
    return-void
.end method

.method private stopMicrophone()V
    .locals 1

    .prologue
    .line 958
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 959
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->stopListening()V

    .line 961
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->finishSavingAudio()V

    .line 965
    :cond_0
    return-void
.end method

.method private stopNetworkRecognizer()V
    .locals 1

    .prologue
    .line 1167
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1168
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->cancel()V

    .line 1169
    return-void
.end method

.method private stopReadingFromMicrophone()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1024
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v2, "Stopping reading from microphone thread."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->isMicrophoneReadThreadRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1031
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1033
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1034
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :cond_2
    iput-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    .line 1042
    :goto_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v1}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->finishSavingAudio()V

    goto :goto_0

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v2, "Failed to stop reading from mic"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    iput-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    goto :goto_1

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iput-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneReadThread:Ljava/lang/Thread;

    throw v1
.end method


# virtual methods
.method areDynamicGrammarsInvalid()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)V
    .locals 1
    .parameter "voiceInputCallback"

    .prologue
    .line 288
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 289
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$6;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$6;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method public cleanupSynchronously()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 581
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v2, "Destroying VoiceEngine"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    iput-boolean v5, p0, Lcom/google/glass/voice/VoiceEngine;->destroyed:Z

    .line 589
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-eqz v1, :cond_0

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v1}, Lcom/google/glass/voice/MicrophoneInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 597
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->headsetReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 598
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 600
    new-instance v1, Lcom/google/glass/voice/VoiceEngine$13;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceEngine$13;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 607
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->destroyContainer()V

    .line 609
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    if-eqz v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->close()V

    .line 612
    :cond_1
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v2, "Error closing microphone"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public detachVoiceInputCallback()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$7;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$7;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$8;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$8;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public getConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public getCurrentConfigDescriptor()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfigDescriptor:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method public getLastHotwordResult()Lcom/google/glass/voice/HotwordResult;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    return-object v0
.end method

.method getMockMicrophone()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->isUsingMockMicrophone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    check-cast v0, Lcom/google/glass/voice/MockMicrophoneInputStream;

    .line 936
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceConfigDescriptor()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceEngine;->getCurrentConfigDescriptor()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public initializeAsynchronously()V
    .locals 3

    .prologue
    .line 422
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v1, "Creating VoiceEngine"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$11;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$11;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method initializeInputStreams()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    move-result v0

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->isUsingMockMicrophone()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    .line 503
    const-wide/16 v0, 0x3e80

    invoke-static {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 505
    :cond_1
    return-void
.end method

.method invalidateGrammars(Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->dynamicGrammarsInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 529
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$12;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceEngine$12;-><init>(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 536
    return-void
.end method

.method public onAmplitudeChanged(D)V
    .locals 2
    .parameter "amplitude"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceAmplitudeChanged(D)V

    .line 744
    :cond_0
    return-void
.end method

.method public onResampledAudioData([BII)V
    .locals 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 617
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-ne v1, v2, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v1, :cond_0

    .line 624
    new-array v0, p3, [B

    .line 625
    .local v0, copy:[B
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v3, p3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public overrideControllerForTesting(Lcom/google/glass/voice/network/RecognizerController;)V
    .locals 1
    .parameter "rc"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 391
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 392
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$9;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceEngine$9;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/network/RecognizerController;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method public pauseReading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1053
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1054
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v1, "Pausing reading from microphone..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1056
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceEngine;->paused:Z

    if-eqz v0, :cond_0

    .line 1057
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v2, "Cannot pause microphone reading: already paused!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    monitor-exit v1

    .line 1064
    :goto_0
    return-void

    .line 1061
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceEngine;->paused:Z

    .line 1062
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v1, "Paused"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1062
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method publishCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 4
    .parameter "command"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 713
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v1, "publishCommand"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publishCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$14;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/VoiceEngine$14;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceCommand;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 727
    return-void
.end method

.method public refeedLastCommand()V
    .locals 5

    .prologue
    .line 764
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 765
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No command to refeed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 768
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/google/glass/voice/AudioByteUtils;->getMillis(J)J

    move-result-wide v0

    .line 769
    .local v0, refeedMillis:J
    sget-object v2, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "millis in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

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

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    sget-object v2, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->interleave(Ljava/nio/ByteBuffer;)V

    .line 771
    return-void
.end method

.method public resumeReading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1071
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 1072
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v1, "Resuming reading from microphone..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1074
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceEngine;->paused:Z

    if-nez v0, :cond_0

    .line 1075
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v2, "Cannot resume microphone reading: not paused!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    monitor-exit v1

    .line 1083
    :goto_0
    return-void

    .line 1079
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceEngine;->paused:Z

    .line 1080
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1081
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v1, "Resumed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1081
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V
    .locals 2
    .parameter "config"
    .parameter "allowScreenOff"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfigState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;

    invoke-direct {v1, p1, p2}, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;-><init>(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 779
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$15;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$15;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 787
    return-void
.end method

.method setListener(Lcom/google/glass/voice/VoiceServiceListener;)V
    .locals 5
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 748
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    .line 750
    if-eqz p1, :cond_0

    .line 753
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .local v0, missedCommand:Lcom/google/glass/voice/VoiceCommand;
    if-eqz v0, :cond_0

    .line 755
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v2, "Publishing queued voice command"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    const/4 v1, 0x4

    sget-object v2, Lcom/google/glass/voice/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Publishing queued voice command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0

    .line 761
    .end local v0           #missedCommand:Lcom/google/glass/voice/VoiceCommand;
    :cond_0
    return-void
.end method
