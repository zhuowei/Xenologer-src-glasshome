.class public Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;
.super Ljava/lang/Object;
.source "SoundSearchHeaderProducer.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/S3RequestProducer;


# instance fields
.field private mComplete:Z

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

.field private final mService:Ljava/lang/String;

.field private final mSoundSearchInfo:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;


# direct methods
.method public constructor <init>(Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;Lcom/google/common/base/Supplier;Ljava/lang/String;)V
    .locals 0
    .parameter "soundSearchInfo"
    .parameter
    .parameter "service"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, requestIdSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;->mSoundSearchInfo:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    .line 30
    iput-object p2, p0, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;->mRequestIdSupplier:Lcom/google/common/base/Supplier;

    .line 31
    iput-object p3, p0, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;->mService:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private produceRequest()Lcom/google/speech/s3/S3$S3Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createBaseS3Request()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;->mService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/speech/s3/S3$S3Request;->setService(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    .line 51
    .local v0, request:Lcom/google/speech/s3/S3$S3Request;
    iget-object v2, p0, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;->mRequestIdSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    .local v1, requestId:Ljava/lang/String;
    new-instance v2, Lcom/google/speech/s3/S3$S3SessionInfo;

    invoke-direct {v2}, Lcom/google/speech/s3/S3$S3SessionInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/speech/s3/S3$S3SessionInfo;->setSessionId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3SessionInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/speech/s3/S3$S3Request;->setS3SessionInfoExtension(Lcom/google/speech/s3/S3$S3SessionInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 53
    iget-object v2, p0, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;->mSoundSearchInfo:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;

    invoke-virtual {v0, v2}, Lcom/google/speech/s3/S3$S3Request;->setSoundSearchInfoExtension(Lcom/google/speech/speech/s3/SoundSearch$SoundSearchInfo;)Lcom/google/speech/s3/S3$S3Request;

    .line 54
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;->mComplete:Z

    .line 47
    return-void
.end method

.method public next()Lcom/google/speech/s3/S3$S3Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;->mComplete:Z

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;->mComplete:Z

    .line 41
    invoke-direct {p0}, Lcom/google/android/ears/s3/producers/SoundSearchHeaderProducer;->produceRequest()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3Request;

    goto :goto_0
.end method
