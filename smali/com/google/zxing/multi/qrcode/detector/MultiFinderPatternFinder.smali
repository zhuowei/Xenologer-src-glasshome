.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;,
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo; = null

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0
    .parameter "image"
    .parameter "resultPointCallback"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 98
    return-void
.end method

.method private selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v14

    .line 108
    .local v14, possibleCenters:Ljava/util/List;,"Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    .line 110
    .local v16, size:I
    const/16 v24, 0x3

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 112
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v24

    throw v24

    .line 118
    :cond_0
    const/16 v24, 0x3

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 119
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v24, v27, v28

    const/16 v28, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v24, v27, v28

    const/16 v28, 0x2

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v24, v27, v28

    aput-object v27, v25, v26

    move-object/from16 v24, v25

    .line 224
    :goto_0
    return-object v24

    .line 129
    :cond_1
    new-instance v24, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    move-object/from16 v0, v24

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v15, results:Ljava/util/List;,"Ljava/util/List<[Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    const/4 v7, 0x0

    .local v7, i1:I
    :goto_1
    add-int/lit8 v24, v16, -0x2

    move/from16 v0, v24

    if-ge v7, v0, :cond_a

    .line 149
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 150
    .local v11, p1:Lcom/google/zxing/qrcode/detector/FinderPattern;
    if-nez v11, :cond_3

    .line 148
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 154
    :cond_3
    add-int/lit8 v8, v7, 0x1

    .local v8, i2:I
    :goto_2
    add-int/lit8 v24, v16, -0x1

    move/from16 v0, v24

    if-ge v8, v0, :cond_2

    .line 155
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 156
    .local v12, p2:Lcom/google/zxing/qrcode/detector/FinderPattern;
    if-nez v12, :cond_5

    .line 154
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 161
    :cond_5
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v24

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    sub-float v24, v24, v25

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    div-float v19, v24, v25

    .line 163
    .local v19, vModSize12:F
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v24

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 164
    .local v20, vModSize12A:F
    const/high16 v24, 0x3f00

    cmpl-float v24, v20, v24

    if-lez v24, :cond_6

    const v24, 0x3d4ccccd

    cmpl-float v24, v19, v24

    if-gez v24, :cond_2

    .line 170
    :cond_6
    add-int/lit8 v9, v8, 0x1

    .local v9, i3:I
    :goto_3
    move/from16 v0, v16

    if-ge v9, v0, :cond_4

    .line 171
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 172
    .local v13, p3:Lcom/google/zxing/qrcode/detector/FinderPattern;
    if-nez v13, :cond_8

    .line 170
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 177
    :cond_8
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v24

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    sub-float v24, v24, v25

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    div-float v21, v24, v25

    .line 179
    .local v21, vModSize23:F
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v24

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 180
    .local v22, vModSize23A:F
    const/high16 v24, 0x3f00

    cmpl-float v24, v22, v24

    if-lez v24, :cond_9

    const v24, 0x3d4ccccd

    cmpl-float v24, v21, v24

    if-gez v24, :cond_4

    .line 186
    :cond_9
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v17, v0

    const/16 v24, 0x0

    aput-object v11, v17, v24

    const/16 v24, 0x1

    aput-object v12, v17, v24

    const/16 v24, 0x2

    aput-object v13, v17, v24

    .line 187
    .local v17, test:[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 190
    new-instance v10, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 191
    .local v10, info:Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v24

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 192
    .local v2, dA:F
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v24

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    .line 193
    .local v4, dC:F
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v24

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    .line 196
    .local v3, dB:F
    add-float v24, v2, v3

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v25

    const/high16 v26, 0x4000

    mul-float v25, v25, v26

    div-float v6, v24, v25

    .line 197
    .local v6, estimatedModuleCount:F
    const/high16 v24, 0x4334

    cmpl-float v24, v6, v24

    if-gtz v24, :cond_7

    const/high16 v24, 0x4110

    cmpg-float v24, v6, v24

    if-ltz v24, :cond_7

    .line 203
    sub-float v24, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v25

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 204
    .local v18, vABBC:F
    const v24, 0x3dcccccd

    cmpl-float v24, v18, v24

    if-gez v24, :cond_7

    .line 209
    mul-float v24, v2, v2

    mul-float v25, v3, v3

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v5, v0

    .line 211
    .local v5, dCpy:F
    sub-float v24, v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v25

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 213
    .local v23, vPyC:F
    const v24, 0x3dcccccd

    cmpl-float v24, v23, v24

    if-gez v24, :cond_7

    .line 218
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 223
    .end local v2           #dA:F
    .end local v3           #dB:F
    .end local v4           #dC:F
    .end local v5           #dCpy:F
    .end local v6           #estimatedModuleCount:F
    .end local v8           #i2:I
    .end local v9           #i3:I
    .end local v10           #info:Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .end local v11           #p1:Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v12           #p2:Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v13           #p3:Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v17           #test:[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v18           #vABBC:F
    .end local v19           #vModSize12:F
    .end local v20           #vModSize12A:F
    .end local v21           #vModSize23:F
    .end local v22           #vModSize23A:F
    .end local v23           #vPyC:F
    :cond_a
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_b

    .line 224
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    goto/16 :goto_0

    .line 228
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v24

    throw v24
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 232
    .local p1, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p1, :cond_3

    sget-object v17, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v16, 0x1

    .line 233
    .local v16, tryHarder:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    .line 234
    .local v7, image:Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v10

    .line 235
    .local v10, maxI:I
    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v11

    .line 243
    .local v11, maxJ:I
    int-to-float v0, v10

    move/from16 v17, v0

    const/high16 v18, 0x4364

    div-float v17, v17, v18

    const/high16 v18, 0x4040

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    .line 244
    .local v6, iSkip:I
    const/16 v17, 0x3

    move/from16 v0, v17

    if-lt v6, v0, :cond_0

    if-eqz v16, :cond_1

    .line 245
    :cond_0
    const/4 v6, 0x3

    .line 248
    :cond_1
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v15, v0, [I

    .line 249
    .local v15, stateCount:[I
    add-int/lit8 v4, v6, -0x1

    .local v4, i:I
    :goto_1
    if-ge v4, v10, :cond_a

    .line 251
    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v15, v17

    .line 252
    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v15, v17

    .line 253
    const/16 v17, 0x2

    const/16 v18, 0x0

    aput v18, v15, v17

    .line 254
    const/16 v17, 0x3

    const/16 v18, 0x0

    aput v18, v15, v17

    .line 255
    const/16 v17, 0x4

    const/16 v18, 0x0

    aput v18, v15, v17

    .line 256
    const/4 v3, 0x0

    .line 257
    .local v3, currentState:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    if-ge v8, v11, :cond_8

    .line 258
    invoke-virtual {v7, v8, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 260
    and-int/lit8 v17, v3, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 261
    add-int/lit8 v3, v3, 0x1

    .line 263
    :cond_2
    aget v17, v15, v3

    add-int/lit8 v17, v17, 0x1

    aput v17, v15, v3

    .line 257
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 232
    .end local v3           #currentState:I
    .end local v4           #i:I
    .end local v6           #iSkip:I
    .end local v7           #image:Lcom/google/zxing/common/BitMatrix;
    .end local v8           #j:I
    .end local v10           #maxI:I
    .end local v11           #maxJ:I
    .end local v15           #stateCount:[I
    .end local v16           #tryHarder:Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_0

    .line 265
    .restart local v3       #currentState:I
    .restart local v4       #i:I
    .restart local v6       #iSkip:I
    .restart local v7       #image:Lcom/google/zxing/common/BitMatrix;
    .restart local v8       #j:I
    .restart local v10       #maxI:I
    .restart local v11       #maxJ:I
    .restart local v15       #stateCount:[I
    .restart local v16       #tryHarder:Z
    :cond_4
    and-int/lit8 v17, v3, 0x1

    if-nez v17, :cond_7

    .line 266
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v3, v0, :cond_6

    .line 267
    invoke-static {v15}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4, v8}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 269
    const/4 v3, 0x0

    .line 270
    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v15, v17

    .line 271
    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v15, v17

    .line 272
    const/16 v17, 0x2

    const/16 v18, 0x0

    aput v18, v15, v17

    .line 273
    const/16 v17, 0x3

    const/16 v18, 0x0

    aput v18, v15, v17

    .line 274
    const/16 v17, 0x4

    const/16 v18, 0x0

    aput v18, v15, v17

    goto :goto_3

    .line 276
    :cond_5
    const/16 v17, 0x0

    const/16 v18, 0x2

    aget v18, v15, v18

    aput v18, v15, v17

    .line 277
    const/16 v17, 0x1

    const/16 v18, 0x3

    aget v18, v15, v18

    aput v18, v15, v17

    .line 278
    const/16 v17, 0x2

    const/16 v18, 0x4

    aget v18, v15, v18

    aput v18, v15, v17

    .line 279
    const/16 v17, 0x3

    const/16 v18, 0x1

    aput v18, v15, v17

    .line 280
    const/16 v17, 0x4

    const/16 v18, 0x0

    aput v18, v15, v17

    .line 281
    const/4 v3, 0x3

    goto :goto_3

    .line 284
    :cond_6
    add-int/lit8 v3, v3, 0x1

    aget v17, v15, v3

    add-int/lit8 v17, v17, 0x1

    aput v17, v15, v3

    goto :goto_3

    .line 287
    :cond_7
    aget v17, v15, v3

    add-int/lit8 v17, v17, 0x1

    aput v17, v15, v3

    goto :goto_3

    .line 292
    :cond_8
    invoke-static {v15}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 293
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4, v11}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    .line 249
    :cond_9
    add-int/2addr v4, v6

    goto/16 :goto_1

    .line 296
    .end local v3           #currentState:I
    .end local v8           #j:I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v13

    .line 297
    .local v13, patternInfo:[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v14, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPatternInfo;>;"
    move-object v2, v13

    .local v2, arr$:[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    array-length v9, v2

    .local v9, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v9, :cond_b

    aget-object v12, v2, v5

    .line 299
    .local v12, pattern:[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v12}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 300
    new-instance v17, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 303
    .end local v12           #pattern:[Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_b
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 304
    sget-object v17, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 306
    :goto_5
    return-object v17

    :cond_c
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    goto :goto_5
.end method
