.class public Lcom/google/glass/voice/network/VoiceSearchContainer;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;,
        Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;,
        Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;
    }
.end annotation


# static fields
.field private static final BACKGROUND_SCHEDULED_EXECUTOR_THREADS:I = 0x5

.field private static final ENDPOINTER_MODELS_PATH:Ljava/lang/String; = "/system/usr/srec"

.field private static final ENDPOINTER_TIMEOUT_DICTATION_MILLIS:I = 0x2ee

.field public static final LANGUAGE_PACK_FORMAT_VERSION:I = 0x2

.field private static final LOCAL_ENGINE_THREAD:Ljava/lang/String; = "LocalEngine"

.field private static final NETWORK_ENGINE_THREAD:Ljava/lang/String; = "NetworkEngine"

.field private static final SEARCH_PREFS:Ljava/lang/String; = "search_prefs"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TCP_PORT_DEV:I = 0x37ae

.field private static final TCP_PORT_PROD:I = 0x37b3

.field private static final TCP_PORT_STAGE:I = 0x37b1

.field private static final TCP_PORT_TEST:I = 0x37af

.field private static container:Lcom/google/glass/voice/network/VoiceSearchContainer;

.field private static testContainer:Lcom/google/glass/voice/network/VoiceSearchContainer;


# instance fields
.field private audioController:Lcom/google/android/speech/audio/AudioController;

.field private final audioInputStreamFactory:Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;

.field private final config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

.field private final context:Landroid/content/Context;

.field private greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

.field private networkInfo:Lcom/google/android/speech/utils/NetworkInformation;

.field private networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

.field private recognizerController:Lcom/google/glass/voice/network/RecognizerController;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

.field private speechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

