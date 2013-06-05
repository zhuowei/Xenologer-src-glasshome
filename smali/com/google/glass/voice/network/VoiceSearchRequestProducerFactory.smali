.class public Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;
.super Ljava/lang/Object;
.source "VoiceSearchRequestProducerFactory.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/RequestProducerFactory;


# static fields
.field public static final SERVICE_VOICE_ACTIONS_GWS:Ljava/lang/String; = "glass-search-web"

.field public static final SERVICE_VOICE_ACTIONS_MAJEL:Ljava/lang/String; = "glass-search"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private majelClientInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/speech/s3/Majel$MajelClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mobileUserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

.field private pinholeParamsFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation
.end field

.field private requestIdSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

.field private s3ClientInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private s3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

.field private s3UserInfoFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private service:Ljava/lang/String;

.field private sessionParams:Lcom/google/android/speech/params/SessionParams;

.field private soundSearchRequestProducerFactory:Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;

.field private final speechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

.field private final timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/params/NetworkRequestProducerParams;Lcom/google/android/speech/logger/SpeechLibLogger;)V
    .locals 3
    .parameter "executor"
    .parameter "nrpp"
    .parameter "speechLibLogger"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    .line 79
    iput-object p2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    .line 80
    iput-object p3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->speechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    .line 81
    new-instance v0, Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;-><init>(J)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    .line 82
    new-instance v0, Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;

    new-instance v1, Lcom/google/android/ears/s3/suppliers/RequestIdSupplier;

    invoke-direct {v1}, Lcom/google/android/ears/s3/suppliers/RequestIdSupplier;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getDeviceParams()Lcom/google/android/speech/params/DeviceParams;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/speech/params/DeviceParams;->getDeviceCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;-><init>(Lcom/google/common/base/Supplier;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->soundSearchRequestProducerFactory:Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;

    .line 84
    return-void
.end method

.method private createMajelClientInfoFuture()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/speech/s3/Majel$MajelClientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/voice/network/MajelClientInfoBuilderTask;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getDeviceParams()Lcom/google/android/speech/params/DeviceParams;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/voice/network/MajelClientInfoBuilderTask;-><init>(Lcom/google/android/speech/params/DeviceParams;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private createMobileUserInfoFuture()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/MobileUser$MobileUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getNetworkInformation()Lcom/google/android/speech/utils/NetworkInformation;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/speech/network/request/MobileUserInfoBuilderTask;-><init>(Lcom/google/android/speech/utils/NetworkInformation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private createPinholeParamsFuture()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v1

    sget-object v2, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    if-ne v1, v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getPinholeParamsBuilder()Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->requestIdSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/speechservice/s3/PinholeParamsBuilder;->getPinholeParamsCallable(Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 166
    .local v0, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Lcom/google/speech/s3/PinholeStream$PinholeParams;>;"
    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 171
    .end local v0           #callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Lcom/google/speech/s3/PinholeStream$PinholeParams;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createS3AudioInfo()Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v0

    .line 180
    .local v0, audioInputParams:Lcom/google/android/speech/params/AudioInputParams;
    new-instance v1, Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/speech/params/AudioInputParams;->getEncoding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setEncoding(I)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/speech/params/AudioInputParams;->getSamplingRate()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setSampleRateHz(F)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v1

    return-object v1
.end method

.method private createS3ClientInfoFuture()Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v6, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/SessionParams;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getDeviceParams()Lcom/google/android/speech/params/DeviceParams;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams;->getTriggerApplication()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v5}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;-><init>(Lcom/google/android/speech/SpeechSettings;Ljava/lang/String;Lcom/google/android/speech/params/DeviceParams;Ljava/lang/String;Landroid/view/WindowManager;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private createS3RecognizerInfo()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 7

    .prologue
    .line 203
    new-instance v0, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getRecognitionContext()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/SessionParams;->isPartialResultsEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams;->isCombinedNbestEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v5}, Lcom/google/android/speech/params/SessionParams;->isSuggestionsEnabled()Z

    move-result v5

    iget-object v6, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v6}, Lcom/google/android/speech/params/SessionParams;->getMaxNbest()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;-><init>(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Lcom/google/android/speech/SpeechSettings;ZZZI)V

    invoke-virtual {v0}, Lcom/google/android/speech/network/request/S3RecognizerInfoBuilderTask;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    return-object v0
.end method

.method private createS3UserInfoFuture()Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getAuthTokenHelper()Lcom/google/android/speech/helper/AuthTokenHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getSpeechSettings()Lcom/google/android/speech/SpeechSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getLocationHelper()Lcom/google/android/speech/helper/SpeechLocationHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v4}, Lcom/google/android/speech/params/SessionParams;->getSpokenBcp47Locale()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v5}, Lcom/google/android/speech/params/SessionParams;->getLocationOverride()Landroid/location/Location;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->getBuilder(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/helper/SpeechLocationHelper;Ljava/lang/String;Landroid/location/Location;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Lcom/google/android/speech/params/SessionParams;)V
    .locals 1
    .parameter "sessionParams"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    .line 90
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SEARCH_GWS_FLOW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "glass-search-web"

    :goto_0
    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->service:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getRequestIdSupplier()Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->requestIdSupplier:Lcom/google/common/base/Supplier;

    .line 93
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createPinholeParamsFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->pinholeParamsFuture:Ljava/util/concurrent/Future;

    .line 94
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createMajelClientInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->majelClientInfoFuture:Ljava/util/concurrent/Future;

    .line 95
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createMobileUserInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->mobileUserInfoFuture:Ljava/util/concurrent/Future;

    .line 96
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createS3AudioInfo()Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    .line 97
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createS3ClientInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3ClientInfoFuture:Ljava/util/concurrent/Future;

    .line 98
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createS3UserInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    .line 99
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createS3RecognizerInfo()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 100
    return-void

    .line 90
    :cond_0
    const-string v0, "glass-search"

    goto :goto_0
