.class public Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;
.super Ljava/lang/Object;
.source "SoundSearchRecognitionEngine.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SoundSearchRecognitionEngine"


# instance fields
.field private mCallback:Lcom/google/android/speech/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;

.field private mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

.field private final mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

.field private mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

.field private final mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "SoundSearchRecognitionEngine"

    invoke-static {v0}, Lcom/google/android/ears/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/network/producers/RequestProducerFactory;)V
    .locals 1
    .parameter "primary"
    .parameter "requestProducerFactory"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;

    .line 44
    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 45
    iput-object p2, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

    .line 46
    return-void
.end method

.method private createAndStartRecognitionRunner(Lcom/google/android/speech/network/S3ConnectionFactory;)V
    .locals 6
    .parameter "factory"

    .prologue
    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    invoke-interface {v2}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v2, Lcom/google/android/speech/network/NetworkRecognitionRunner;

    iget-object v3, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mCallback:Lcom/google/android/speech/callback/Callback;

    new-instance v4, Lcom/google/android/ears/s3/listeners/BaseNetworkEventListener;

    invoke-direct {v4}, Lcom/google/android/ears/s3/listeners/BaseNetworkEventListener;-><init>()V

    iget-object v5, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mRequestProducerFactory:Lcom/google/android/speech/network/producers/RequestProducerFactory;

    invoke-interface {v5, v1}, Lcom/google/android/speech/network/producers/RequestProducerFactory;->newRequestProducer(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducer;

    move-result-object v5

    invoke-direct {v2, v3, v4, p1, v5}, Lcom/google/android/speech/network/NetworkRecognitionRunner;-><init>(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/network/NetworkEventListener;Lcom/google/android/speech/network/S3ConnectionFactory;Lcom/google/android/speech/network/producers/S3RequestProducer;)V

    iput-object v2, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    .line 82
    iget-object v2, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    invoke-virtual {v2}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->start()V

    .line 83
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mCallback:Lcom/google/android/speech/callback/Callback;

    new-instance v3, Lcom/google/android/speech/exception/AudioRecognizeException;

    const-string v4, "Unable to create stream"

    invoke-direct {v3, v4, v0}, Lcom/google/android/speech/exception/AudioRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 61
    iput-object v1, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mCallback:Lcom/google/android/speech/callback/Callback;

    .line 62
    iput-object v1, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 64
    iget-object v0, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    iput-object v1, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mRunner:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    .line 68
    :cond_0
    return-void
.end method

.method public startRecognition(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/Callback;)V
    .locals 2
    .parameter "inputFactory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/audio/AudioInputStreamFactory;",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/exception/RecognizeException;>;"
    sget-boolean v0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "SoundSearchRecognitionEngine"

    const-string v1, "#startRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 54
    iput-object p2, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mCallback:Lcom/google/android/speech/callback/Callback;

    .line 55
    iput-object p1, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mInputFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 56
    iget-object v0, p0, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->mConnectionFactory:Lcom/google/android/speech/network/S3ConnectionFactory;

    invoke-direct {p0, v0}, Lcom/google/android/ears/s3/SoundSearchRecognitionEngine;->createAndStartRecognitionRunner(Lcom/google/android/speech/network/S3ConnectionFactory;)V

    .line 57
    return-void
.end method
