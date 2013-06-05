.class public final enum Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;
.super Ljava/lang/Enum;
.source "SoundSearchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/ears/s3/SoundSearchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioCodec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

.field public static final enum AAC:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

.field public static final enum VORBIS:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;


# instance fields
.field private final mContainer:I

.field private final mEncoding:I

.field private final mOptionalMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 44
    new-instance v0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    const-string v1, "AAC"

    const-string v5, "audio/mp4a-latm"

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->AAC:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    .line 45
    new-instance v0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    const-string v1, "VORBIS"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->VORBIS:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    sget-object v1, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->AAC:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->VORBIS:Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->$VALUES:[Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .parameter
    .parameter
    .parameter "encoding"
    .parameter "container"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->mEncoding:I

    .line 53
    iput p4, p0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->mContainer:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->mOptionalMimeType:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "encoding"
    .parameter "container"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->mEncoding:I

    .line 59
    iput p4, p0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->mContainer:I

    .line 60
    iput-object p5, p0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->mOptionalMimeType:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->$VALUES:[Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    invoke-virtual {v0}, [Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;

    return-object v0
.end method


# virtual methods
.method public getContainer()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->mContainer:I

    return v0
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->mEncoding:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/ears/s3/SoundSearchConfig$AudioCodec;->mOptionalMimeType:Ljava/lang/String;

    return-object v0
.end method
