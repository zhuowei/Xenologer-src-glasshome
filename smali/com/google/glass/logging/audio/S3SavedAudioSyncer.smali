.class public Lcom/google/glass/logging/audio/S3SavedAudioSyncer;
.super Ljava/lang/Object;
.source "S3SavedAudioSyncer.java"

# interfaces
.implements Lcom/google/glass/logging/audio/SavedAudioSyncer;


# static fields
.field private static final ANDROID_PLATFORM:Ljava/lang/String; = "Android"

.field private static final CLIENT_LOG_SERVICE:Ljava/lang/String; = "clientlog"

.field private static final ENDPOINT_URL:Ljava/lang/String; = "https://www.google.com/m/voice-search/fallback"

#the value of this static final field might be set in the static constructor
.field static final INSTALL_ID_WINDOW_SIZE_MILLIS:J = 0x0L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LOGGING_APP_ID:Ljava/lang/String; = "async-glass-logging"

.field private static final SERVICE_RECOGNIZER:Ljava/lang/String; = "recognizer"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appVersion:Ljava/lang/String;

.field private final httpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpRequestDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

.field private installId:Ljava/lang/String;

.field private installIdInvalidateTime:J

.field private final magicHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const-class v0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->TAG:Ljava/lang/String;

    .line 97
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->INSTALL_ID_WINDOW_SIZE_MILLIS:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/glass/net/HttpRequestDispatcher;)V
    .locals 2
    .parameter "magicHeader"
    .parameter
    .parameter "httpRequestDispatcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/glass/net/HttpRequestDispatcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installIdInvalidateTime:J

    .line 101
    iput-object p1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->magicHeader:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->httpHeaders:Ljava/util/Map;

    .line 103
    iput-object p3, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->httpRequestDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 104
    return-void
.end method

