.class public final Lcom/google/zxing/pdf417/PDF417Writer;
.super Ljava/lang/Object;
.source "PDF417Writer.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;II)Lcom/google/zxing/common/BitMatrix;
    .locals 12
    .parameter "encoder"
    .parameter "contents"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v1, 0x2

    .line 83
    .local v1, errorCorrectionLevel:I
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/pdf417/encoder/PDF417;->generateBarcodeLogic(Ljava/lang/String;I)V

    .line 85
    const/4 v2, 0x2

    .line 86
    .local v2, lineThickness:I
    const/4 v0, 0x4

    .line 87
    .local v0, aspectRatio:I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v2, v10}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v3

    .line 88
    .local v3, originalScale:[[B
    const/4 v4, 0x0

    .line 89
    .local v4, rotated:Z
    if-le p3, p2, :cond_2

    const/4 v9, 0x1

    :goto_0
    const/4 v10, 0x0

    aget-object v10, v3, v10

    array-length v10, v10

    array-length v11, v3

    if-ge v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_1
    xor-int/2addr v9, v10

    if-eqz v9, :cond_0

    .line 90
    invoke-static {v3}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v3

    .line 91
    const/4 v4, 0x1

    .line 94
    :cond_0
    const/4 v9, 0x0

    aget-object v9, v3, v9

    array-length v9, v9

    div-int v6, p2, v9

    .line 95
    .local v6, scaleX:I
    array-length v9, v3

    div-int v7, p3, v9

    .line 98
    .local v7, scaleY:I
    if-ge v6, v7, :cond_4

    .line 99
    move v5, v6

    .line 104
    .local v5, scale:I
    :goto_2
    const/4 v9, 0x1

    if-le v5, v9, :cond_5

    .line 105
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v9

    mul-int v10, v5, v2

    mul-int v11, v5, v0

    mul-int/2addr v11, v2

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v8

    .line 107
    .local v8, scaledMatrix:[[B
    if-eqz v4, :cond_1

    .line 108
    invoke-static {v8}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v8

    .line 110
    :cond_1
    invoke-static {v8}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFrombitArray([[B)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    .line 112
    .end local v8           #scaledMatrix:[[B
    :goto_3
    return-object v9

    .line 89
    .end local v5           #scale:I
    .end local v6           #scaleX:I
    .end local v7           #scaleY:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 101
    .restart local v6       #scaleX:I
    .restart local v7       #scaleY:I
    :cond_4
    move v5, v7

    .restart local v5       #scale:I
    goto :goto_2

    .line 112
    :cond_5
    invoke-static {v3}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFrombitArray([[B)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    goto :goto_3
.end method

.method private static bitMatrixFrombitArray([[B)Lcom/google/zxing/common/BitMatrix;
    .locals 8
    .parameter "input"

    .prologue
    const/4 v7, 0x0

    .line 123
    const/16 v1, 0x1e

    .line 126
    .local v1, whiteSpace:I
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    aget-object v5, p0, v7

    array-length v5, v5

    add-int/lit8 v5, v5, 0x3c

    array-length v6, p0

    add-int/lit8 v6, v6, 0x3c

    invoke-direct {v0, v5, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 127
    .local v0, output:Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 128
    const/4 v3, 0x0

    .local v3, y:I
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v5

    sub-int v4, v5, v1

    .local v4, yOutput:I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_2

    .line 129
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    aget-object v5, p0, v7

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 131
    aget-object v5, p0, v3

    aget-byte v5, v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 132
    add-int v5, v2, v1

    invoke-virtual {v0, v5, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 129
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 136
    .end local v2           #x:I
    :cond_2
    return-object v0
.end method

.method private static rotateArray([[B)[[B
    .locals 7
    .parameter "bitarray"

    .prologue
    const/4 v6, 0x0

    .line 143
    aget-object v4, p0, v6

    array-length v4, v4

    array-length v5, p0

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    .line 144
    .local v3, temp:[[B
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 147
    array-length v4, p0

    sub-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    .line 148
    .local v1, inverseii:I
    const/4 v2, 0x0

    .local v2, jj:I
    :goto_1
    aget-object v4, p0, v6

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 149
    aget-object v4, v3, v2

    aget-object v5, p0, v0

    aget-byte v5, v5, v2

    aput-byte v5, v4, v1

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v1           #inverseii:I
    .end local v2           #jj:I
    :cond_1
    return-object v3
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .parameter "contents"
    .parameter "format"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/pdf417/PDF417Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .parameter "contents"
    .parameter "format"
    .parameter "width"
    .parameter "height"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 42
    .local p5, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v2, :cond_0

    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can only encode PDF_417, but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_0
    new-instance v1, Lcom/google/zxing/pdf417/encoder/PDF417;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/encoder/PDF417;-><init>()V

    .line 48
    .local v1, encoder:Lcom/google/zxing/pdf417/encoder/PDF417;
    if-eqz p5, :cond_3

    .line 49
    sget-object v2, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    sget-object v2, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompact(Z)V

    .line 52
    :cond_1
    sget-object v2, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    sget-object v2, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/pdf417/encoder/Compaction;

    invoke-virtual {v1, v2}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompaction(Lcom/google/zxing/pdf417/encoder/Compaction;)V

    .line 55
    :cond_2
    sget-object v2, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    sget-object v2, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/pdf417/encoder/Dimensions;

    .line 57
    .local v0, dimensions:Lcom/google/zxing/pdf417/encoder/Dimensions;
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxCols()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinCols()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxRows()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinRows()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/zxing/pdf417/encoder/PDF417;->setDimensions(IIII)V

    .line 64
    .end local v0           #dimensions:Lcom/google/zxing/pdf417/encoder/Dimensions;
    :cond_3
    invoke-static {v1, p1, p3, p4}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method
