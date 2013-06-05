.class public final enum Lcom/google/android/ears/s3/SoundSearchConfig$Instance;
.super Ljava/lang/Enum;
.source "SoundSearchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/ears/s3/SoundSearchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Instance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/ears/s3/SoundSearchConfig$Instance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

.field public static final enum DEV:Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

.field public static final enum PROD:Lcom/google/android/ears/s3/SoundSearchConfig$Instance;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    const-string v1, "DEV"

    invoke-direct {v0, v1, v2}, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->DEV:Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    .line 37
    new-instance v0, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v3}, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->PROD:Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    sget-object v1, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->DEV:Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->PROD:Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->$VALUES:[Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/ears/s3/SoundSearchConfig$Instance;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    return-object v0
.end method

.method public static values()[Lcom/google/android/ears/s3/SoundSearchConfig$Instance;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->$VALUES:[Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    invoke-virtual {v0}, [Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    return-object v0
.end method