.method public static createClientLogRequest(Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;)Lcom/google/speech/s3/S3$S3Request;
    .locals 2
    .parameter "clientLog"

    .prologue
    .line 255
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    new-instance v1, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    invoke-direct {v1}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;->setVoiceSearch(Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;)Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setClientLogRequestExtension(Lcom/google/speech/s3/ClientLogRequestProto$ClientLogRequest;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    return-object v0
.end method

.method public static createInitLogRequest()Lcom/google/speech/s3/S3$S3Request;
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    const-string v1, "clientlog"

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    return-object v0
.end method

.method public static createS3SavedAudioSyncer(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/logging/audio/S3SavedAudioSyncer;
    .locals 4
    .parameter "context"
    .parameter "httpRequestDispatcher"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getConfiguration(Landroid/content/Context;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    .line 109
    .local v0, configuration:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    new-instance v1, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getHeaders(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/glass/net/HttpRequestDispatcher;)V

    return-object v1
.end method

.method private doSync(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    .locals 4
    .parameter "context"
    .parameter "savedAudioRecord"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/glass/logging/audio/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, requestId:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v2}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getRecognizeRequestBody(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;Ljava/lang/String;)[B

    move-result-object v1

    .line 132
    .local v1, recognizeRequestBody:[B
    invoke-direct {p0, v1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->makeRequest([B)V

    .line 134
    invoke-virtual {p2}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getRecognizedCommands()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getLogRequestBody(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 136
    .local v0, logRequestBody:[B
    invoke-direct {p0, v0}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->makeRequest([B)V

    .line 137
    return-void
.end method

.method private getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 355
    iget-object v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->appVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 357
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->appVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->appVersion:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 364
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->appVersion:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getHeaders(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/util/Map;
    .locals 7
    .parameter "configuration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 344
    .local v0, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getSingleHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v3

    .line 345
    .local v3, serverInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHttpHeaderKeyList()Ljava/util/List;

    move-result-object v2

    .line 346
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHttpHeaderValueList()Ljava/util/List;

    move-result-object v4

    .line 347
    .local v4, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 348
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    return-object v0
.end method

.method private getLogRequestBody(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .parameter "context"
    .parameter "recognizedCommands"
    .parameter "requestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v5, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v5}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    .line 209
    .local v5, recognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    invoke-static {p2}, Lcom/google/glass/voice/AlignmentInfo;->parseRecognizedCommandsString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 212
    .local v1, alignmentInfos:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v3, concatenatedHypothesis:Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/AlignmentInfo;

    .line 214
    .local v0, alignmentInfo:Lcom/google/glass/voice/AlignmentInfo;
    new-instance v6, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-direct {v6}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;-><init>()V

    .line 215
    .local v6, recognizerSegmentLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    new-instance v8, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v8}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    iget-object v9, v0, Lcom/google/glass/voice/AlignmentInfo;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->addHypothesis(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 218
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    iget-object v8, v0, Lcom/google/glass/voice/AlignmentInfo;->text:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-wide v8, v0, Lcom/google/glass/voice/AlignmentInfo;->startMillis:J

    long-to-int v8, v8

    invoke-virtual {v6, v8}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->setRelativeStartTimeMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 222
    iget-wide v8, v0, Lcom/google/glass/voice/AlignmentInfo;->endMillis:J

    long-to-int v8, v8

    invoke-virtual {v6, v8}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->setRelativeEndTimeMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 223
    invoke-virtual {v5, v6}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->addRecognizerSegment(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 226
    .end local v0           #alignmentInfo:Lcom/google/glass/voice/AlignmentInfo;
    .end local v6           #recognizerSegmentLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    :cond_1
    new-instance v8, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v8}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setTopHypothesis(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 228
    new-instance v2, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    invoke-direct {v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;-><init>()V

    .line 229
    .local v2, clientEvent:Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;
    invoke-virtual {v2, p3}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setRequestId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 230
    invoke-virtual {v2, v5}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setEmbeddedRecognizerLog(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 231
    const/16 v8, 0x34

    invoke-virtual {v2, v8}, Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;->setEventType(I)Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;

    .line 234
    new-instance v8, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    invoke-direct {v8}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;-><init>()V

    iget-object v9, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setInstallId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPackageId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v8

    const-string v9, "Android"

    invoke-virtual {v8, v9}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPlatformId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setDeviceModel(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v8

    const-string v9, "async-glass-logging"

    invoke-virtual {v8, v9}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setApplicationId(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->setLocale(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;->addBundledClientEvents(Lcom/google/speech/logs/VoicesearchClientLogProto$ClientEvent;)Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;

    move-result-object v7

    .line 245
    .local v7, voiceSearchClientLog:Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;
    iget-object v8, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->magicHeader:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/google/speech/s3/S3$S3Request;

    const/4 v10, 0x0

    invoke-static {}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createInitLogRequest()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v7}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createClientLogRequest(Lcom/google/speech/logs/VoicesearchClientLogProto$VoiceSearchClientLog;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createEndOfData()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getRequestBody(Ljava/lang/String;[Lcom/google/speech/s3/S3$S3Request;)[B

    move-result-object v8

    return-object v8
.end method

.method private getRecognizeRequestBody(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;Ljava/lang/String;)[B
    .locals 6
    .parameter "context"
    .parameter "savedAudioRecord"
    .parameter "requestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createVoiceRecognizeRequest(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v1

    .line 143
    .local v1, initialRequest:Lcom/google/speech/s3/S3$S3Request;
    invoke-virtual {p2}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->setInstallId(Lcom/google/speech/s3/S3$S3Request;J)V

    .line 145
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 146
    .local v0, audioBytes:[B
    iget-object v2, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->magicHeader:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/speech/s3/S3$S3Request;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    array-length v5, v0

    invoke-static {v0, v5}, Lcom/google/android/speech/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createEndOfData()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getRequestBody(Ljava/lang/String;[Lcom/google/speech/s3/S3$S3Request;)[B

    move-result-object v2

    return-object v2
.end method

.method private static varargs getRequestBody(Ljava/lang/String;[Lcom/google/speech/s3/S3$S3Request;)[B
    .locals 5
    .parameter "magicHeader"
    .parameter "requests"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 265
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 266
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Lcom/google/android/speech/message/S3RequestStream;

    invoke-direct {v3, v0, p0, v4}, Lcom/google/android/speech/message/S3RequestStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 267
    .local v3, requestStream:Lcom/google/android/speech/message/S3RequestStream;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 268
    .local v2, requestList:Ljava/util/List;,"Ljava/util/List<Lcom/google/speech/s3/S3$S3Request;>;"
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/speech/s3/S3$S3Request;

    invoke-virtual {v3, v4}, Lcom/google/android/speech/message/S3RequestStream;->writeHeader(Lcom/google/speech/s3/S3$S3Request;)V

    .line 269
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 270
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/speech/s3/S3$S3Request;

    invoke-virtual {v3, v4}, Lcom/google/android/speech/message/S3RequestStream;->write(Lcom/google/speech/s3/S3$S3Request;)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/speech/message/S3RequestStream;->close()V

    .line 273
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 274
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private getS3ClientInfo(Landroid/content/Context;)Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 169
    new-instance v0, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3ClientInfo;-><init>()V

    const-string v1, "async-glass-logging"

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceModel(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method private getS3RecognizerInfo()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 188
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;-><init>()V

    new-instance v1, Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-direct {v1}, Lcom/google/speech/common/Alternates$AlternateParams;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/google/speech/common/Alternates$AlternateParams;->setMaxSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v1

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/google/speech/common/Alternates$AlternateParams;->setMaxTotalSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/speech/common/Alternates$AlternateParams;->setUnit(I)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setAlternateParams(Lcom/google/speech/common/Alternates$AlternateParams;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnableAlternates(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnableCombinedNbest(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnablePartialResults(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setConfidenceThreshold(F)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setMaxNbest(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setProfanityFilter(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    return-object v0
.end method

.method private getS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 3

    .prologue
    .line 178
    new-instance v1, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$Locale;->setFormat(I)Lcom/google/speech/s3/S3$Locale;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$Locale;->setLocale(Ljava/lang/String;)Lcom/google/speech/s3/S3$Locale;

    move-result-object v0

    .line 182
    .local v0, locale:Lcom/google/speech/s3/S3$Locale;
    new-instance v1, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/speech/s3/S3$S3UserInfo;->setUserLocale(Lcom/google/speech/s3/S3$Locale;)Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/speech/s3/S3$S3UserInfo;->setSpokenLanguage(Lcom/google/speech/s3/S3$Locale;)Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private static logResponses([B)V
    .locals 8
    .parameter "body"

    .prologue
    .line 320
    new-instance v5, Lcom/google/android/speech/message/S3ResponseStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Lcom/google/android/speech/message/S3ResponseStream;-><init>(Ljava/io/InputStream;)V

    .line 324
    .local v5, responses:Lcom/google/android/speech/message/S3ResponseStream;
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/speech/message/S3ResponseStream;->read()Lcom/google/speech/s3/S3$S3Response;

    move-result-object v4

    .line 325
    .local v4, response:Lcom/google/speech/s3/S3$S3Response;
    invoke-static {v4}, Lcom/google/glass/util/ProtoDebugUtils;->asciiDebug(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, ascii:Ljava/lang/String;
    const-string v6, "\n"

    invoke-static {v6}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 327
    .local v3, line:Ljava/lang/String;
    const/4 v6, 0x3

    sget-object v7, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->TAG:Ljava/lang/String;

    invoke-static {v6, v7, v3}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v0           #ascii:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #response:Lcom/google/speech/s3/S3$S3Response;
    :catch_0
    move-exception v1

    .line 336
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    sget-object v6, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->TAG:Ljava/lang/String;

    const-string v7, "Failed to read S3Response"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    invoke-static {v5}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 340
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 330
    .restart local v0       #ascii:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #response:Lcom/google/speech/s3/S3$S3Response;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    invoke-virtual {v4}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 338
    :cond_2
    invoke-static {v5}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0           #ascii:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #response:Lcom/google/speech/s3/S3$S3Response;
    :catchall_0
    move-exception v6

    invoke-static {v5}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v6
.end method

.method private makeRequest([B)V
    .locals 5
    .parameter "requestBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/logging/audio/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v2, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->httpRequestDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    const-string v3, "https://www.google.com/m/voice-search/fallback"

    iget-object v4, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->httpHeaders:Ljava/util/Map;

    invoke-interface {v2, v3, v4, p1}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v0

    .line 287
    .local v0, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    if-nez v0, :cond_0

    .line 288
    new-instance v2, Lcom/google/glass/logging/audio/SyncFailedException;

    const-string v3, "Connection failed or no response from the server."

    invoke-direct {v2, v3}, Lcom/google/glass/logging/audio/SyncFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    :cond_0
    iget v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    .line 292
    .local v1, statusCode:I
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 293
    new-instance v2, Lcom/google/glass/logging/audio/SyncFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "S3 returned non-200 response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/logging/audio/SyncFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_1
    return-void
.end method


# virtual methods
.method public createVoiceRecognizeRequest(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;
    .locals 2
    .parameter "context"
    .parameter "savedAudioRecord"
    .parameter "requestId"

    .prologue
    .line 159
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    const-string v1, "recognizer"

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getS3AudioInfo(Lcom/google/glass/logging/audio/SavedAudioRecord;)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3AudioInfoExtension(Lcom/google/speech/s3/Audio$S3AudioInfo;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getS3ClientInfo(Landroid/content/Context;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3ClientInfoExtension(Lcom/google/speech/s3/S3$S3ClientInfo;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3UserInfoExtension(Lcom/google/speech/s3/S3$S3UserInfo;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->getS3RecognizerInfo()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3RecognizerInfoExtension(Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    new-instance v1, Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3SessionInfo;-><init>()V

    invoke-virtual {v1, p3}, Lcom/google/speech/s3/S3$S3SessionInfo;->setSessionId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3SessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3SessionInfoExtension(Lcom/google/speech/s3/S3$S3SessionInfo;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    return-object v0
.end method

.method protected getS3AudioInfo(Lcom/google/glass/logging/audio/SavedAudioRecord;)Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 3
    .parameter "savedAudioRecord"

    .prologue
    .line 152
    new-instance v0, Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/Audio$S3AudioInfo;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setEncoding(I)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getSampleRate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setSampleRateHz(F)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v0

    return-object v0
.end method

.method setInstallId(Lcom/google/speech/s3/S3$S3Request;J)V
    .locals 3
    .parameter "s3Request"
    .parameter "timestamp"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Request;->hasS3UserInfoExtension()Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    new-instance v1, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3UserInfoExtension(Lcom/google/speech/s3/S3$S3UserInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 310
    :goto_0
    iget-wide v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installIdInvalidateTime:J

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 311
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installId:Ljava/lang/String;

    .line 312
    sget-wide v1, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->INSTALL_ID_WINDOW_SIZE_MILLIS:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installIdInvalidateTime:J

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Request;->getS3UserInfoExtension()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->installId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$S3UserInfo;->setInstallId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    .line 316
    return-void

    .line 303
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Request;->getS3UserInfoExtension()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/s3/S3$S3UserInfo;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/speech/s3/S3$S3UserInfo;->parseFrom([B)Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/speech/s3/S3$S3Request;->setS3UserInfoExtension(Lcom/google/speech/s3/S3$S3UserInfo;)Lcom/google/speech/s3/S3$S3Request;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sync(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    .locals 2
    .parameter "context"
    .parameter "savedAudioRecord"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/logging/audio/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->doSync(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/google/glass/logging/audio/SyncFailedException;

    invoke-direct {v1, v0}, Lcom/google/glass/logging/audio/SyncFailedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
