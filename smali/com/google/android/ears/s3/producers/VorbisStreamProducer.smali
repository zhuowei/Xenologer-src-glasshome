.class public Lcom/google/android/ears/s3/producers/VorbisStreamProducer;
.super Ljava/lang/Object;
.source "VorbisStreamProducer.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/S3RequestProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;
    }
.end annotation


# static fields
.field private static final BYTES_PER_SAMPLE:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "VorbisStreamProducer"

.field private static final VORBIS_QUALITY:F = 0.5f


# instance fields
.field private mAudio:Ljava/io/InputStream;

.field private final mBuffer:[B

.field private final mMaxRecordingLengthSeconds:I

.field private mNumBytesCaptured:I

.field private final mNumChannels:I

.field private final mRequestSize:I

.field private final mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

.field private final mSampleRateHz:I

.field private mState:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "VorbisStreamProducer"

    invoke-static {v0}, Lcom/google/android/ears/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IIII)V
    .locals 1
    .parameter "audio"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "sampleRateHz"
    .end parameter
    .parameter "numChannels"
    .end parameter
    .parameter "requestSize"
    .end parameter
    .parameter "maxRecordingLengthSeconds"
    .end parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mAudio:Ljava/io/InputStream;

    .line 53
    iput p2, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mSampleRateHz:I

    .line 54
    iput p3, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mNumChannels:I

    .line 55
    iput p4, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mRequestSize:I

    .line 56
    iput p5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mMaxRecordingLengthSeconds:I

    .line 57
    iget v0, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mRequestSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mBuffer:[B

    .line 58
    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 59
    sget-object v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->UNINITIALIZED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    iput-object v0, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mState:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    .line 60
    return-void
.end method

.method private transitionTo(Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 143
    sget-boolean v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "VorbisStreamProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mState:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    invoke-virtual {v2}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mState:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    .line 145
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 123
    iget-object v0, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mState:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    sget-object v1, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->ENCODER_INITIALIZED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    if-ne v0, v1, :cond_1

    .line 124
    sget-boolean v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "VorbisStreamProducer"

    const-string v1, "VorbisEncoder.close()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    invoke-static {}, Lcom/google/android/ears/VorbisEncoder;->close()[B

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mAudio:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mAudio:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mAudio:Ljava/io/InputStream;

    .line 131
    :cond_2
    sget-object v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->DONE:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    invoke-direct {p0, v0}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->transitionTo(Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;)V

    .line 132
    return-void
.end method

.method getState()Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mState:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    return-object v0
.end method

.method public next()Lcom/google/speech/s3/S3$S3Request;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mSameThread:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v5}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 76
    :try_start_0
    iget-object v5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mState:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    sget-object v6, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->UNINITIALIZED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    if-ne v5, v6, :cond_1

    .line 77
    sget-boolean v5, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->LOGV:Z

    if-eqz v5, :cond_0

    const-string v5, "VorbisStreamProducer"

    const-string v6, "VorbisEncoder.init()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget v5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mNumChannels:I

    iget v6, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mSampleRateHz:I

    const/high16 v7, 0x3f00

    invoke-static {v5, v6, v7}, Lcom/google/android/ears/VorbisEncoder;->init(IIF)[B

    move-result-object v2

    .line 79
    .local v2, headers:[B
    sget-object v5, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->ENCODER_INITIALIZED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    invoke-direct {p0, v5}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->transitionTo(Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;)V

    .line 80
    array-length v5, v2

    invoke-static {v2, v5}, Lcom/google/android/speech/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    .line 110
    .end local v2           #headers:[B
    :goto_0
    return-object v5

    .line 83
    :cond_1
    iget-object v5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mState:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    sget-object v6, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->ENCODER_CLOSED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    if-ne v5, v6, :cond_2

    .line 84
    sget-object v5, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->DONE:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    invoke-direct {p0, v5}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->transitionTo(Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;)V

    .line 85
    invoke-static {}, Lcom/google/android/speech/message/S3RequestUtils;->createEndOfData()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    goto :goto_0

    .line 88
    :cond_2
    iget-object v5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mState:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    sget-object v6, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->DONE:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    if-ne v5, v6, :cond_3

    .line 89
    const/4 v5, 0x0

    goto :goto_0

    .line 93
    :cond_3
    iget v5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mMaxRecordingLengthSeconds:I

    if-lez v5, :cond_5

    iget v5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mNumBytesCaptured:I

    iget v6, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mSampleRateHz:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mMaxRecordingLengthSeconds:I

    mul-int/2addr v6, v7

    if-le v5, v6, :cond_5

    .line 95
    sget-boolean v5, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->LOGV:Z

    if-eqz v5, :cond_4

    const-string v5, "VorbisStreamProducer"

    const-string v6, "VorbisEncoder.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_4
    invoke-static {}, Lcom/google/android/ears/VorbisEncoder;->close()[B

    move-result-object v3

    .line 97
    .local v3, lastChunk:[B
    sget-object v5, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->ENCODER_CLOSED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    invoke-direct {p0, v5}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->transitionTo(Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;)V

    .line 98
    array-length v5, v3

    invoke-static {v3, v5}, Lcom/google/android/speech/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    goto :goto_0

    .line 101
    .end local v3           #lastChunk:[B
    :cond_5
    iget-object v5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mAudio:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mBuffer:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mBuffer:[B

    array-length v8, v8

    invoke-static {v5, v6, v7, v8}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 102
    .local v4, length:I
    iget v5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mNumBytesCaptured:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mNumBytesCaptured:I

    .line 103
    if-lez v4, :cond_6

    .line 104
    iget-object v5, p0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->mBuffer:[B

    div-int/lit8 v6, v4, 0x2

    invoke-static {v5, v6}, Lcom/google/android/ears/VorbisEncoder;->encodeData([BI)[B

    move-result-object v1

    .line 105
    .local v1, encoded:[B
    array-length v5, v1

    invoke-static {v1, v5}, Lcom/google/android/speech/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;

    move-result-object v5

    goto :goto_0

    .line 107
    .end local v1           #encoded:[B
    :cond_6
    sget-boolean v5, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->LOGV:Z

    if-eqz v5, :cond_7

    const-string v5, "VorbisStreamProducer"

    const-string v6, "VorbisEncoder.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_7
    invoke-static {}, Lcom/google/android/ears/VorbisEncoder;->close()[B

    move-result-object v3

    .line 109
    .restart local v3       #lastChunk:[B
    sget-object v5, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->ENCODER_CLOSED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    invoke-direct {p0, v5}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->transitionTo(Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;)V

    .line 110
    array-length v5, v3

    invoke-static {v3, v5}, Lcom/google/android/speech/message/S3RequestUtils;->createAudioDataRequest([BI)Lcom/google/speech/s3/S3$S3Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 112
    .end local v3           #lastChunk:[B
    .end local v4           #length:I
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;->close()V

    .line 116
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Error encoding audio."

    invoke-direct {v5, v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
