.class public Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;
.super Ljava/lang/Object;
.source "SoundSearchRequestProducerFactory.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/RequestProducerFactory;


# instance fields
.field private final mCountryCode:Ljava/lang/String;

.field private final mRequestIdSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "countryCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;->mRequestIdSupplier:Lcom/google/common/base/Supplier;

    .line 31
    iput-object p2, p0, Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;->mCountryCode:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private getSoundSearchInfo(Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    .locals 5
    .parameter "codec"

    .prologue
    const/4 v4, 0x0

    .line 52
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;-><init>()V

    .line 53
    .local v0, lookup:Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;
    iget-object v3, p0, Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->setClientCountryCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 55
    invoke-virtual {v0, v4}, Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;->addDesiredResultType(I)Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;

    .line 57
    new-instance v2, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    invoke-direct {v2}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;-><init>()V

    .line 58
    .local v2, stream:Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;
    invoke-virtual {p1}, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->getEncoding()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->setAudioEncoding(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->getContainer()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;->setAudioContainer(I)Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;

    .line 61
    new-instance v1, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;-><init>()V

    .line 62
    .local v1, soundSearchInfo:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;
    invoke-virtual {v1, v0}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setLookupRequest(Lcom/google/audio/ears/proto/EarsService$EarsLookupRequest;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 63
    invoke-virtual {v1, v2}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setStreamRequest(Lcom/google/audio/ears/proto/EarsService$EarsStreamRequest;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 67
    invoke-virtual {v1, v4}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;->setTtsOutputEnabled(Z)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 68
    return-object v1
.end method


# virtual methods
.method public init(Lcom/google/android/speech/params/SessionParams;)V
    .locals 0
    .parameter "sessionparams"

    .prologue
    .line 74
    return-void
.end method

.method public newRequestProducer(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducer;
    .locals 5
    .parameter "inputStream"

    .prologue
    .line 36
    new-instance v1, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;

    sget-object v2, Lcom/google/android/ears/s3/SoundSearchConfig;->AUDIO_CODEC:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    invoke-direct {p0, v2}, Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;->getSoundSearchInfo(Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;)Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/ears/s3/producers/SoundSearchRequestProducerFactory;->mRequestIdSupplier:Lcom/google/common/base/Supplier;

    const-string v4, "sound-search"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;-><init>(Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;Lcom/google/common/base/Supplier;Ljava/lang/String;)V

    .line 41
    .local v1, header:Lcom/google/android/speech/network/producers/S3RequestProducer;
    new-instance v2, Lcom/google/android/ears/s3/producers/AudioStreamProducerFactory;

    sget-object v3, Lcom/google/android/ears/s3/SoundSearchConfig;->AUDIO_CODEC:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    invoke-direct {v2, v3}, Lcom/google/android/ears/s3/producers/AudioStreamProducerFactory;-><init>(Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;)V

    invoke-virtual {v2, p1}, Lcom/google/android/ears/s3/producers/AudioStreamProducerFactory;->newRequestProducer(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducer;

    move-result-object v0

    .line 47
    .local v0, audio:Lcom/google/android/speech/network/producers/S3RequestProducer;
    new-instance v2, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;

    invoke-direct {v2, v1, v0}, Lcom/google/android/speech/network/producers/Producers$CompositeProducer;-><init>(Lcom/google/android/speech/network/producers/S3RequestProducer;Lcom/google/android/speech/network/producers/S3RequestProducer;)V

    return-object v2
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
