.class public Lcom/google/android/ears/s3/producers/AudioStreamProducerFactory;
.super Ljava/lang/Object;
.source "AudioStreamProducerFactory.java"

# interfaces
.implements Lcom/google/android/speech/network/producers/RequestProducerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/ears/s3/producers/AudioStreamProducerFactory$1;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioStreamProducerFactory"


# instance fields
.field private final mCodec:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "AudioStreamProducerFactory"

    invoke-static {v0}, Lcom/google/android/ears/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/ears/s3/producers/AudioStreamProducerFactory;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;)V
    .locals 0
    .parameter "codec"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/ears/s3/producers/AudioStreamProducerFactory;->mCodec:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    .line 31
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/speech/params/SessionParams;)V
    .locals 0
    .parameter "sessionParams"

    .prologue
    .line 60
    return-void
.end method

.method public newRequestProducer(Ljava/io/InputStream;)Lcom/google/android/speech/network/producers/S3RequestProducer;
    .locals 9
    .parameter "inputStream"

    .prologue
    const/16 v3, 0x2b11

    const/16 v8, 0xf

    const/4 v4, 0x1

    const/16 v5, 0x800

    .line 35
    sget-boolean v0, Lcom/google/android/ears/s3/producers/AudioStreamProducerFactory;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioStreamProducerFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a request producer for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/ears/s3/producers/AudioStreamProducerFactory;->mCodec:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    invoke-virtual {v2}, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    sget-object v0, Lcom/google/android/ears/s3/producers/AudioStreamProducerFactory$1;->$SwitchMap$com$google$android$ears$s3$SoundSearchConfig$AudioCodec:[I

    iget-object v1, p0, Lcom/google/android/ears/s3/producers/AudioStreamProducerFactory;->mCodec:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    invoke-virtual {v1}, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown codec!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :pswitch_0
    new-instance v0, Lcom/google/android/speech/network/producers/AacStreamProducer;

    sget-object v1, Lcom/google/android/ears/s3/SoundSearchConfig;->AUDIO_CODEC:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    invoke-virtual {v1}, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const v7, 0x9c40

    move-object v1, p1

    move v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/speech/network/producers/AacStreamProducer;-><init>(Ljava/io/InputStream;Ljava/lang/String;IIIIII)V

    .line 47
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v1, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;

    move-object v2, p1

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer;-><init>(Ljava/io/InputStream;IIII)V

    move-object v0, v1

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
