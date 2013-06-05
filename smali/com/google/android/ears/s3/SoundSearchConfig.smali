.class public Lcom/google/android/ears/s3/SoundSearchConfig;
.super Ljava/lang/Object;
.source "SoundSearchConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;,
        Lcom/google/android/ears/s3/SoundSearchConfig$Instance;
    }
.end annotation


# static fields
.field public static final AUDIO_BUFFER_SIZE_SECONDS:I = 0x8

.field public static final AUDIO_CODEC:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec; = null

.field public static final BUFFER_SIZE_BYTES:I = 0x50bfe

.field public static final BYTES_PER_SAMPLE:I = 0x2

.field public static final MAX_STREAM_SIZE_SECONDS:I = 0xf

.field public static final MIC_READ_SIZE:I = 0x800

.field public static final NOISE_SUPPRESSION:Z = false

.field public static final NUM_CHANNELS:I = 0x1

.field public static final OUT_BITRATE:I = 0x9c40

.field public static final OUT_BUFFER_SIZE:I = 0x800

.field public static final S3_INSTANCE:Lcom/google/android/ears/s3/SoundSearchConfig$Instance; = null

.field public static final S3_SERVICE:Ljava/lang/String; = "sound-search"

.field public static final SAMPLE_RATE_HZ:I = 0x2b11


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->PROD:Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    sput-object v0, Lcom/google/android/ears/s3/SoundSearchConfig;->S3_INSTANCE:Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    .line 29
    sget-object v0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->VORBIS:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    sput-object v0, Lcom/google/android/ears/s3/SoundSearchConfig;->AUDIO_CODEC:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method
