.class Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;
.super Ljava/lang/Object;
.source "SpeechLibFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/RecognitionEngineStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->buildRecognitionEngineStore(Lcom/google/android/speech/params/RecognitionEngineParams;)Lcom/google/android/speech/RecognitionEngineStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private embeddedEngine:Lcom/google/android/speech/engine/RecognitionEngine;

.field private networkEngine:Lcom/google/android/speech/engine/RecognitionEngine;

.field final synthetic this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

.field final synthetic val$engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;Lcom/google/android/speech/params/RecognitionEngineParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    iput-object p2, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->val$engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-class v0, Lcom/google/android/speech/RecognitionEngineStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->TAG:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->createEmbeddedEngine()Lcom/google/android/speech/engine/RecognitionEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->embeddedEngine:Lcom/google/android/speech/engine/RecognitionEngine;

    .line 77
    invoke-direct {p0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->createNetworkEngine()Lcom/google/android/speech/engine/RecognitionEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->networkEngine:Lcom/google/android/speech/engine/RecognitionEngine;

    return-void
.end method

.method private createEmbeddedEngine()Lcom/google/android/speech/engine/RecognitionEngine;
    .locals 10

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->val$engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    invoke-virtual {v0}, Lcom/google/android/speech/params/RecognitionEngineParams;->getEmbeddedParams()Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;

    move-result-object v9

    .line 121
    .local v9, params:Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;
    new-instance v0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;

    invoke-virtual {v9}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getGreco3EngineManager()Lcom/google/android/speech/embedded/Greco3EngineManager;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getSpeechLevelSource()Lcom/google/android/speech/SpeechLevelSource;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getSamplingRate()I

    move-result v3

    invoke-virtual {v9}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getBytesPerSample()I

    move-result v4

    invoke-virtual {v9}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getCallbackFactory()Lcom/google/android/speech/embedded/Greco3CallbackFactory;

    move-result-object v6

    invoke-virtual {v9}, Lcom/google/android/speech/params/RecognitionEngineParams$EmbeddedParams;->getModeSelector()Lcom/google/android/speech/embedded/Greco3ModeSelector;

    move-result-object v7

    new-instance v8, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1;

    invoke-direct {v8, p0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2$1;-><init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;)V

    invoke-direct/range {v0 .. v8}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;-><init>(Lcom/google/android/speech/embedded/Greco3EngineManager;Lcom/google/android/speech/SpeechLevelSource;IILcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/embedded/Greco3CallbackFactory;Lcom/google/android/speech/embedded/Greco3ModeSelector;Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;)V

    return-object v0
.end method

.method private createNetworkEngine()Lcom/google/android/speech/engine/RecognitionEngine;
    .locals 8

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->val$engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    invoke-virtual {v0}, Lcom/google/android/speech/params/RecognitionEngineParams;->getNetworkParams()Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;

    move-result-object v7

    .line 149
    .local v7, params:Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->buildSpeechLibLogger()Lcom/google/android/speech/logger/SpeechLibLogger;

    move-result-object v6

    .line 150
    .local v6, speechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;
    new-instance v5, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;

    invoke-virtual {v7}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->getNetworkExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->getNetworkRequestProducerParams()Lcom/google/android/speech/params/NetworkRequestProducerParams;

    move-result-object v1

    invoke-direct {v5, v0, v1, v6}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;Lcom/google/android/speech/logger/SpeechLibLogger;)V

    .line 153
    .local v5, factory:Lcom/google/android/speech/network/producers/RequestProducerFactory;
    new-instance v0, Lcom/google/android/speech/engine/NetworkRecognitionEngine;

    invoke-virtual {v7}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->getPrimaryConnectionFactory()Lcom/google/android/speech/network/S3ConnectionFactory;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->getFallbackConnectionFactory()Lcom/google/android/speech/network/S3ConnectionFactory;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->getRetryPolicy()Lcom/google/android/speech/engine/RetryPolicy;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;->getNetworkExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/engine/NetworkRecognitionEngine;-><init>(Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/engine/RetryPolicy;Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/network/producers/RequestProducerFactory;Lcom/google/android/speech/logger/SpeechLibLogger;)V

    return-object v0
.end method


# virtual methods
.method public getEngines(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/speech/engine/RecognitionEngine;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, engineIndices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, engines:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/speech/engine/RecognitionEngine;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 84
    .local v2, index:I
    packed-switch v2, :pswitch_data_0

    .line 100
    iget-object v3, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->TAG:Ljava/lang/String;

    const-string v4, "Unknown engine index"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object v3, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->TAG:Ljava/lang/String;

    const-string v4, "Using embedded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->val$engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/RecognitionEngineParams;->getHybridParams()Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->getLocalExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    const-class v5, Lcom/google/android/speech/engine/RecognitionEngine;

    iget-object v6, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->embeddedEngine:Lcom/google/android/speech/engine/RecognitionEngine;

    invoke-static {v4, v5, v6}, Lcom/google/android/searchcommon/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v3, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->TAG:Ljava/lang/String;

    const-string v4, "Using network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->val$engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/RecognitionEngineParams;->getHybridParams()Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/speech/params/RecognitionEngineParams$HybridParams;->getNetworkExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    const-class v5, Lcom/google/android/speech/engine/RecognitionEngine;

    iget-object v6, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$2;->networkEngine:Lcom/google/android/speech/engine/RecognitionEngine;

    invoke-static {v4, v5, v6}, Lcom/google/android/searchcommon/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v2           #index:I
    :cond_0
    return-object v0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
