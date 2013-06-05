.class final enum Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;
.super Ljava/lang/Enum;
.source "VorbisStreamProducer.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/ears/s3/producers/VorbisStreamProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VorbisStreamState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

.field public static final enum DONE:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

.field public static final enum ENCODER_CLOSED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

.field public static final enum ENCODER_INITIALIZED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

.field public static final enum UNINITIALIZED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    new-instance v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->UNINITIALIZED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    .line 137
    new-instance v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    const-string v1, "ENCODER_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->ENCODER_INITIALIZED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    .line 138
    new-instance v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    const-string v1, "ENCODER_CLOSED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->ENCODER_CLOSED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    .line 139
    new-instance v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->DONE:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    .line 134
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    sget-object v1, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->UNINITIALIZED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->ENCODER_INITIALIZED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->ENCODER_CLOSED:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->DONE:Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->$VALUES:[Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;
    .locals 1
    .parameter "name"

    .prologue
    .line 134
    const-class v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->$VALUES:[Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    invoke-virtual {v0}, [Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/ears/s3/producers/VorbisStreamProducer$VorbisStreamState;

    return-object v0
.end method
