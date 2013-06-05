.class synthetic Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier$1;
.super Ljava/lang/Object;
.source "PairHttpServerInfoSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$ears$s3$SoundSearchConfig$Instance:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->values()[Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier$1;->$SwitchMap$com$google$android$ears$s3$SoundSearchConfig$Instance:[I

    :try_start_0
    sget-object v0, Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier$1;->$SwitchMap$com$google$android$ears$s3$SoundSearchConfig$Instance:[I

    sget-object v1, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->DEV:Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    invoke-virtual {v1}, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier$1;->$SwitchMap$com$google$android$ears$s3$SoundSearchConfig$Instance:[I

    sget-object v1, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->PROD:Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    invoke-virtual {v1}, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
