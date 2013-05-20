.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 42
    return-void
.end method

.method private correctErrors([BI)V
    .locals 6
    .parameter "codewordBytes"
    .parameter "numDataCodewords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 127
    array-length v3, p1

    .line 129
    .local v3, numCodewords:I
    new-array v0, v3, [I

    .line 130
    .local v0, codewordsInts:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 131
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    array-length v5, p1

    sub-int v4, v5, p2

    .line 135
    .local v4, numECCodewords:I
    :try_start_0
    iget-object v5, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v5, v0, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 142
    aget v5, v0, v1

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, ignored:Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v5

    throw v5

    .line 144
    .end local v2           #ignored:Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    :cond_1
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 19
    .parameter "bits"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 87
    .local p2, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v12, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 88
    .local v12, parser:Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v17

    .line 89
    .local v17, version:Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v7

    .line 92
    .local v7, ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v4

    .line 94
    .local v4, codewords:[B
    move-object/from16 v0, v17

    invoke-static {v4, v0, v7}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v6

    .line 97
    .local v6, dataBlocks:[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/16 v16, 0x0

    .line 98
    .local v16, totalBytes:I
    move-object v2, v6

    .local v2, arr$:[Lcom/google/zxing/qrcode/decoder/DataBlock;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v5, v2, v9

    .line 99
    .local v5, dataBlock:Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v18

    add-int v16, v16, v18

    .line 98
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 101
    .end local v5           #dataBlock:Lcom/google/zxing/qrcode/decoder/DataBlock;
    :cond_0
    move/from16 v0, v16

    new-array v13, v0, [B

    .line 102
    .local v13, resultBytes:[B
    const/4 v14, 0x0

    .line 105
    .local v14, resultOffset:I
    move-object v2, v6

    array-length v10, v2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_2

    aget-object v5, v2, v9

    .line 106
    .restart local v5       #dataBlock:Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v3

    .line 107
    .local v3, codewordBytes:[B
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v11

    .line 108
    .local v11, numDataCodewords:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)V

    .line 109
    const/4 v8, 0x0

    .local v8, i:I
    move v15, v14

    .end local v14           #resultOffset:I
    .local v15, resultOffset:I
    :goto_2
    if-ge v8, v11, :cond_1

    .line 110
    add-int/lit8 v14, v15, 0x1

    .end local v15           #resultOffset:I
    .restart local v14       #resultOffset:I
    aget-byte v18, v3, v8

    aput-byte v18, v13, v15

    .line 109
    add-int/lit8 v8, v8, 0x1

    move v15, v14

    .end local v14           #resultOffset:I
    .restart local v15       #resultOffset:I
    goto :goto_2

    .line 105
    :cond_1
    add-int/lit8 v9, v9, 0x1

    move v14, v15

    .end local v15           #resultOffset:I
    .restart local v14       #resultOffset:I
    goto :goto_1

    .line 115
    .end local v3           #codewordBytes:[B
    .end local v5           #dataBlock:Lcom/google/zxing/qrcode/decoder/DataBlock;
    .end local v8           #i:I
    .end local v11           #numDataCodewords:I
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v13, v0, v7, v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v18

    return-object v18
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .parameter "image"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 59
    .local p2, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    array-length v1, p1

    .line 60
    .local v1, dimension:I
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 61
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 62
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 63
    aget-object v4, p1, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {v0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 62
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v3           #j:I
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    return-object v4
.end method