.field private final speechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    .line 170
    invoke-static {p1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getConfiguration(Landroid/content/Context;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 172
    const/4 v0, 0x5

    const-string v1, "BackgroundExecutor"

    invoke-static {v0, v1}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->createSafeScheduledExecutorService(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 175
    new-instance v0, Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioInputStreamFactory:Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;

    .line 176
    new-instance v0, Lcom/google/android/speech/SpeechLevelSource;

    invoke-direct {v0}, Lcom/google/android/speech/SpeechLevelSource;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    .line 177
    new-instance v0, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/network/VoiceSearchContainer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/VoiceSearchContainer;)Lcom/google/android/speech/SpeechSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method

.method public static declared-synchronized clearContainerForTesting()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 159
    const-class v1, Lcom/google/glass/voice/network/VoiceSearchContainer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->testContainer:Lcom/google/glass/voice/network/VoiceSearchContainer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Container was not set"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->testContainer:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->testContainer:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 164
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->testContainer:Lcom/google/glass/voice/network/VoiceSearchContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v1

    return-void

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createContainer(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 131
    const-class v1, Lcom/google/glass/voice/network/VoiceSearchContainer;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit v1

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createEmbeddedParams(Lcom/google/glass/voice/VoiceService;)Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    .locals 8
    .parameter "voiceService"

    .prologue
    .line 311
    new-instance v3, Lcom/google/glass/voice/network/VoiceSearchContainer$4;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$4;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 323
    .local v3, greco3SelectorMode:Lcom/google/android/speech/embedded/Greco3ModeSelector;
    new-instance v0, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    new-instance v1, Lcom/google/glass/voice/network/CallbackFactory;

    invoke-direct {v1, p1}, Lcom/google/glass/voice/network/CallbackFactory;-><init>(Lcom/google/glass/voice/VoiceService;)V

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getGreco3EngineManager()Lcom/google/android/speech/embedded/Greco3EngineManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSpeechLevelSource()Lcom/google/android/speech/SpeechLevelSource;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    const/4 v6, 0x2

    const/16 v7, 0x1f40

    invoke-direct/range {v0 .. v7}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;-><init>(Lcom/google/android/speech/embedded/Greco3CallbackFactory;Lcom/google/android/speech/embedded/Greco3EngineManager;Lcom/google/android/speech/embedded/Greco3ModeSelector;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;II)V

    return-object v0
.end method

.method private createHybridParams(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;
    .locals 7
    .parameter "localExecutorService"
    .parameter "networkExecutorService"

    .prologue
    .line 384
    new-instance v0, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getNetworkInfo()Lcom/google/android/speech/utils/NetworkInformation;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;-><init>(Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/speech/SpeechSettings;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private createNetworkParams(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    .locals 8
    .parameter "networkExecutorService"

    .prologue
    .line 349
    new-instance v7, Lcom/google/glass/voice/network/VoiceSearchContainer$6;

    invoke-direct {v7, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$6;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 357
    .local v7, pairHttpServerInfoSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;>;"
    new-instance v1, Lcom/google/android/speech/network/PairHttpConnectionFactory;

    new-instance v0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v7, v0}, Lcom/google/android/speech/network/PairHttpConnectionFactory;-><init>(Lcom/google/common/base/Supplier;Lcom/google/android/speech/network/ConnectionFactory;)V

    .line 361
    .local v1, http:Lcom/google/android/speech/network/S3ConnectionFactory;
    new-instance v6, Lcom/google/glass/voice/network/VoiceSearchContainer$7;

    invoke-direct {v6, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$7;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 369
    .local v6, networkRecognizerInfoSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;>;"
    new-instance v0, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    new-instance v3, Lcom/google/glass/voice/network/RetryPolicyImpl;

    invoke-direct {v3, v6}, Lcom/google/glass/voice/network/RetryPolicyImpl;-><init>(Lcom/google/common/base/Supplier;)V

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getNetworkRequestProducerParams()Lcom/google/android/speech/params/NetworkRequestProducerParams;

    move-result-object v5

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;-><init>(Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/engine/RetryPolicy;Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;)V

    return-object v0
.end method

.method private createRecognizer(Lcom/google/glass/voice/VoiceService;)Lcom/google/android/speech/Recognizer;
    .locals 11
    .parameter "voiceService"

    .prologue
    const/4 v6, 0x0

    .line 236
    sget-object v7, Lcom/google/glass/voice/network/VoiceSearchContainer;->TAG:Ljava/lang/String;

    const-string v8, "Creating Recognizer"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v7, 0x1

    :try_start_0
    const-string v8, "LocalEngine"

    invoke-static {v7, v8}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->createSafeScheduledExecutorService(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 241
    .local v2, localExecutorService:Ljava/util/concurrent/ExecutorService;
    const/4 v7, 0x1

    const-string v8, "NetworkEngine"

    invoke-static {v7, v8}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->createSafeScheduledExecutorService(ILjava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 244
    .local v3, networkExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createEmbeddedParams(Lcom/google/glass/voice/VoiceService;)Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    move-result-object v0

    .line 245
    .local v0, embeddedParams:Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    invoke-direct {p0, v3}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createNetworkParams(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    move-result-object v4

    .line 247
    .local v4, networkParams:Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createHybridParams(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;

    move-result-object v1

    .line 252
    .local v1, hybridParams:Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;
    const-string v7, "GrecoExecutor"

    invoke-static {v7}, Lcom/google/android/searchcommon/util/ConcurrentUtils;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/google/android/speech/params/RecognitionEngineParams;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v4, v9, v1}, Lcom/google/android/speech/params/RecognitionEngineParams;-><init>(Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;)V

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioController()Lcom/google/android/speech/audio/AudioController;

    move-result-object v9

    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSpeechLibFactory()Lcom/google/android/speech/SpeechLibFactory;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/google/android/speech/GrecoRecognizer;->create(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/audio/AudioController;Lcom/google/android/speech/SpeechLibFactory;)Lcom/google/android/speech/Recognizer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 258
    .end local v0           #embeddedParams:Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    .end local v1           #hybridParams:Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;
    .end local v2           #localExecutorService:Ljava/util/concurrent/ExecutorService;
    .end local v3           #networkExecutorService:Ljava/util/concurrent/ExecutorService;
    .end local v4           #networkParams:Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    :goto_0
    return-object v6

    .line 256
    :catch_0
    move-exception v5

    .line 257
    .local v5, re:Ljava/lang/RuntimeException;
    sget-object v7, Lcom/google/glass/voice/network/VoiceSearchContainer;->TAG:Ljava/lang/String;

    const-string v8, "Error creating greco recognizer"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized destroyContainer()V
    .locals 2

    .prologue
    .line 135
    const-class v1, Lcom/google/glass/voice/network/VoiceSearchContainer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->destroy()V

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit v1

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getConfiguration(Landroid/content/Context;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 9
    .parameter "context"

    .prologue
    .line 184
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/glass/common/R$raw;->greco_config:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 185
    .local v4, is:Ljava/io/InputStream;
    invoke-static {v4}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 186
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    .line 189
    .local v1, config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getServiceApi()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    move-result-object v5

    .line 190
    .local v5, serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    invoke-virtual {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v3

    .line 191
    .local v3, endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    const/16 v6, 0x2ee

    invoke-virtual {v3, v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setExtraSilenceAfterEndOfSpeechMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 192
    invoke-virtual {v5, v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    .line 193
    invoke-virtual {v1, v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->setServiceApi(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 197
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->SEARCH_DEV_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 198
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v6

    const-string v7, "vs.google.com"

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setHost(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 199
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v6

    const/16 v7, 0x37ae

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setPort(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 200
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getUp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v6

    const-string v7, "https://voice-search-dev.sandbox.google.com/m/voice-search/up?sky=rad_853f_1e8f_7309_4687&pair="

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 203
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v6

    const-string v7, "https://voice-search-dev.sandbox.google.com/m/voice-search/down?sky=rad_853f_1e8f_7309_4687&pair="

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 228
    :cond_0
    :goto_0
    sget-object v6, Lcom/google/glass/voice/network/VoiceSearchContainer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S3 Port: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-object v1

    .line 206
    :cond_1
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->SEARCH_TEST_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 207
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v6

    const-string v7, "vs.google.com"

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setHost(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 208
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v6

    const/16 v7, 0x37af

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setPort(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 209
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getUp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v6

    const-string v7, "https://voice-search-testing.sandbox.google.com/m/voice-search/up?sky=rad_853f_1e8f_7309_4687&pair="

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 212
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v6

    const-string v7, "https://voice-search-testing.sandbox.google.com/m/voice-search/down?sky=rad_853f_1e8f_7309_4687&pair="

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v0           #bytes:[B
    .end local v1           #config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .end local v3           #endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    :catch_0
    move-exception v2

    .line 231
    .local v2, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unable to load configuration"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 215
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #bytes:[B
    .restart local v1       #config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .restart local v3       #endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    :cond_2
    :try_start_1
    sget-object v6, Lcom/google/glass/util/Labs$Feature;->KANNADI_DEV_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v6}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->clearTcpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 220
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getUp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v6

    const-string v7, "https://kannadi.majel.sandbox.google.com/m/voice-search/up?sky=rad_853f_1e8f_7309_4687&pair="

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 223
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v6

    const-string v7, "https://kannadi.majel.sandbox.google.com/m/voice-search/down?sky=rad_853f_1e8f_7309_4687&pair="

    invoke-virtual {v6, v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;
    .locals 3

    .prologue
    .line 142
    const-class v1, Lcom/google/glass/voice/network/VoiceSearchContainer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->testContainer:Lcom/google/glass/voice/network/VoiceSearchContainer;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->testContainer:Lcom/google/glass/voice/network/VoiceSearchContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    monitor-exit v1

    return-object v0

    .line 144
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->container:Lcom/google/glass/voice/network/VoiceSearchContainer;

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Voice Search Container not set."

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSpeechLibFactory()Lcom/google/android/speech/SpeechLibFactory;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    invoke-direct {v0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    return-object v0
.end method

.method public static declared-synchronized overrideContainerForTesting(Lcom/google/glass/voice/network/VoiceSearchContainer;)V
    .locals 3
    .parameter "container"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 153
    const-class v1, Lcom/google/glass/voice/network/VoiceSearchContainer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->testContainer:Lcom/google/glass/voice/network/VoiceSearchContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Container was already set"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 154
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/VoiceSearchContainer;

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchContainer;->testContainer:Lcom/google/glass/voice/network/VoiceSearchContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit v1

    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 400
    return-void
.end method

.method public getAudioController()Lcom/google/android/speech/audio/AudioController;
    .locals 9

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    if-nez v0, :cond_0

    .line 266
    new-instance v4, Lcom/google/glass/voice/network/VoiceSearchContainer$1;

    invoke-direct {v4, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$1;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 273
    .local v4, dummySpeechSoundManager:Lcom/google/android/speech/audio/SpeechSoundManager;
    new-instance v7, Lcom/google/glass/voice/network/VoiceSearchContainer$2;

    invoke-direct {v7, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$2;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 286
    .local v7, dummyAudioRouter:Lcom/google/android/voicesearch/AudioRouter;
    new-instance v6, Lcom/google/glass/voice/network/VoiceSearchContainer$3;

    invoke-direct {v6, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$3;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    .line 294
    .local v6, dummyAudioRoutingSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/google/android/speech/audio/AudioController;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSpeechLevelSource()Lcom/google/android/speech/SpeechLevelSource;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSpeechLibFactory()Lcom/google/android/speech/SpeechLibFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/speech/SpeechLibFactory;->buildSpeechLibLogger()Lcom/google/android/speech/logger/SpeechLibLogger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/speech/audio/AudioController;-><init>(Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/audio/SpeechSoundManager;ILcom/google/common/base/Supplier;Lcom/google/android/voicesearch/AudioRouter;Lcom/google/android/speech/logger/SpeechLibLogger;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    .line 297
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioInputStreamFactory:Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/AudioController;->setRawInputStreamFactory(Lcom/google/android/speech/audio/AudioInputStreamFactory;)V

    .line 300
    .end local v4           #dummySpeechSoundManager:Lcom/google/android/speech/audio/SpeechSoundManager;
    .end local v6           #dummyAudioRoutingSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/Integer;>;"
    .end local v7           #dummyAudioRouter:Lcom/google/android/voicesearch/AudioRouter;
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioController:Lcom/google/android/speech/audio/AudioController;

    return-object v0
.end method

.method public getAudioInputStreamFactory()Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->audioInputStreamFactory:Lcom/google/glass/voice/network/VoiceSearchContainer$AudioInputStreamFactoryImpl;

    return-object v0
.end method

.method public getConfig()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    return-object v0
.end method

.method public getGreco3EngineManager()Lcom/google/android/speech/embedded/Greco3EngineManager;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    if-nez v1, :cond_0

    .line 332
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/usr/srec"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 333
    .local v4, endpointerModels:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Ljava/io/File;>;"
    new-instance v0, Lcom/google/android/speech/embedded/Greco3DataManager;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    const/4 v3, 0x2

    iget-object v6, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/embedded/Greco3DataManager;-><init>(Landroid/content/Context;Lcom/google/android/speech/embedded/Greco3Preferences;ILcom/google/common/collect/ImmutableList;Ljava/io/File;Ljava/util/concurrent/Executor;)V

    .line 336
    .local v0, dataManager:Lcom/google/android/speech/embedded/Greco3DataManager;
    new-instance v1, Lcom/google/glass/voice/network/VoiceSearchContainer$5;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$5;-><init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/speech/embedded/Greco3DataManager;->setPathDeleter(Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;)V

    .line 342
    new-instance v1, Lcom/google/android/speech/embedded/Greco3EngineManager;

    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/speech/embedded/Greco3EngineManager;-><init>(Lcom/google/android/speech/embedded/Greco3DataManager;Lcom/google/android/speech/embedded/Greco3Preferences;Lcom/google/android/speech/embedded/EndpointerModelCopier;)V

    iput-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    .line 344
    .end local v0           #dataManager:Lcom/google/android/speech/embedded/Greco3DataManager;
    .end local v4           #endpointerModels:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Ljava/io/File;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->greco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    return-object v1
.end method

.method public declared-synchronized getNetworkInfo()Lcom/google/android/speech/utils/NetworkInformation;
    .locals 4

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkInfo:Lcom/google/android/speech/utils/NetworkInformation;

    if-nez v0, :cond_0

    .line 390
    new-instance v2, Lcom/google/android/speech/utils/NetworkInformation;

    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-direct {v2, v0, v1}, Lcom/google/android/speech/utils/NetworkInformation;-><init>(Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)V

    iput-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkInfo:Lcom/google/android/speech/utils/NetworkInformation;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkInfo:Lcom/google/android/speech/utils/NetworkInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetworkRequestProducerParams()Lcom/google/android/speech/params/NetworkRequestProducerParams;
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getNetworkInfo()Lcom/google/android/speech/utils/NetworkInformation;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->create(Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/utils/NetworkInformation;)Lcom/google/android/speech/params/NetworkRequestProducerParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->networkRequestProducerParams:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    return-object v0
.end method

.method public getRecognizerController(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/network/RecognizerController;
    .locals 4
    .parameter "voiceService"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createRecognizer(Lcom/google/glass/voice/VoiceService;)Lcom/google/android/speech/Recognizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;-><init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->context:Landroid/content/Context;

    const-string v1, "search_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSpeechLevelSource()Lcom/google/android/speech/SpeechLevelSource;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    return-object v0
.end method

.method public getSpeechSettings()Lcom/google/android/speech/SpeechSettings;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method
