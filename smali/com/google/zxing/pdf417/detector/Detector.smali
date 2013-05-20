.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final INTEGER_MATH_SHIFT:I = 0x8

.field private static final MAX_AVG_VARIANCE:I = 0x6b

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xcc

.field private static final PATTERN_MATCH_RESULT_SCALE_FACTOR:I = 0x100

.field private static final START_PATTERN:[I

.field private static final START_PATTERN_REVERSE:[I

.field private static final STOP_PATTERN:[I

.field private static final STOP_PATTERN_REVERSE:[I


# instance fields
.field private final image:Lcom/google/zxing/BinaryBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/16 v1, 0x8

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    .line 56
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    .line 60
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    return-void

    .line 50
    nop

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 56
    :array_2
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 60
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/BinaryBitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    .line 66
    return-void
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 3
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "bottomLeft"
    .parameter "bottomRight"
    .parameter "moduleWidth"

    .prologue
    .line 600
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, p4

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 601
    .local v1, topRowDimension:I
    invoke-static {p2, p3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, p4

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 602
    .local v0, bottomRowDimension:I
    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x8

    div-int/lit8 v2, v2, 0x11

    mul-int/lit8 v2, v2, 0x11

    return v2
.end method

.method private static computeModuleWidth([Lcom/google/zxing/ResultPoint;)F
    .locals 8
    .parameter "vertices"

    .prologue
    .line 575
    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x4

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 576
    .local v2, pixels1:F
    const/4 v6, 0x1

    aget-object v6, p0, v6

    const/4 v7, 0x5

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    .line 577
    .local v3, pixels2:F
    add-float v6, v2, v3

    const/high16 v7, 0x4208

    div-float v0, v6, v7

    .line 578
    .local v0, moduleWidth1:F
    const/4 v6, 0x6

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    .line 579
    .local v4, pixels3:F
    const/4 v6, 0x7

    aget-object v6, p0, v6

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    .line 580
    .local v5, pixels4:F
    add-float v6, v4, v5

    const/high16 v7, 0x4210

    div-float v1, v6, v7

    .line 581
    .local v1, moduleWidth2:F
    add-float v6, v0, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    return v6
.end method

.method private static computeYDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 3
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "bottomLeft"
    .parameter "bottomRight"
    .parameter "moduleWidth"

    .prologue
    .line 621
    invoke-static {p0, p2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, p4

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 622
    .local v0, leftColumnDimension:I
    invoke-static {p1, p3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, p4

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 623
    .local v1, rightColumnDimension:I
    add-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private static correctVertices(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;Z)V
    .locals 9
    .parameter "matrix"
    .parameter "vertices"
    .parameter "upsideDown"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4034

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v7, 0x1

    .line 411
    .local v7, isLowLeft:Z
    :goto_0
    const/4 v0, 0x6

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    const/4 v1, 0x7

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4034

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const/4 v8, 0x1

    .line 412
    .local v8, isLowRight:Z
    :goto_1
    if-nez v7, :cond_0

    if-eqz v8, :cond_3

    .line 413
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 410
    .end local v7           #isLowLeft:Z
    .end local v8           #isLowRight:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 411
    .restart local v7       #isLowLeft:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 415
    .restart local v8       #isLowRight:Z
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x11

    if-eqz p2, :cond_4

    const/4 v6, 0x1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findWideBarTopBottom(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;IIIII)V

    .line 416
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x11

    if-eqz p2, :cond_5

    const/4 v6, -0x1

    :goto_3
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findWideBarTopBottom(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;IIIII)V

    .line 417
    const/4 v2, 0x2

    const/16 v3, 0xb

    const/4 v4, 0x7

    const/16 v5, 0x12

    if-eqz p2, :cond_6

    const/4 v6, 0x1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findWideBarTopBottom(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;IIIII)V

    .line 418
    const/4 v2, 0x3

    const/16 v3, 0xb

    const/4 v4, 0x7

    const/16 v5, 0x12

    if-eqz p2, :cond_7

    const/4 v6, -0x1

    :goto_5
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findWideBarTopBottom(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;IIIII)V

    .line 419
    const/16 v1, 0xc

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/16 v5, 0xa

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findCrossingPoint([Lcom/google/zxing/ResultPoint;IIIIILcom/google/zxing/common/BitMatrix;)V

    .line 420
    const/16 v1, 0xd

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/16 v4, 0x9

    const/16 v5, 0xb

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findCrossingPoint([Lcom/google/zxing/ResultPoint;IIIIILcom/google/zxing/common/BitMatrix;)V

    .line 421
    const/16 v1, 0xe

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/16 v5, 0xa

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findCrossingPoint([Lcom/google/zxing/ResultPoint;IIIIILcom/google/zxing/common/BitMatrix;)V

    .line 422
    const/16 v1, 0xf

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/16 v4, 0x9

    const/16 v5, 0xb

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findCrossingPoint([Lcom/google/zxing/ResultPoint;IIIIILcom/google/zxing/common/BitMatrix;)V

    .line 424
    return-void

    .line 415
    :cond_4
    const/4 v6, -0x1

    goto :goto_2

    .line 416
    :cond_5
    const/4 v6, 0x1

    goto :goto_3

    .line 417
    :cond_6
    const/4 v6, -0x1

    goto :goto_4

    .line 418
    :cond_7
    const/4 v6, 0x1

    goto :goto_5
.end method

.method private static findCrossingPoint([Lcom/google/zxing/ResultPoint;IIIIILcom/google/zxing/common/BitMatrix;)V
    .locals 7
    .parameter "vertices"
    .parameter "idxResult"
    .parameter "idxLineA1"
    .parameter "idxLineA2"
    .parameter "idxLineB1"
    .parameter "idxLineB2"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 521
    aget-object v3, p0, p2

    aget-object v4, p0, p3

    aget-object v5, p0, p4

    aget-object v6, p0, p5

    invoke-static {v3, v4, v5, v6}, Lcom/google/zxing/pdf417/detector/Detector;->intersection(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 523
    .local v0, result:Lcom/google/zxing/ResultPoint;
    if-nez v0, :cond_0

    .line 524
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 527
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 528
    .local v1, x:I
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 529
    .local v2, y:I
    if-ltz v1, :cond_1

    invoke-virtual {p6}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    invoke-virtual {p6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 530
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 533
    :cond_2
    aput-object v0, p0, p1

    .line 534
    return-void
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
    .locals 9
    .parameter "matrix"
    .parameter "column"
    .parameter "row"
    .parameter "width"
    .parameter "whiteFirst"
    .parameter "pattern"
    .parameter "counters"

    .prologue
    .line 312
    const/4 v6, 0x0

    array-length v7, p6

    const/4 v8, 0x0

    invoke-static {p6, v6, v7, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 313
    array-length v2, p5

    .line 314
    .local v2, patternLength:I
    move v1, p4

    .line 316
    .local v1, isWhite:Z
    const/4 v0, 0x0

    .line 317
    .local v0, counterPosition:I
    move v3, p1

    .line 318
    .local v3, patternStart:I
    move v5, p1

    .local v5, x:I
    :goto_0
    add-int v6, p1, p3

    if-ge v5, v6, :cond_4

    .line 319
    invoke-virtual {p0, v5, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    .line 320
    .local v4, pixel:Z
    xor-int v6, v4, v1

    if-eqz v6, :cond_0

    .line 321
    aget v6, p6, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, p6, v0

    .line 318
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 323
    :cond_0
    add-int/lit8 v6, v2, -0x1

    if-ne v0, v6, :cond_2

    .line 324
    const/16 v6, 0xcc

    invoke-static {p6, p5, v6}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[II)I

    move-result v6

    const/16 v7, 0x6b

    if-ge v6, v7, :cond_1

    .line 325
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v5, v6, v7

    .line 339
    .end local v4           #pixel:Z
    :goto_2
    return-object v6

    .line 327
    .restart local v4       #pixel:Z
    :cond_1
    const/4 v6, 0x0

    aget v6, p6, v6

    const/4 v7, 0x1

    aget v7, p6, v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 328
    const/4 v6, 0x2

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x2

    invoke-static {p6, v6, p6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    add-int/lit8 v6, v2, -0x2

    const/4 v7, 0x0

    aput v7, p6, v6

    .line 330
    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    aput v7, p6, v6

    .line 331
    add-int/lit8 v0, v0, -0x1

    .line 335
    :goto_3
    const/4 v6, 0x1

    aput v6, p6, v0

    .line 336
    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_4
    goto :goto_1

    .line 333
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 336
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 339
    .end local v4           #pixel:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;I)[Lcom/google/zxing/ResultPoint;
    .locals 13
    .parameter "matrix"
    .parameter "rowStep"

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    .line 147
    .local v8, height:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 149
    .local v3, width:I
    const/16 v0, 0x10

    new-array v10, v0, [Lcom/google/zxing/ResultPoint;

    .line 150
    .local v10, result:[Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x0

    .line 152
    .local v7, found:Z
    sget-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    array-length v0, v0

    new-array v6, v0, [I

    .line 155
    .local v6, counters:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 156
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    .line 157
    .local v9, loc:[I
    if-eqz v9, :cond_4

    .line 158
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v4, v9, v1

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v0, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v10, v1

    .line 159
    const/4 v0, 0x4

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v9, v12

    int-to-float v5, v5

    int-to-float v11, v2

    invoke-direct {v4, v5, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v10, v0

    .line 160
    const/4 v7, 0x1

    .line 165
    .end local v9           #loc:[I
    :cond_0
    if-eqz v7, :cond_1

    .line 166
    const/4 v7, 0x0

    .line 167
    add-int/lit8 v2, v8, -0x1

    :goto_1
    if-lez v2, :cond_1

    .line 168
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    .line 169
    .restart local v9       #loc:[I
    if-eqz v9, :cond_5

    .line 170
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v4, v9, v1

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v0, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v10, v12

    .line 171
    const/4 v0, 0x5

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v9, v12

    int-to-float v5, v5

    int-to-float v11, v2

    invoke-direct {v4, v5, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v10, v0

    .line 172
    const/4 v7, 0x1

    .line 178
    .end local v9           #loc:[I
    :cond_1
    sget-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    array-length v0, v0

    new-array v6, v0, [I

    .line 181
    if-eqz v7, :cond_2

    .line 182
    const/4 v7, 0x0

    .line 183
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_2

    .line 184
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    .line 185
    .restart local v9       #loc:[I
    if-eqz v9, :cond_6

    .line 186
    const/4 v0, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v9, v12

    int-to-float v5, v5

    int-to-float v11, v2

    invoke-direct {v4, v5, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v10, v0

    .line 187
    const/4 v0, 0x6

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v9, v1

    int-to-float v5, v5

    int-to-float v11, v2

    invoke-direct {v4, v5, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v10, v0

    .line 188
    const/4 v7, 0x1

    .line 194
    .end local v9           #loc:[I
    :cond_2
    if-eqz v7, :cond_3

    .line 195
    const/4 v7, 0x0

    .line 196
    add-int/lit8 v2, v8, -0x1

    :goto_3
    if-lez v2, :cond_3

    .line 197
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    .line 198
    .restart local v9       #loc:[I
    if-eqz v9, :cond_7

    .line 199
    const/4 v0, 0x3

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v9, v12

    int-to-float v5, v5

    int-to-float v11, v2

    invoke-direct {v4, v5, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v10, v0

    .line 200
    const/4 v0, 0x7

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v1, v9, v1

    int-to-float v1, v1

    int-to-float v5, v2

    invoke-direct {v4, v1, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v10, v0

    .line 201
    const/4 v7, 0x1

    .line 206
    .end local v9           #loc:[I
    :cond_3
    if-eqz v7, :cond_8

    .end local v10           #result:[Lcom/google/zxing/ResultPoint;
    :goto_4
    return-object v10

    .line 155
    .restart local v9       #loc:[I
    .restart local v10       #result:[Lcom/google/zxing/ResultPoint;
    :cond_4
    add-int/2addr v2, p1

    goto/16 :goto_0

    .line 167
    :cond_5
    sub-int/2addr v2, p1

    goto/16 :goto_1

    .line 183
    :cond_6
    add-int/2addr v2, p1

    goto :goto_2

    .line 196
    :cond_7
    sub-int/2addr v2, p1

    goto :goto_3

    .line 206
    .end local v9           #loc:[I
    :cond_8
    const/4 v10, 0x0

    goto :goto_4
.end method

.method private static findVertices180(Lcom/google/zxing/common/BitMatrix;I)[Lcom/google/zxing/ResultPoint;
    .locals 20
    .parameter "matrix"
    .parameter "rowStep"

    .prologue
    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v16

    .line 232
    .local v16, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v19

    .line 233
    .local v19, width:I
    shr-int/lit8 v2, v19, 0x1

    .line 235
    .local v2, halfWidth:I
    const/16 v1, 0x10

    new-array v0, v1, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v0

    .line 236
    .local v18, result:[Lcom/google/zxing/ResultPoint;
    const/4 v15, 0x0

    .line 238
    .local v15, found:Z
    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    array-length v1, v1

    new-array v7, v1, [I

    .line 241
    .local v7, counters:[I
    add-int/lit8 v3, v16, -0x1

    .local v3, i:I
    :goto_0
    if-lez v3, :cond_0

    .line 242
    const/4 v5, 0x1

    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object/from16 v1, p0

    move v4, v2

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v17

    .line 243
    .local v17, loc:[I
    if-eqz v17, :cond_4

    .line 244
    const/4 v1, 0x0

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x1

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 245
    const/4 v1, 0x4

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x0

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 246
    const/4 v15, 0x1

    .line 251
    .end local v17           #loc:[I
    :cond_0
    if-eqz v15, :cond_1

    .line 252
    const/4 v15, 0x0

    .line 253
    const/4 v3, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v3, v0, :cond_1

    .line 254
    const/4 v5, 0x1

    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object/from16 v1, p0

    move v4, v2

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v17

    .line 255
    .restart local v17       #loc:[I
    if-eqz v17, :cond_5

    .line 256
    const/4 v1, 0x1

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x1

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 257
    const/4 v1, 0x5

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x0

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 258
    const/4 v15, 0x1

    .line 264
    .end local v17           #loc:[I
    :cond_1
    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    array-length v1, v1

    new-array v7, v1, [I

    .line 267
    if-eqz v15, :cond_2

    .line 268
    const/4 v15, 0x0

    .line 269
    add-int/lit8 v3, v16, -0x1

    :goto_2
    if-lez v3, :cond_2

    .line 270
    const/4 v9, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object/from16 v8, p0

    move v10, v3

    move v11, v2

    move-object v14, v7

    invoke-static/range {v8 .. v14}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v17

    .line 271
    .restart local v17       #loc:[I
    if-eqz v17, :cond_6

    .line 272
    const/4 v1, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x0

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 273
    const/4 v1, 0x6

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x1

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 274
    const/4 v15, 0x1

    .line 280
    .end local v17           #loc:[I
    :cond_2
    if-eqz v15, :cond_3

    .line 281
    const/4 v15, 0x0

    .line 282
    const/4 v3, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v3, v0, :cond_3

    .line 283
    const/4 v9, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object/from16 v8, p0

    move v10, v3

    move v11, v2

    move-object v14, v7

    invoke-static/range {v8 .. v14}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v17

    .line 284
    .restart local v17       #loc:[I
    if-eqz v17, :cond_7

    .line 285
    const/4 v1, 0x3

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x0

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 286
    const/4 v1, 0x7

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x1

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 287
    const/4 v15, 0x1

    .line 292
    .end local v17           #loc:[I
    :cond_3
    if-eqz v15, :cond_8

    .end local v18           #result:[Lcom/google/zxing/ResultPoint;
    :goto_4
    return-object v18

    .line 241
    .restart local v17       #loc:[I
    .restart local v18       #result:[Lcom/google/zxing/ResultPoint;
    :cond_4
    sub-int v3, v3, p1

    goto/16 :goto_0

    .line 253
    :cond_5
    add-int v3, v3, p1

    goto/16 :goto_1

    .line 269
    :cond_6
    sub-int v3, v3, p1

    goto :goto_2

    .line 282
    :cond_7
    add-int v3, v3, p1

    goto :goto_3

    .line 292
    .end local v17           #loc:[I
    :cond_8
    const/16 v18, 0x0

    goto :goto_4
.end method

.method private static findWideBarTopBottom(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;IIIII)V
    .locals 16
    .parameter "matrix"
    .parameter "vertices"
    .parameter "offsetVertex"
    .parameter "startWideBar"
    .parameter "lenWideBar"
    .parameter "lenPattern"
    .parameter "rowStep"

    .prologue
    .line 449
    aget-object v8, p1, p2

    .line 450
    .local v8, verticeStart:Lcom/google/zxing/ResultPoint;
    add-int/lit8 v12, p2, 0x4

    aget-object v7, p1, v12

    .line 453
    .local v7, verticeEnd:Lcom/google/zxing/ResultPoint;
    add-int v4, p3, p4

    .line 454
    .local v4, endWideBar:I
    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    sub-float v1, v12, v13

    .line 455
    .local v1, barDiff:F
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    move/from16 v0, p3

    int-to-float v13, v0

    mul-float/2addr v13, v1

    move/from16 v0, p5

    int-to-float v14, v0

    div-float/2addr v13, v14

    add-float v3, v12, v13

    .line 456
    .local v3, barStart:F
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    int-to-float v13, v4

    mul-float/2addr v13, v1

    move/from16 v0, p5

    int-to-float v14, v0

    div-float/2addr v13, v14

    add-float v2, v12, v13

    .line 457
    .local v2, barEnd:F
    add-float v12, v3, v2

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 460
    .local v9, x:I
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 461
    .local v11, yStart:I
    move v10, v11

    .line 464
    .local v10, y:I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v12

    float-to-int v12, v12

    add-int/lit8 v6, v12, 0x1

    .line 465
    .local v6, nextBarX:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    if-ge v6, v12, :cond_0

    .line 466
    add-int/lit8 v12, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 471
    :cond_0
    sub-int/2addr v6, v9

    .line 473
    const/4 v5, 0x0

    .line 474
    .local v5, isEnd:Z
    :cond_1
    :goto_1
    if-nez v5, :cond_8

    .line 475
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 477
    add-int v12, v9, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-nez v12, :cond_4

    add-int v12, v9, v6

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v5, 0x1

    .line 478
    :goto_2
    add-int v10, v10, p6

    .line 479
    if-lez v10, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-lt v10, v12, :cond_1

    .line 481
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 469
    .end local v5           #isEnd:Z
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 477
    .restart local v5       #isEnd:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 485
    :cond_5
    if-lez v9, :cond_6

    add-int/lit8 v12, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 486
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 487
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v9, v12, :cond_7

    add-int/lit8 v12, v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 488
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 491
    :cond_7
    const/4 v5, 0x1

    .line 492
    if-eq v10, v11, :cond_1

    .line 494
    sub-int v10, v10, p6

    goto :goto_1

    .line 500
    :cond_8
    add-int/lit8 v12, p2, 0x8

    new-instance v13, Lcom/google/zxing/ResultPoint;

    int-to-float v14, v9

    int-to-float v15, v10

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v13, p1, v12

    .line 501
    return-void
.end method

.method private static intersection(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/ResultPoint;
    .locals 12
    .parameter "a1"
    .parameter "a2"
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float v1, v9, v10

    .line 541
    .local v1, dxa:F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float v2, v9, v10

    .line 542
    .local v2, dxb:F
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float v3, v9, v10

    .line 543
    .local v3, dya:F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float v4, v9, v10

    .line 545
    .local v4, dyb:F
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    mul-float/2addr v10, v11

    sub-float v5, v9, v10

    .line 546
    .local v5, p:F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    mul-float/2addr v10, v11

    sub-float v6, v9, v10

    .line 547
    .local v6, q:F
    mul-float v9, v1, v4

    mul-float v10, v3, v2

    sub-float v0, v9, v10

    .line 548
    .local v0, denom:F
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-nez v9, :cond_0

    .line 550
    const/4 v9, 0x0

    .line 556
    :goto_0
    return-object v9

    .line 553
    :cond_0
    mul-float v9, v5, v2

    mul-float v10, v1, v6

    sub-float/2addr v9, v10

    div-float v7, v9, v0

    .line 554
    .local v7, x:F
    mul-float v9, v5, v4

    mul-float v10, v3, v6

    sub-float/2addr v9, v10

    div-float v8, v9, v0

    .line 556
    .local v8, y:F
    new-instance v9, Lcom/google/zxing/ResultPoint;

    invoke-direct {v9, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    goto :goto_0
.end method

.method private static patternMatchVariance([I[II)I
    .locals 12
    .parameter "counters"
    .parameter "pattern"
    .parameter "maxIndividualVariance"

    .prologue
    const v10, 0x7fffffff

    .line 358
    array-length v2, p0

    .line 359
    .local v2, numCounters:I
    const/4 v5, 0x0

    .line 360
    .local v5, total:I
    const/4 v3, 0x0

    .line 361
    .local v3, patternLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 362
    aget v11, p0, v1

    add-int/2addr v5, v11

    .line 363
    aget v11, p1, v1

    add-int/2addr v3, v11

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    if-ge v5, v3, :cond_2

    .line 386
    :cond_1
    :goto_1
    return v10

    .line 373
    :cond_2
    shl-int/lit8 v11, v5, 0x8

    div-int v7, v11, v3

    .line 374
    .local v7, unitBarWidth:I
    mul-int v11, p2, v7

    shr-int/lit8 p2, v11, 0x8

    .line 376
    const/4 v6, 0x0

    .line 377
    .local v6, totalVariance:I
    const/4 v9, 0x0

    .local v9, x:I
    :goto_2
    if-ge v9, v2, :cond_4

    .line 378
    aget v11, p0, v9

    shl-int/lit8 v0, v11, 0x8

    .line 379
    .local v0, counter:I
    aget v11, p1, v9

    mul-int v4, v11, v7

    .line 380
    .local v4, scaledPattern:I
    if-le v0, v4, :cond_3

    sub-int v8, v0, v4

    .line 381
    .local v8, variance:I
    :goto_3
    if-gt v8, p2, :cond_1

    .line 384
    add-int/2addr v6, v8

    .line 377
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 380
    .end local v8           #variance:I
    :cond_3
    sub-int v8, v4, v0

    goto :goto_3

    .line 386
    .end local v0           #counter:I
    .end local v4           #scaledPattern:I
    :cond_4
    div-int v10, v6, v5

    goto :goto_1
.end method

.method private sampleLines([Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .locals 22
    .parameter "vertices"
    .parameter "dimension"
    .parameter "yDimension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 635
    mul-int/lit8 v19, p2, 0x8

    .line 636
    .local v19, sampleDimensionX:I
    mul-int/lit8 v20, p3, 0x4

    .line 638
    .local v20, sampleDimensionY:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v19

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v20

    int-to-float v8, v0

    move/from16 v0, v19

    int-to-float v9, v0

    move/from16 v0, v20

    int-to-float v10, v0

    const/16 v11, 0xc

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    const/16 v12, 0xc

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    const/16 v13, 0xe

    aget-object v13, p1, v13

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    const/16 v14, 0xe

    aget-object v14, p1, v14

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    const/16 v15, 0xd

    aget-object v15, p1, v15

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    const/16 v16, 0xd

    aget-object v16, p1, v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    const/16 v17, 0xf

    aget-object v17, p1, v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    const/16 v18, 0xf

    aget-object v18, p1, v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    invoke-static/range {v3 .. v18}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v21

    .line 648
    .local v21, transform:Lcom/google/zxing/common/PerspectiveTransform;
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    invoke-virtual {v4}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    .local p1, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    iget-object v8, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    invoke-virtual {v8}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    .line 90
    .local v3, matrix:Lcom/google/zxing/common/BitMatrix;
    const/16 v5, 0x8

    .line 91
    .local v5, rowStep:I
    invoke-static {v3, v5}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;I)[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 92
    .local v6, vertices:[Lcom/google/zxing/ResultPoint;
    if-nez v6, :cond_1

    .line 94
    invoke-static {v3, v5}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices180(Lcom/google/zxing/common/BitMatrix;I)[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 95
    if-eqz v6, :cond_0

    .line 96
    const/4 v8, 0x1

    invoke-static {v3, v6, v8}, Lcom/google/zxing/pdf417/detector/Detector;->correctVertices(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;Z)V

    .line 102
    :cond_0
    :goto_0
    if-nez v6, :cond_2

    .line 103
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 99
    :cond_1
    const/4 v8, 0x0

    invoke-static {v3, v6, v8}, Lcom/google/zxing/pdf417/detector/Detector;->correctVertices(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;Z)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {v6}, Lcom/google/zxing/pdf417/detector/Detector;->computeModuleWidth([Lcom/google/zxing/ResultPoint;)F

    move-result v4

    .line 107
    .local v4, moduleWidth:F
    const/high16 v8, 0x3f80

    cmpg-float v8, v4, v8

    if-gez v8, :cond_3

    .line 108
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 111
    :cond_3
    const/16 v8, 0xc

    aget-object v8, v6, v8

    const/16 v9, 0xe

    aget-object v9, v6, v9

    const/16 v10, 0xd

    aget-object v10, v6, v10

    const/16 v11, 0xf

    aget-object v11, v6, v11

    invoke-static {v8, v9, v10, v11, v4}, Lcom/google/zxing/pdf417/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v0

    .line 113
    .local v0, dimension:I
    const/4 v8, 0x1

    if-ge v0, v8, :cond_4

    .line 114
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 117
    :cond_4
    const/16 v8, 0xc

    aget-object v8, v6, v8

    const/16 v9, 0xe

    aget-object v9, v6, v9

    const/16 v10, 0xd

    aget-object v10, v6, v10

    const/16 v11, 0xf

    aget-object v11, v6, v11

    invoke-static {v8, v9, v10, v11, v4}, Lcom/google/zxing/pdf417/detector/Detector;->computeYDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 121
    .local v7, yDimension:I
    invoke-direct {p0, v6, v0, v7}, Lcom/google/zxing/pdf417/detector/Detector;->sampleLines([Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    .line 122
    .local v2, linesMatrix:Lcom/google/zxing/common/BitMatrix;
    new-instance v8, Lcom/google/zxing/pdf417/detector/LinesSampler;

    invoke-direct {v8, v2, v0}, Lcom/google/zxing/pdf417/detector/LinesSampler;-><init>(Lcom/google/zxing/common/BitMatrix;I)V

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/detector/LinesSampler;->sample()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 125
    .local v1, linesGrid:Lcom/google/zxing/common/BitMatrix;
    new-instance v8, Lcom/google/zxing/common/DetectorResult;

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/google/zxing/ResultPoint;

    const/4 v10, 0x0

    const/4 v11, 0x5

    aget-object v11, v6, v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x4

    aget-object v11, v6, v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x6

    aget-object v11, v6, v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x7

    aget-object v11, v6, v11

    aput-object v11, v9, v10

    invoke-direct {v8, v1, v9}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v8
.end method
