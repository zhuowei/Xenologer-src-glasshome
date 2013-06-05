.class public final enum Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;
.super Ljava/lang/Enum;
.source "SoundSearchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/ears/s3/listeners/SoundSearchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

.field public static final enum AUDIO_CAPTURE_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

.field public static final enum LOOKUP_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

.field public static final enum NETWORK_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    const-string v1, "LOOKUP_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->LOOKUP_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    new-instance v0, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    const-string v1, "AUDIO_CAPTURE_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->AUDIO_CAPTURE_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    new-instance v0, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->NETWORK_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    sget-object v1, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->LOOKUP_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->AUDIO_CAPTURE_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->NETWORK_ERROR:Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->$VALUES:[Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->$VALUES:[Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    invoke-virtual {v0}, [Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/ears/s3/listeners/SoundSearchListener$ErrorType;

    return-object v0
.end method
