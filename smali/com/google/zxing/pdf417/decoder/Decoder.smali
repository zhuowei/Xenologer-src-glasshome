.class public final Lcom/google/zxing/pdf417/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3


# instance fields
.field private final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/Decoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    .line 39
    return-void
.end method

.method private correctErrors([I[II)V
    .locals 2
    .parameter "codewords"
    .parameter "erasures"
    .parameter "numECCodewords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 129
    array-length v0, p2

    div-int/lit8 v1, p3, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0x200

    if-le p3, v0, :cond_1

    .line 132
    :cond_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/Decoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)V

    .line 135
    return-void
.end method

.method private static verifyCodewordCount([II)V
    .locals 4
    .parameter "codewords"
    .parameter "numECCodewords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 95
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 98
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 103
    :cond_0
    aget v0, p0, v3

    .line 104
    .local v0, numberOfCodewords:I
    array-length v1, p0

    if-le v0, v1, :cond_1

    .line 105
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 107
    :cond_1
    if-nez v0, :cond_2

    .line 109
    array-length v1, p0

    if-ge p1, v1, :cond_3

    .line 110
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v3

    .line 115
    :cond_2
    return-void

    .line 112
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v4, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;

    invoke-direct {v4, p1}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 72
    .local v4, parser:Lcom/google/zxing/pdf417/decoder/BitMatrixParser;
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->readCodewords()[I

    move-result-object v0

    .line 73
    .local v0, codewords:[I
    array-length v5, v0

    if-nez v5, :cond_0

    .line 74
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 77
    :cond_0
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getECLevel()I

    move-result v1

    .line 78
    .local v1, ecLevel:I
    const/4 v5, 0x1

    add-int/lit8 v6, v1, 0x1

    shl-int v3, v5, v6

    .line 79
    .local v3, numECCodewords:I
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getErasures()[I

    move-result-object v2

    .line 81
    .local v2, erasures:[I
    invoke-direct {p0, v0, v2, v3}, Lcom/google/zxing/pdf417/decoder/Decoder;->correctErrors([I[II)V

    .line 82
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/Decoder;->verifyCodewordCount([II)V

    .line 85
    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v5

    return-object v5
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 49
    array-length v1, p1

    .line 50
    .local v1, dimension:I
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 51
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 52
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 53
    aget-object v4, p1, v3

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 52
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v3           #j:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    return-object v4
.end method
