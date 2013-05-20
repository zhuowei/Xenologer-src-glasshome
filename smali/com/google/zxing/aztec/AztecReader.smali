.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 15
    .parameter "image"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 60
    .local p2, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v12, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v12}, Lcom/google/zxing/aztec/detector/Detector;->detect()Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v4

    .line 61
    .local v4, detectorResult:Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 63
    .local v9, points:[Lcom/google/zxing/ResultPoint;
    if-eqz p2, :cond_0

    .line 64
    sget-object v12, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/ResultPointCallback;

    .line 65
    .local v11, rpcb:Lcom/google/zxing/ResultPointCallback;
    if-eqz v11, :cond_0

    .line 66
    move-object v1, v9

    .local v1, arr$:[Lcom/google/zxing/ResultPoint;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v8, v1, v6

    .line 67
    .local v8, point:Lcom/google/zxing/ResultPoint;
    invoke-interface {v11, v8}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 72
    .end local v1           #arr$:[Lcom/google/zxing/ResultPoint;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #point:Lcom/google/zxing/ResultPoint;
    .end local v11           #rpcb:Lcom/google/zxing/ResultPointCallback;
    :cond_0
    new-instance v12, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v12}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v12, v4}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3

    .line 74
    .local v3, decoderResult:Lcom/google/zxing/common/DecoderResult;
    new-instance v10, Lcom/google/zxing/Result;

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v13

    sget-object v14, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v10, v12, v13, v9, v14}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 76
    .local v10, result:Lcom/google/zxing/Result;
    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v2

    .line 77
    .local v2, byteSegments:Ljava/util/List;,"Ljava/util/List<[B>;"
    if-eqz v2, :cond_1

    .line 78
    sget-object v12, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v10, v12, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 80
    :cond_1
    invoke-virtual {v3}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, ecLevel:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 82
    sget-object v12, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v10, v12, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 85
    :cond_2
    return-object v10
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