.end method

.method public newRequestProducer(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducer;
    .locals 12
    .parameter "audioInputStream"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v1

    sget-object v2, Lcom/google/android/speech/params/SessionParams$Mode;->SOUND_SEARCH:Lcom/google/android/speech/params/SessionParams$Mode;

    if-ne v1, v2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->soundSearchRequestProducerFactory:Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;

    invoke-virtual {v1, p1}, Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;->newRequestProducer(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducer;

    move-result-object v1

    .line 122
    :goto_0
    return-object v1

    .line 109
    :cond_0
    new-instance v0, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;

    iget-object v1, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->pinholeParamsFuture:Ljava/util/concurrent/Future;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->majelClientInfoFuture:Ljava/util/concurrent/Future;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->mobileUserInfoFuture:Ljava/util/concurrent/Future;

    iget-object v4, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3ClientInfoFuture:Ljava/util/concurrent/Future;

    iget-object v5, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    iget-object v6, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3AudioInfo:Lcom/google/speech/s3/Audio$S3AudioInfo;

    iget-object v7, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3RecognizerInfo:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    iget-object v8, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->requestIdSupplier:Lcom/google/common/base/Supplier;

    iget-object v9, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->service:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->speechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-direct/range {v0 .. v10}, Lcom/google/glass/voice/network/VoiceSearchHeaderProducer;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;Lcom/google/common/base/Supplier;Ljava/lang/String;Lcom/google/android/speech/logger/SpeechLibLogger;)V

    .line 120
    .local v0, header:Lcom/google/android/speech/network/producers/S3RequestProducer;
    new-instance v11, Lcom/google/android/speech/network/producers/AmrStreamProducer;

    const/16 v1, 0x180

    invoke-direct {v11, p1, v1}, Lcom/google/android/speech/network/producers/AmrStreamProducer;-><init>(Ljava/io/InputStream;I)V

    .line 122
    .local v11, audio:Lcom/google/android/speech/network/producers/S3RequestProducer;
    new-instance v1, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;

    invoke-direct {v1, v0, v11}, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;-><init>(Lcom/google/android/speech/network/producers/S3RequestProducer;Lcom/google/android/speech/network/producers/S3RequestProducer;)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 128
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    if-nez v2, :cond_0

    .line 129
    sget-object v2, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->TAG:Ljava/lang/String;

    const-string v3, "Trying to refresh before init."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v2}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v2

    sget-object v3, Lcom/google/android/speech/params/SessionParams$Mode;->SOUND_SEARCH:Lcom/google/android/speech/params/SessionParams$Mode;

    if-ne v2, v3, :cond_1

    .line 134
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->soundSearchRequestProducerFactory:Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;

    invoke-virtual {v2}, Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;->refresh()V

    goto :goto_0

    .line 140
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->timeoutEnforcer:Lcom/google/android/speech/network/producers/TimeoutEnforcer;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    invoke-virtual {v2, v3}, Lcom/google/android/speech/network/producers/TimeoutEnforcer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/s3/S3$S3UserInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v1, s3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;
    :goto_1
    if-nez v1, :cond_2

    .line 149
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->createS3UserInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 141
    .end local v1           #s3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->TAG:Ljava/lang/String;

    const-string v3, "Could not get S3UserInfo for refresh."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x0

    .restart local v1       #s3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;
    goto :goto_1

    .line 152
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->nrpp:Lcom/google/android/speech/params/NetworkRequestProducerParams;

    invoke-virtual {v3}, Lcom/google/android/speech/params/NetworkRequestProducerParams;->getAuthTokenHelper()Lcom/google/android/speech/helper/AuthTokenHelper;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->getAuthTokenRefreshingBuilder(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/speech/s3/S3$S3UserInfo;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchRequestProducerFactory;->s3UserInfoFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method
