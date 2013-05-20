.class public Lcom/google/zxing/qrcode/QRCodeReader;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/qrcode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 17
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v5

    .line 110
    .local v5, leftTopBlack:[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v11

    .line 111
    .local v11, rightBottomBlack:[I
    if-eqz v5, :cond_0

    if-nez v11, :cond_1

    .line 112
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v15

    throw v15

    .line 115
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v5, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->moduleSize([ILcom/google/zxing/common/BitMatrix;)F

    move-result v8

    .line 117
    .local v8, moduleSize:F
    const/4 v15, 0x1

    aget v12, v5, v15

    .line 118
    .local v12, top:I
    const/4 v15, 0x1

    aget v2, v11, v15

    .line 119
    .local v2, bottom:I
    const/4 v15, 0x0

    aget v4, v5, v15

    .line 120
    .local v4, left:I
    const/4 v15, 0x0

    aget v10, v11, v15

    .line 122
    .local v10, right:I
    sub-int v15, v2, v12

    sub-int v16, v10, v4

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 125
    sub-int v15, v2, v12

    add-int v10, v4, v15

    .line 128
    :cond_2
    sub-int v15, v10, v4

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    div-float/2addr v15, v8

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 129
    .local v7, matrixWidth:I
    sub-int v15, v2, v12

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    div-float/2addr v15, v8

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 130
    .local v6, matrixHeight:I
    if-lez v7, :cond_3

    if-gtz v6, :cond_4

    .line 131
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v15

    throw v15

    .line 133
    :cond_4
    if-eq v6, v7, :cond_5

    .line 135
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v15

    throw v15

    .line 141
    :cond_5
    const/high16 v15, 0x4000

    div-float v15, v8, v15

    float-to-int v9, v15

    .line 142
    .local v9, nudge:I
    add-int/2addr v12, v9

    .line 143
    add-int/2addr v4, v9

    .line 146
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v7, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 147
    .local v1, bits:Lcom/google/zxing/common/BitMatrix;
    const/4 v14, 0x0

    .local v14, y:I
    :goto_0
    if-ge v14, v6, :cond_8

    .line 148
    int-to-float v15, v14

    mul-float/2addr v15, v8

    float-to-int v15, v15

    add-int v3, v12, v15

    .line 149
    .local v3, iOffset:I
    const/4 v13, 0x0

    .local v13, x:I
    :goto_1
    if-ge v13, v7, :cond_7

    .line 150
    int-to-float v15, v13

    mul-float/2addr v15, v8

    float-to-int v15, v15

    add-int/2addr v15, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 151
    invoke-virtual {v1, v13, v14}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 149
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 147
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 155
    .end local v3           #iOffset:I
    .end local v13           #x:I
    :cond_8
    return-object v1
.end method

.method private static moduleSize([ILcom/google/zxing/common/BitMatrix;)F
    .locals 9
    .parameter "leftTopBlack"
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 159
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 160
    .local v0, height:I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 161
    .local v3, width:I
    aget v4, p0, v7

    .line 162
    .local v4, x:I
    aget v5, p0, v6

    .line 163
    .local v5, y:I
    const/4 v1, 0x1

    .line 164
    .local v1, inBlack:Z
    const/4 v2, 0x0

    .line 165
    .local v2, transitions:I
    :goto_0
    if-ge v4, v3, :cond_0

    if-ge v5, v0, :cond_0

    .line 166
    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eq v1, v8, :cond_3

    .line 167
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x5

    if-ne v2, v8, :cond_2

    .line 175
    :cond_0
    if-eq v4, v3, :cond_1

    if-ne v5, v0, :cond_5

    .line 176
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 170
    :cond_2
    if-nez v1, :cond_4

    move v1, v6

    .line 172
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v1, v7

    .line 170
    goto :goto_1

    .line 178
    :cond_5
    aget v6, p0, v7

    sub-int v6, v4, v6

    int-to-float v6, v6

    const/high16 v7, 0x40e0

    div-float/2addr v6, v7

    return v6
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public final decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 10
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
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 71
    .local p2, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p2, :cond_2

    sget-object v7, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 72
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/QRCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 73
    .local v0, bits:Lcom/google/zxing/common/BitMatrix;
    iget-object v7, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v7, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    .line 74
    .local v2, decoderResult:Lcom/google/zxing/common/DecoderResult;
    sget-object v5, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    .line 81
    .end local v0           #bits:Lcom/google/zxing/common/BitMatrix;
    .local v5, points:[Lcom/google/zxing/ResultPoint;
    :goto_0
    new-instance v6, Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v8

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v7, v8, v5, v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 82
    .local v6, result:Lcom/google/zxing/Result;
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v1

    .line 83
    .local v1, byteSegments:Ljava/util/List;,"Ljava/util/List<[B>;"
    if-eqz v1, :cond_0

    .line 84
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v6, v7, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 86
    :cond_0
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, ecLevel:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 88
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v6, v7, v4}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 90
    :cond_1
    return-object v6

    .line 76
    .end local v1           #byteSegments:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #decoderResult:Lcom/google/zxing/common/DecoderResult;
    .end local v4           #ecLevel:Ljava/lang/String;
    .end local v5           #points:[Lcom/google/zxing/ResultPoint;
    .end local v6           #result:Lcom/google/zxing/Result;
    :cond_2
    new-instance v7, Lcom/google/zxing/qrcode/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v7, p2}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v3

    .line 77
    .local v3, detectorResult:Lcom/google/zxing/common/DetectorResult;
    iget-object v7, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v3}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    .line 78
    .restart local v2       #decoderResult:Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v3}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .restart local v5       #points:[Lcom/google/zxing/ResultPoint;
    goto :goto_0
.end method

.method protected final getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
