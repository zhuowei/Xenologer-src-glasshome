.class public final Lcom/google/zxing/pdf417/detector/LinesSampler;
.super Ljava/lang/Object;
.source "LinesSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/detector/LinesSampler$1;,
        Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;
    }
.end annotation


# static fields
.field private static final BARCODE_START_OFFSET:I = 0x2

.field private static final BARS_IN_SYMBOL:I = 0x8

.field private static final MODULES_IN_SYMBOL:I = 0x11

.field private static final RATIOS_TABLE:[F


# instance fields
.field private final dimension:I

.field private final linesMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final symbolsPerLine:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 50
    sget-object v7, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->SYMBOL_TABLE:[I

    array-length v7, v7

    filled-new-array {v7, v10}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    .line 51
    .local v5, table:[[F
    sget-object v7, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->SYMBOL_TABLE:[I

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x8

    new-array v7, v7, [F

    sput-object v7, Lcom/google/zxing/pdf417/detector/LinesSampler;->RATIOS_TABLE:[F

    .line 52
    const/4 v6, 0x0

    .line 53
    .local v6, x:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v7, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->SYMBOL_TABLE:[I

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 54
    sget-object v7, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->SYMBOL_TABLE:[I

    aget v1, v7, v2

    .line 55
    .local v1, currentSymbol:I
    and-int/lit8 v0, v1, 0x1

    .line 56
    .local v0, currentBit:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v10, :cond_1

    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, size:F
    :goto_2
    and-int/lit8 v7, v1, 0x1

    if-ne v7, v0, :cond_0

    .line 59
    const/high16 v7, 0x3f80

    add-float/2addr v4, v7

    .line 60
    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 62
    :cond_0
    and-int/lit8 v0, v1, 0x1

    .line 63
    aget-object v7, v5, v2

    rsub-int/lit8 v8, v3, 0x8

    add-int/lit8 v8, v8, -0x1

    const/high16 v9, 0x4188

    div-float v9, v4, v9

    aput v9, v7, v8

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 65
    .end local v4           #size:F
    :cond_1
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v10, :cond_2

    .line 66
    sget-object v7, Lcom/google/zxing/pdf417/detector/LinesSampler;->RATIOS_TABLE:[F

    aget-object v8, v5, v2

    aget v8, v8, v3

    aput v8, v7, v6

    .line 67
    add-int/lit8 v6, v6, 0x1

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 53
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0           #currentBit:I
    .end local v1           #currentSymbol:I
    .end local v3           #j:I
    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;I)V
    .locals 1
    .parameter "linesMatrix"
    .parameter "dimension"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 78
    div-int/lit8 v0, p2, 0x11

    iput v0, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    .line 79
    iput p2, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->dimension:I

    .line 80
    return-void
.end method

.method private static calculateClusterNumber(I)I
    .locals 5
    .parameter "codeword"

    .prologue
    .line 577
    if-nez p0, :cond_0

    .line 578
    const/4 v4, -0x1

    .line 600
    :goto_0
    return v4

    .line 580
    :cond_0
    const/4 v0, 0x0

    .line 581
    .local v0, barNumber:I
    const/4 v1, 0x1

    .line 582
    .local v1, blackBar:Z
    const/4 v2, 0x0

    .line 583
    .local v2, clusterNumber:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v4, 0x11

    if-ge v3, v4, :cond_5

    .line 584
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    and-int/2addr v4, p0

    if-lez v4, :cond_4

    .line 585
    if-nez v1, :cond_1

    .line 586
    const/4 v1, 0x1

    .line 587
    add-int/lit8 v0, v0, 0x1

    .line 589
    :cond_1
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_3

    .line 590
    add-int/lit8 v2, v2, 0x1

    .line 583
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 592
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 595
    :cond_4
    if-eqz v1, :cond_2

    .line 596
    const/4 v1, 0x0

    goto :goto_2

    .line 600
    :cond_5
    add-int/lit8 v4, v2, 0x9

    rem-int/lit8 v4, v4, 0x9

    goto :goto_0
.end method

.method private static codewordsToBitMatrix(Ljava/util/List;II)Lcom/google/zxing/common/BitMatrix;
    .locals 8
    .parameter
    .parameter "dimension"
    .parameter "yDimension"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;II)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, codewords:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, p1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 563
    .local v4, result:Lcom/google/zxing/common/BitMatrix;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 564
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 565
    mul-int/lit8 v3, v1, 0x11

    .line 566
    .local v3, moduleOffset:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_2
    const/16 v5, 0x11

    if-ge v2, v5, :cond_1

    .line 567
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    rsub-int/lit8 v7, v2, 0x11

    add-int/lit8 v7, v7, -0x1

    shl-int/2addr v6, v7

    and-int/2addr v5, v6

    if-lez v5, :cond_0

    .line 568
    add-int v5, v3, v2

    invoke-virtual {v4, v5, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 566
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 564
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 563
    .end local v2           #k:I
    .end local v3           #moduleOffset:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    .end local v1           #j:I
    :cond_3
    return-object v4
.end method

.method private decodeRowCount(Ljava/util/List;Ljava/util/List;)I
    .locals 25
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, detectedCodeWords:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local p2, insertLinesAt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 428
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 429
    .local v14, rowCountVotes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 430
    .local v3, ecLevelVotes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 431
    .local v16, rowNumberVotes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v8, -0x1

    .line 433
    .local v8, lastRowNumber:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    add-int/lit8 v22, v6, 0x2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_f

    .line 434
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->clear()V

    .line 435
    const/4 v4, -0x1

    .line 436
    .local v4, firstCodewordDecodedLeft:I
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-eqz v22, :cond_0

    .line 437
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getCodeword(J)I

    move-result v4

    .line 439
    :cond_0
    const/16 v17, -0x1

    .line 440
    .local v17, secondCodewordDecodedLeft:I
    add-int/lit8 v22, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-eqz v22, :cond_1

    .line 441
    add-int/lit8 v22, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getCodeword(J)I

    move-result v17

    .line 443
    :cond_1
    const/16 v19, -0x1

    .line 444
    .local v19, thirdCodewordDecodedLeft:I
    add-int/lit8 v22, v6, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-eqz v22, :cond_2

    .line 445
    add-int/lit8 v22, v6, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getCodeword(J)I

    move-result v19

    .line 448
    :cond_2
    const/4 v5, -0x1

    .line 449
    .local v5, firstCodewordDecodedRight:I
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-eqz v22, :cond_3

    .line 450
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getCodeword(J)I

    move-result v5

    .line 452
    :cond_3
    const/16 v18, -0x1

    .line 453
    .local v18, secondCodewordDecodedRight:I
    add-int/lit8 v22, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    add-int/lit8 v23, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-eqz v22, :cond_4

    .line 454
    add-int/lit8 v22, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    add-int/lit8 v23, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getCodeword(J)I

    move-result v18

    .line 456
    :cond_4
    const/16 v20, -0x1

    .line 457
    .local v20, thirdCodewordDecodedRight:I
    add-int/lit8 v22, v6, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    add-int/lit8 v23, v6, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-eqz v22, :cond_5

    .line 458
    add-int/lit8 v22, v6, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    add-int/lit8 v23, v6, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getCodeword(J)I

    move-result v20

    .line 461
    :cond_5
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v4, v0, :cond_6

    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 462
    rem-int/lit8 v22, v4, 0x1e

    mul-int/lit8 v22, v22, 0x3

    rem-int/lit8 v23, v17, 0x1e

    rem-int/lit8 v23, v23, 0x3

    add-int v10, v22, v23

    .line 463
    .local v10, leftRowCount:I
    rem-int/lit8 v22, v17, 0x1e

    div-int/lit8 v9, v22, 0x3

    .line 465
    .local v9, leftECLevel:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .end local v9           #leftECLevel:I
    .end local v10           #leftRowCount:I
    :cond_6
    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 470
    rem-int/lit8 v22, v18, 0x1e

    mul-int/lit8 v22, v22, 0x3

    rem-int/lit8 v23, v20, 0x1e

    rem-int/lit8 v23, v23, 0x3

    add-int v12, v22, v23

    .line 471
    .local v12, rightRowCount:I
    rem-int/lit8 v22, v20, 0x1e

    div-int/lit8 v11, v22, 0x3

    .line 473
    .local v11, rightECLevel:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .end local v11           #rightECLevel:I
    .end local v12           #rightRowCount:I
    :cond_7
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v4, v0, :cond_8

    .line 478
    div-int/lit8 v15, v4, 0x1e

    .line 479
    .local v15, rowNumber:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .end local v15           #rowNumber:I
    :cond_8
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 482
    div-int/lit8 v15, v17, 0x1e

    .line 483
    .restart local v15       #rowNumber:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .end local v15           #rowNumber:I
    :cond_9
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    .line 486
    div-int/lit8 v15, v19, 0x1e

    .line 487
    .restart local v15       #rowNumber:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .end local v15           #rowNumber:I
    :cond_a
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v5, v0, :cond_b

    .line 490
    div-int/lit8 v15, v5, 0x1e

    .line 491
    .restart local v15       #rowNumber:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .end local v15           #rowNumber:I
    :cond_b
    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 494
    div-int/lit8 v15, v18, 0x1e

    .line 495
    .restart local v15       #rowNumber:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .end local v15           #rowNumber:I
    :cond_c
    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 498
    div-int/lit8 v15, v20, 0x1e

    .line 499
    .restart local v15       #rowNumber:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .end local v15           #rowNumber:I
    :cond_d
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/pdf417/detector/LinesSampler;->getValueWithMaxVotes(Ljava/util/Map;)Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->getVote()I

    move-result v15

    .line 502
    .restart local v15       #rowNumber:I
    add-int/lit8 v22, v8, 0x1

    move/from16 v0, v22

    if-ge v0, v15, :cond_e

    .line 503
    add-int/lit8 v7, v8, 0x1

    .local v7, j:I
    :goto_1
    if-ge v7, v15, :cond_e

    .line 504
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 509
    .end local v7           #j:I
    :cond_e
    move v8, v15

    .line 433
    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_0

    .line 512
    .end local v4           #firstCodewordDecodedLeft:I
    .end local v5           #firstCodewordDecodedRight:I
    .end local v15           #rowNumber:I
    .end local v17           #secondCodewordDecodedLeft:I
    .end local v18           #secondCodewordDecodedRight:I
    .end local v19           #thirdCodewordDecodedLeft:I
    .end local v20           #thirdCodewordDecodedRight:I
    :cond_f
    const/4 v6, 0x0

    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_11

    .line 513
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v21, v:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_10

    .line 515
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 517
    :cond_10
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int v22, v22, v6

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 512
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 520
    .end local v7           #j:I
    .end local v21           #v:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_11
    invoke-static {v14}, Lcom/google/zxing/pdf417/detector/LinesSampler;->getValueWithMaxVotes(Ljava/util/Map;)Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->getVote()I

    move-result v13

    .line 523
    .local v13, rowCount:I
    add-int/lit8 v13, v13, 0x1

    .line 524
    return v13
.end method

.method private static defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, value:Ljava/lang/Object;,"TT;"
    .local p1, d:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    .end local p1           #d:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object p1

    .restart local p1       #d:Ljava/lang/Object;,"TT;"
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method private distributeVotes([[I[[I)Ljava/util/List;
    .locals 13
    .parameter "codewords"
    .parameter "clusterNumbers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[I[[I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v7, votes:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    iget v11, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    invoke-static {v10, v11}, Lcom/google/zxing/pdf417/detector/LinesSampler;->resize2(Ljava/util/List;I)V

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, currentRow:I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v0, clusterNumberVotes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    .line 302
    .local v3, lastLineClusterNumber:I
    const/4 v9, 0x0

    .local v9, y:I
    :goto_0
    array-length v10, p1

    if-ge v9, v10, :cond_e

    .line 304
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 305
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    aget-object v10, p1, v9

    array-length v10, v10

    if-ge v2, v10, :cond_1

    .line 306
    aget-object v10, p2, v9

    aget v10, v10, v2

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 307
    aget-object v10, p2, v9

    aget v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aget-object v10, p2, v9

    aget v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 313
    invoke-static {v0}, Lcom/google/zxing/pdf417/detector/LinesSampler;->getValueWithMaxVotes(Ljava/util/Map;)Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;

    move-result-object v6

    .line 314
    .local v6, voteResult:Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->isIndecisive()Z

    move-result v5

    .line 315
    .local v5, lineClusterNumberIsIndecisive:Z
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->getVote()I

    move-result v4

    .line 320
    .local v4, lineClusterNumber:I
    if-eqz v5, :cond_2

    .line 321
    move v4, v3

    .line 324
    :cond_2
    add-int/lit8 v10, v3, 0x3

    rem-int/lit8 v10, v10, 0x9

    if-eq v4, v10, :cond_3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_3

    .line 325
    move v4, v3

    .line 329
    :cond_3
    if-nez v4, :cond_4

    const/4 v10, -0x1

    if-eq v3, v10, :cond_5

    :cond_4
    const/4 v10, -0x1

    if-eq v3, v10, :cond_d

    .line 330
    :cond_5
    add-int/lit8 v10, v3, 0x3

    rem-int/lit8 v10, v10, 0x9

    if-ne v4, v10, :cond_6

    const/4 v10, -0x1

    if-eq v3, v10, :cond_6

    .line 331
    add-int/lit8 v1, v1, 0x1

    .line 332
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v11, v1, 0x1

    if-ge v10, v11, :cond_6

    .line 333
    add-int/lit8 v10, v1, 0x1

    invoke-static {v7, v10}, Lcom/google/zxing/pdf417/detector/LinesSampler;->resize1(Ljava/util/List;I)V

    .line 334
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    iget v11, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    invoke-static {v10, v11}, Lcom/google/zxing/pdf417/detector/LinesSampler;->resize2(Ljava/util/List;I)V

    .line 338
    :cond_6
    add-int/lit8 v10, v3, 0x6

    rem-int/lit8 v10, v10, 0x9

    if-ne v4, v10, :cond_7

    const/4 v10, -0x1

    if-eq v3, v10, :cond_7

    .line 339
    add-int/lit8 v1, v1, 0x2

    .line 340
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v11, v1, 0x1

    if-ge v10, v11, :cond_7

    .line 341
    add-int/lit8 v10, v1, 0x1

    invoke-static {v7, v10}, Lcom/google/zxing/pdf417/detector/LinesSampler;->resize1(Ljava/util/List;I)V

    .line 342
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    iget v11, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    invoke-static {v10, v11}, Lcom/google/zxing/pdf417/detector/LinesSampler;->resize2(Ljava/util/List;I)V

    .line 346
    :cond_7
    const/4 v2, 0x0

    :goto_2
    aget-object v10, p1, v9

    array-length v10, v10

    if-ge v2, v10, :cond_c

    .line 347
    aget-object v10, p2, v9

    aget v10, v10, v2

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    .line 348
    aget-object v10, p2, v9

    aget v10, v10, v2

    if-ne v10, v4, :cond_9

    .line 349
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 350
    .local v8, votesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    aget-object v10, p1, v9

    aget v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aget-object v10, p1, v9

    aget v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .end local v8           #votesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 351
    :cond_9
    aget-object v10, p2, v9

    aget v10, v10, v2

    add-int/lit8 v11, v4, 0x3

    rem-int/lit8 v11, v11, 0x9

    if-ne v10, v11, :cond_b

    .line 352
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v11, v1, 0x2

    if-ge v10, v11, :cond_a

    .line 353
    add-int/lit8 v10, v1, 0x2

    invoke-static {v7, v10}, Lcom/google/zxing/pdf417/detector/LinesSampler;->resize1(Ljava/util/List;I)V

    .line 354
    add-int/lit8 v10, v1, 0x1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    iget v11, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    invoke-static {v10, v11}, Lcom/google/zxing/pdf417/detector/LinesSampler;->resize2(Ljava/util/List;I)V

    .line 356
    :cond_a
    add-int/lit8 v10, v1, 0x1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 357
    .restart local v8       #votesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    aget-object v10, p1, v9

    aget v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aget-object v10, p1, v9

    aget v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 358
    .end local v8           #votesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_b
    aget-object v10, p2, v9

    aget v10, v10, v2

    add-int/lit8 v11, v4, 0x6

    rem-int/lit8 v11, v11, 0x9

    if-ne v10, v11, :cond_8

    if-lez v1, :cond_8

    .line 359
    add-int/lit8 v10, v1, -0x1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 360
    .restart local v8       #votesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    aget-object v10, p1, v9

    aget v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aget-object v10, p1, v9

    aget v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/google/zxing/pdf417/detector/LinesSampler;->defaultValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 364
    .end local v8           #votesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_c
    move v3, v4

    .line 302
    .end local v4           #lineClusterNumber:I
    .end local v5           #lineClusterNumberIsIndecisive:Z
    .end local v6           #voteResult:Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 369
    .end local v2           #i:I
    :cond_e
    return-object v7
.end method

.method private findMissingLines(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, detectedCodeWords:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 373
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v4, insertLinesAt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6

    .line 375
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_6

    .line 376
    const/4 v2, -0x1

    .line 377
    .local v2, clusterNumberRow:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    if-ne v2, v9, :cond_1

    .line 378
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/pdf417/detector/LinesSampler;->calculateClusterNumber(I)I

    move-result v0

    .line 379
    .local v0, clusterNumber:I
    if-eq v0, v9, :cond_0

    .line 380
    move v2, v0

    .line 377
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 383
    .end local v0           #clusterNumber:I
    :cond_1
    if-nez v3, :cond_2

    .line 385
    if-lez v2, :cond_2

    .line 386
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    const/4 v7, 0x3

    if-le v2, v7, :cond_2

    .line 388
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_2
    const/4 v1, -0x1

    .line 393
    .local v1, clusterNumberNextRow:I
    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v7, v3, 0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    if-ne v1, v9, :cond_4

    .line 394
    add-int/lit8 v7, v3, 0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/pdf417/detector/LinesSampler;->calculateClusterNumber(I)I

    move-result v0

    .line 395
    .restart local v0       #clusterNumber:I
    if-eq v0, v9, :cond_3

    .line 396
    move v1, v0

    .line 393
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 399
    .end local v0           #clusterNumber:I
    :cond_4
    add-int/lit8 v7, v2, 0x3

    rem-int/lit8 v7, v7, 0x9

    if-eq v7, v1, :cond_5

    if-eq v2, v9, :cond_5

    if-eq v1, v9, :cond_5

    .line 403
    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    if-ne v2, v1, :cond_5

    .line 406
    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 412
    .end local v1           #clusterNumberNextRow:I
    .end local v2           #clusterNumberRow:I
    .end local v3           #i:I
    .end local v5           #j:I
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 413
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v6, v:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_4
    iget v7, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    if-ge v5, v7, :cond_7

    .line 415
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 417
    :cond_7
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v3

    invoke-interface {p1, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 412
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 420
    .end local v5           #j:I
    .end local v6           #v:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8
    return-object v4
.end method

.method private findSymbolWidths()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget v8, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    if-lez v8, :cond_1

    .line 126
    iget-object v8, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    int-to-float v9, v9

    div-float v2, v8, v9

    .line 131
    .local v2, expectedSymbolWidth:F
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v5, symbolWidths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v4, 0x0

    .line 133
    .local v4, symbolStart:I
    const/4 v3, 0x1

    .line 134
    .local v3, lastWasSymbolStart:Z
    iget-object v8, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    new-array v0, v8, [I

    .line 135
    .local v0, blackCount:[I
    const/4 v6, 0x2

    .local v6, x:I
    :goto_1
    iget-object v8, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 136
    const/4 v7, 0x0

    .local v7, y:I
    :goto_2
    iget-object v8, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 137
    iget-object v8, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 138
    aget v8, v0, v6

    add-int/lit8 v8, v8, 0x1

    aput v8, v0, v6

    .line 136
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 128
    .end local v0           #blackCount:[I
    .end local v2           #expectedSymbolWidth:F
    .end local v3           #lastWasSymbolStart:Z
    .end local v4           #symbolStart:I
    .end local v5           #symbolWidths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_1
    iget-object v8, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    int-to-float v2, v8

    .restart local v2       #expectedSymbolWidth:F
    goto :goto_0

    .line 141
    .restart local v0       #blackCount:[I
    .restart local v3       #lastWasSymbolStart:Z
    .restart local v4       #symbolStart:I
    .restart local v5       #symbolWidths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v6       #x:I
    .restart local v7       #y:I
    :cond_2
    aget v8, v0, v6

    iget-object v9, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 142
    if-nez v3, :cond_4

    .line 143
    sub-int v8, v6, v4

    int-to-float v1, v8

    .line 148
    .local v1, currentWidth:F
    float-to-double v8, v1

    const-wide/high16 v10, 0x3fe8

    float-to-double v12, v2

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    .line 153
    :goto_3
    float-to-double v8, v1

    const-wide/high16 v10, 0x3ff8

    float-to-double v12, v2

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    .line 154
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sub-float/2addr v1, v2

    goto :goto_3

    .line 157
    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const/4 v3, 0x1

    .line 159
    move v4, v6

    .line 135
    .end local v1           #currentWidth:F
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 163
    :cond_5
    if-eqz v3, :cond_4

    .line 164
    const/4 v3, 0x0

    goto :goto_4

    .line 170
    .end local v7           #y:I
    :cond_6
    iget-object v8, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    sub-int/2addr v8, v4

    int-to-float v1, v8

    .line 171
    .restart local v1       #currentWidth:F
    :goto_5
    float-to-double v8, v1

    const-wide/high16 v10, 0x3ff8

    float-to-double v12, v2

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_7

    .line 172
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    sub-float/2addr v1, v2

    goto :goto_5

    .line 175
    :cond_7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-object v5
.end method

.method private static getValueWithMaxVotes(Ljava/util/Map;)Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;"
        }
    .end annotation

    .prologue
    .line 547
    .local p0, votes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v3, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;-><init>(Lcom/google/zxing/pdf417/detector/LinesSampler$1;)V

    .line 548
    .local v3, result:Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;
    const/4 v2, 0x0

    .line 549
    .local v2, maxVotes:I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 550
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_1

    .line 551
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 552
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->setVote(I)V

    .line 553
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->setIndecisive(Z)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 555
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->setIndecisive(Z)V

    goto :goto_0

    .line 558
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    return-object v3
.end method

.method private linesMatrixToCodewords([[I[[ILjava/util/List;)V
    .locals 27
    .parameter "codewords"
    .parameter "clusterNumbers"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[I[[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 184
    .local p3, symbolWidths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    move/from16 v23, v0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    .line 185
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v23

    throw v23

    .line 188
    :cond_0
    const/16 v22, 0x0

    .local v22, y:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_13

    .line 189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    aput-object v23, p1, v22

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    aput-object v23, p2, v22

    .line 191
    aget-object v23, p2, v22

    const/16 v24, 0x0

    aget-object v25, p2, v22

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Ljava/util/Arrays;->fill([IIII)V

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, barWidths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const/16 v17, 0x1

    .line 199
    .local v17, isSetBar:Z
    const/16 v21, 0x2

    .local v21, x:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 201
    if-nez v17, :cond_1

    .line 202
    const/16 v17, 0x1

    .line 203
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v20, v23, -0x1

    .line 213
    .local v20, lastIndex:I
    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 206
    .end local v20           #lastIndex:I
    :cond_2
    if-eqz v17, :cond_1

    .line 207
    const/16 v17, 0x0

    .line 208
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 220
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v11, v0, [I

    .line 221
    .local v11, cwStarts:[I
    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v11, v23

    .line 222
    const/4 v6, 0x1

    .line 223
    .local v6, cwCount:I
    const/4 v12, 0x0

    .line 224
    .local v12, cwWidth:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_7

    .line 225
    move/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    add-int v12, v12, v23

    .line 226
    int-to-float v0, v12

    move/from16 v24, v0

    add-int/lit8 v23, v6, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    cmpl-float v23, v24, v23

    if-lez v23, :cond_6

    .line 227
    rem-int/lit8 v23, v16, 0x2

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 228
    add-int/lit8 v16, v16, 0x1

    .line 230
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 231
    move/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 233
    :cond_5
    aput v16, v11, v6

    .line 234
    add-int/lit8 v6, v6, 0x1

    .line 224
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 238
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    move/from16 v23, v0

    const/16 v24, 0x8

    filled-new-array/range {v23 .. v24}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[F

    .line 240
    .local v9, cwRatios:[[F
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_12

    .line 241
    aget v10, v11, v16

    .line 242
    .local v10, cwStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/pdf417/detector/LinesSampler;->symbolsPerLine:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 243
    .local v7, cwEnd:I
    :goto_5
    sub-int v8, v7, v10

    .line 245
    .local v8, cwLength:I
    const/16 v23, 0x7

    move/from16 v0, v23

    if-lt v8, v0, :cond_8

    const/16 v23, 0x9

    move/from16 v0, v23

    if-le v8, v0, :cond_a

    .line 240
    :cond_8
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 242
    .end local v7           #cwEnd:I
    .end local v8           #cwLength:I
    :cond_9
    add-int/lit8 v23, v16, 0x1

    aget v7, v11, v23

    goto :goto_5

    .line 251
    .restart local v7       #cwEnd:I
    .restart local v8       #cwLength:I
    :cond_a
    const/4 v13, 0x0

    .line 252
    .local v13, cwWidthF:F
    const/16 v18, 0x0

    .local v18, j:I
    :goto_7
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 253
    add-int v23, v10, v18

    move/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v13, v13, v23

    .line 252
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 258
    :cond_b
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ne v8, v0, :cond_e

    .line 259
    const/16 v18, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v0, v8, :cond_c

    .line 260
    aget-object v24, v9, v16

    add-int v23, v10, v18

    move/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    div-float v23, v25, v23

    aput v23, v24, v18

    .line 259
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 262
    :cond_c
    aget-object v24, v9, v16

    const/16 v25, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    sub-float v26, v23, v13

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    div-float v23, v26, v23

    aput v23, v24, v25

    .line 269
    :cond_d
    const v5, 0x7f7fffff

    .line 270
    .local v5, bestMatchError:F
    const/4 v4, 0x0

    .line 275
    .local v4, bestMatch:I
    const/16 v18, 0x0

    :goto_9
    sget-object v23, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->SYMBOL_TABLE:[I

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    .line 276
    const/4 v15, 0x0

    .line 277
    .local v15, error:F
    const/16 v19, 0x0

    .local v19, k:I
    :goto_a
    const/16 v23, 0x8

    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_f

    .line 278
    sget-object v23, Lcom/google/zxing/pdf417/detector/LinesSampler;->RATIOS_TABLE:[F

    mul-int/lit8 v24, v18, 0x8

    add-int v24, v24, v19

    aget v23, v23, v24

    aget-object v24, v9, v16

    aget v24, v24, v19

    sub-float v14, v23, v24

    .line 279
    .local v14, diff:F
    mul-float v23, v14, v14

    add-float v15, v15, v23

    .line 277
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 264
    .end local v4           #bestMatch:I
    .end local v5           #bestMatchError:F
    .end local v14           #diff:F
    .end local v15           #error:F
    .end local v19           #k:I
    :cond_e
    const/16 v18, 0x0

    :goto_b
    aget-object v23, v9, v16

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 265
    aget-object v24, v9, v16

    add-int v23, v10, v18

    move/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v13

    aput v23, v24, v18

    .line 264
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 281
    .restart local v4       #bestMatch:I
    .restart local v5       #bestMatchError:F
    .restart local v15       #error:F
    .restart local v19       #k:I
    :cond_f
    cmpg-float v23, v15, v5

    if-gez v23, :cond_10

    .line 282
    move v5, v15

    .line 283
    sget-object v23, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->SYMBOL_TABLE:[I

    aget v4, v23, v18

    .line 275
    :cond_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 286
    .end local v15           #error:F
    .end local v19           #k:I
    :cond_11
    aget-object v23, p1, v22

    aput v4, v23, v16

    .line 287
    aget-object v23, p2, v22

    invoke-static {v4}, Lcom/google/zxing/pdf417/detector/LinesSampler;->calculateClusterNumber(I)I

    move-result v24

    aput v24, v23, v16

    goto/16 :goto_6

    .line 188
    .end local v4           #bestMatch:I
    .end local v5           #bestMatchError:F
    .end local v7           #cwEnd:I
    .end local v8           #cwLength:I
    .end local v10           #cwStart:I
    .end local v13           #cwWidthF:F
    .end local v18           #j:I
    :cond_12
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 290
    .end local v3           #barWidths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6           #cwCount:I
    .end local v9           #cwRatios:[[F
    .end local v11           #cwStarts:[I
    .end local v12           #cwWidth:I
    .end local v16           #i:I
    .end local v17           #isSetBar:Z
    .end local v21           #x:I
    :cond_13
    return-void
.end method

.method private static resize1(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;>;"
    move v0, p1

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 606
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 610
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 612
    :cond_1
    return-void
.end method

.method private static resize2(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    move v0, p1

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 617
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 621
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 623
    :cond_1
    return-void
.end method

.method private static resize3(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    move v0, p1

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 628
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 632
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 634
    :cond_1
    return-void
.end method

.method private static resize4(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move v0, p1

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 639
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 643
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 645
    :cond_1
    return-void
.end method


# virtual methods
.method public sample()Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/zxing/pdf417/detector/LinesSampler;->findSymbolWidths()Ljava/util/List;

    move-result-object v7

    .line 90
    .local v7, symbolWidths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    iget-object v9, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    new-array v1, v9, [[I

    .line 91
    .local v1, codewords:[[I
    iget-object v9, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    new-array v0, v9, [[I

    .line 92
    .local v0, clusterNumbers:[[I
    invoke-direct {p0, v1, v0, v7}, Lcom/google/zxing/pdf417/detector/LinesSampler;->linesMatrixToCodewords([[I[[ILjava/util/List;)V

    .line 94
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/pdf417/detector/LinesSampler;->distributeVotes([[I[[I)Ljava/util/List;

    move-result-object v8

    .line 96
    .local v8, votes:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, detectedCodeWords:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v2, v9}, Lcom/google/zxing/pdf417/detector/LinesSampler;->resize3(Ljava/util/List;I)V

    .line 98
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 99
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/zxing/pdf417/detector/LinesSampler;->resize4(Ljava/util/List;I)V

    .line 100
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 101
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 102
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-static {v10}, Lcom/google/zxing/pdf417/detector/LinesSampler;->getValueWithMaxVotes(Ljava/util/Map;)Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->getVote()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v5, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 98
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v5           #j:I
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/zxing/pdf417/detector/LinesSampler;->findMissingLines(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 109
    .local v4, insertLinesAt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v2, v4}, Lcom/google/zxing/pdf417/detector/LinesSampler;->decodeRowCount(Ljava/util/List;Ljava/util/List;)I

    move-result v6

    .line 110
    .local v6, rowCount:I
    invoke-static {v2, v6}, Lcom/google/zxing/pdf417/detector/LinesSampler;->resize3(Ljava/util/List;I)V

    .line 112
    iget v9, p0, Lcom/google/zxing/pdf417/detector/LinesSampler;->dimension:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v2, v9, v10}, Lcom/google/zxing/pdf417/detector/LinesSampler;->codewordsToBitMatrix(Ljava/util/List;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    return-object v9
.end method
