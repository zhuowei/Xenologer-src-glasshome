.class public Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier;
.super Ljava/lang/Object;
.source "PairHttpServerInfoSupplier.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I = 0x4e20

.field private static final READ_TIMEOUT_MS:I = 0x7d0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static getDev()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier;->getProduction()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getProduction()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 5

    .prologue
    const/16 v4, 0x4e20

    const/16 v3, 0x7d0

    .line 33
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;-><init>()V

    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    const-string v2, "https://www.google.com/m/voice-search/down?pair="

    invoke-virtual {v1, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setConnectionTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setReadTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->setDown(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v0

    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    const-string v2, "https://www.google.com/m/voice-search/up?pair="

    invoke-virtual {v1, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v1

    const-string v2, "c548_232a_f5c8_05ff"

    invoke-virtual {v1, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setHeader(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setConnectionTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->setReadTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->setUp(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier$1;->$SwitchMap$com$google$android$ears$s3$SoundSearchConfig$Instance:[I

    sget-object v1, Lcom/google/android/ears/s3/SoundSearchConfig;->S3_INSTANCE:Lcom/google/android/ears/s3/SoundSearchConfig$Instance;

    invoke-virtual {v1}, Lcom/google/android/ears/s3/SoundSearchConfig$Instance;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 24
    invoke-static {}, Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier;->getProduction()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v0

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    invoke-static {}, Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier;->getDev()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v0

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/android/ears/s3/suppliers/PairHttpServerInfoSupplier;->get()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v0

    return-object v0
.end method
