.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 48
    return-void
.end method

.method private static correctParameterData([ZZ)V
    .locals 12
    .parameter "parameterData"
    .parameter "compact"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 215
    if-eqz p1, :cond_1

    .line 216
    const/4 v5, 0x7

    .line 217
    .local v5, numCodewords:I
    const/4 v6, 0x2

    .line 223
    .local v6, numDataCodewords:I
    :goto_0
    sub-int v7, v5, v6

    .line 224
    .local v7, numECCodewords:I
    new-array v8, v5, [I

    .line 226
    .local v8, parameterWords:[I
    const/4 v0, 0x4

    .line 227
    .local v0, codewordSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 228
    const/4 v1, 0x1

    .line 229
    .local v1, flag:I
    const/4 v4, 0x1

    .local v4, j:I
    :goto_2
    if-gt v4, v0, :cond_2

    .line 230
    mul-int v10, v0, v2

    add-int/2addr v10, v0

    sub-int/2addr v10, v4

    aget-boolean v10, p0, v10

    if-eqz v10, :cond_0

    .line 231
    aget v10, v8, v2

    add-int/2addr v10, v1

    aput v10, v8, v2

    .line 233
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 219
    .end local v0           #codewordSize:I
    .end local v1           #flag:I
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v5           #numCodewords:I
    .end local v6           #numDataCodewords:I
    .end local v7           #numECCodewords:I
    .end local v8           #parameterWords:[I
    :cond_1
    const/16 v5, 0xa

    .line 220
    .restart local v5       #numCodewords:I
    const/4 v6, 0x4

    .restart local v6       #numDataCodewords:I
    goto :goto_0

    .line 227
    .restart local v0       #codewordSize:I
    .restart local v1       #flag:I
    .restart local v2       #i:I
    .restart local v4       #j:I
    .restart local v7       #numECCodewords:I
    .restart local v8       #parameterWords:[I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    .end local v1           #flag:I
    .end local v4           #j:I
    :cond_3
    :try_start_0
    new-instance v9, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v10, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v9, v10}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 239
    .local v9, rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    invoke-virtual {v9, v8, v7}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_6

    .line 245
    const/4 v1, 0x1

    .line 246
    .restart local v1       #flag:I
    const/4 v4, 0x1

    .restart local v4       #j:I
    :goto_4
    if-gt v4, v0, :cond_5

    .line 247
    mul-int v10, v2, v0

    add-int/2addr v10, v0

    sub-int v11, v10, v4

    aget v10, v8, v2

    and-int/2addr v10, v1

    if-ne v10, v1, :cond_4

    const/4 v10, 0x1

    :goto_5
    aput-boolean v10, p0, v11

    .line 248
    shl-int/lit8 v1, v1, 0x1

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 240
    .end local v1           #flag:I
    .end local v4           #j:I
    .end local v9           #rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    :catch_0
    move-exception v3

    .line 241
    .local v3, ignored:Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10

    .line 247
    .end local v3           #ignored:Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    .restart local v1       #flag:I
    .restart local v4       #j:I
    .restart local v9       #rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    .line 244
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 251
    .end local v1           #flag:I
    .end local v4           #j:I
    :cond_6
    return-void
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 608
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget v2, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v3, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0
.end method

.method private extractParameters([Lcom/google/zxing/aztec/detector/Detector$Point;)V
    .locals 11
    .parameter "bullEyeCornerPoints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    iget v8, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v7, v8, 0x2

    .line 87
    .local v7, twoCenterLayers:I
    const/4 v8, 0x0

    aget-object v8, p1, v8

    const/4 v9, 0x1

    aget-object v9, p1, v9

    add-int/lit8 v10, v7, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object v2

    .line 88
    .local v2, resab:[Z
    const/4 v8, 0x1

    aget-object v8, p1, v8

    const/4 v9, 0x2

    aget-object v9, p1, v9

    add-int/lit8 v10, v7, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object v3

    .line 89
    .local v3, resbc:[Z
    const/4 v8, 0x2

    aget-object v8, p1, v8

    const/4 v9, 0x3

    aget-object v9, p1, v9

    add-int/lit8 v10, v7, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object v4

    .line 90
    .local v4, rescd:[Z
    const/4 v8, 0x3

    aget-object v8, p1, v8

    const/4 v9, 0x0

    aget-object v9, p1, v9

    add-int/lit8 v10, v7, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object v5

    .line 93
    .local v5, resda:[Z
    const/4 v8, 0x0

    aget-boolean v8, v2, v8

    if-eqz v8, :cond_0

    aget-boolean v8, v2, v7

    if-eqz v8, :cond_0

    .line 94
    const/4 v8, 0x0

    iput v8, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 112
    :goto_0
    iget-boolean v8, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v8, :cond_5

    .line 113
    const/16 v8, 0x1c

    new-array v6, v8, [Z

    .line 114
    .local v6, shiftedParameterData:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v8, 0x7

    if-ge v0, v8, :cond_4

    .line 115
    add-int/lit8 v8, v0, 0x2

    aget-boolean v8, v2, v8

    aput-boolean v8, v6, v0

    .line 116
    add-int/lit8 v8, v0, 0x7

    add-int/lit8 v9, v0, 0x2

    aget-boolean v9, v3, v9

    aput-boolean v9, v6, v8

    .line 117
    add-int/lit8 v8, v0, 0xe

    add-int/lit8 v9, v0, 0x2

    aget-boolean v9, v4, v9

    aput-boolean v9, v6, v8

    .line 118
    add-int/lit8 v8, v0, 0x15

    add-int/lit8 v9, v0, 0x2

    aget-boolean v9, v5, v9

    aput-boolean v9, v6, v8

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    .end local v0           #i:I
    .end local v6           #shiftedParameterData:[Z
    :cond_0
    const/4 v8, 0x0

    aget-boolean v8, v3, v8

    if-eqz v8, :cond_1

    aget-boolean v8, v3, v7

    if-eqz v8, :cond_1

    .line 96
    const/4 v8, 0x1

    iput v8, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    goto :goto_0

    .line 97
    :cond_1
    const/4 v8, 0x0

    aget-boolean v8, v4, v8

    if-eqz v8, :cond_2

    aget-boolean v8, v4, v7

    if-eqz v8, :cond_2

    .line 98
    const/4 v8, 0x2

    iput v8, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    goto :goto_0

    .line 99
    :cond_2
    const/4 v8, 0x0

    aget-boolean v8, v5, v8

    if-eqz v8, :cond_3

    aget-boolean v8, v5, v7

    if-eqz v8, :cond_3

    .line 100
    const/4 v8, 0x3

    iput v8, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 121
    .restart local v0       #i:I
    .restart local v6       #shiftedParameterData:[Z
    :cond_4
    const/16 v8, 0x1c

    new-array v1, v8, [Z

    .line 122
    .local v1, parameterData:[Z
    const/4 v0, 0x0

    :goto_2
    const/16 v8, 0x1c

    if-ge v0, v8, :cond_9

    .line 123
    iget v8, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    mul-int/lit8 v8, v8, 0x7

    add-int/2addr v8, v0

    rem-int/lit8 v8, v8, 0x1c

    aget-boolean v8, v6, v8

    aput-boolean v8, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 126
    .end local v0           #i:I
    .end local v1           #parameterData:[Z
    .end local v6           #shiftedParameterData:[Z
    :cond_5
    const/16 v8, 0x28

    new-array v6, v8, [Z

    .line 127
    .restart local v6       #shiftedParameterData:[Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    const/16 v8, 0xb

    if-ge v0, v8, :cond_8

    .line 128
    const/4 v8, 0x5

    if-ge v0, v8, :cond_6

    .line 129
    add-int/lit8 v8, v0, 0x2

    aget-boolean v8, v2, v8

    aput-boolean v8, v6, v0

    .line 130
    add-int/lit8 v8, v0, 0xa

    add-int/lit8 v9, v0, 0x2

    aget-boolean v9, v3, v9

    aput-boolean v9, v6, v8

    .line 131
    add-int/lit8 v8, v0, 0x14

    add-int/lit8 v9, v0, 0x2

    aget-boolean v9, v4, v9

    aput-boolean v9, v6, v8

    .line 132
    add-int/lit8 v8, v0, 0x1e

    add-int/lit8 v9, v0, 0x2

    aget-boolean v9, v5, v9

    aput-boolean v9, v6, v8

    .line 134
    :cond_6
    const/4 v8, 0x5

    if-le v0, v8, :cond_7

    .line 135
    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v9, v0, 0x2

    aget-boolean v9, v2, v9

    aput-boolean v9, v6, v8

    .line 136
    add-int/lit8 v8, v0, 0x9

    add-int/lit8 v9, v0, 0x2

    aget-boolean v9, v3, v9

    aput-boolean v9, v6, v8

    .line 137
    add-int/lit8 v8, v0, 0x13

    add-int/lit8 v9, v0, 0x2

    aget-boolean v9, v4, v9

    aput-boolean v9, v6, v8

    .line 138
    add-int/lit8 v8, v0, 0x1d

    add-int/lit8 v9, v0, 0x2

    aget-boolean v9, v5, v9

    aput-boolean v9, v6, v8

    .line 127
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 142
    :cond_8
    const/16 v8, 0x28

    new-array v1, v8, [Z

    .line 143
    .restart local v1       #parameterData:[Z
    const/4 v0, 0x0

    :goto_4
    const/16 v8, 0x28

    if-ge v0, v8, :cond_9

    .line 144
    iget v8, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v0

    rem-int/lit8 v8, v8, 0x28

    aget-boolean v8, v6, v8

    aput-boolean v8, v1, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 149
    :cond_9
    iget-boolean v8, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    invoke-static {v1, v8}, Lcom/google/zxing/aztec/detector/Detector;->correctParameterData([ZZ)V

    .line 152
    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/detector/Detector;->getParameters([Z)V

    .line 153
    return-void
.end method

.method private getBullEyeCornerPoints(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 28
    .parameter "pCenter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 262
    move-object/from16 v6, p1

    .line 263
    .local v6, pina:Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v7, p1

    .line 264
    .local v7, pinb:Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v8, p1

    .line 265
    .local v8, pinc:Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v9, p1

    .line 267
    .local v9, pind:Lcom/google/zxing/aztec/detector/Detector$Point;
    const/4 v3, 0x1

    .line 269
    .local v3, color:Z
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v24, v0

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 270
    const/16 v24, 0x1

    const/16 v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v6, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v10

    .line 271
    .local v10, pouta:Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v7, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v11

    .line 272
    .local v11, poutb:Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v24, -0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v8, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v12

    .line 273
    .local v12, poutc:Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v9, v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v13

    .line 279
    .local v13, poutd:Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 280
    invoke-static {v13, v10}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    invoke-static {v9, v6}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    div-float v14, v24, v25

    .line 281
    .local v14, q:F
    float-to-double v0, v14

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3fe8

    cmpg-double v24, v24, v26

    if-ltz v24, :cond_0

    float-to-double v0, v14

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff4

    cmpl-double v24, v24, v26

    if-gtz v24, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 294
    .end local v10           #pouta:Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v11           #poutb:Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v12           #poutc:Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v13           #poutd:Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v14           #q:F
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 295
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v24

    throw v24

    .line 286
    .restart local v10       #pouta:Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v11       #poutb:Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v12       #poutc:Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v13       #poutd:Lcom/google/zxing/aztec/detector/Detector$Point;
    :cond_1
    move-object v6, v10

    .line 287
    move-object v7, v11

    .line 288
    move-object v8, v12

    .line 289
    move-object v9, v13

    .line 291
    if-nez v3, :cond_2

    const/4 v3, 0x1

    .line 269
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    goto/16 :goto_0

    .line 291
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 298
    .end local v10           #pouta:Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v11           #poutb:Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v12           #poutc:Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v13           #poutd:Lcom/google/zxing/aztec/detector/Detector$Point;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    const/16 v24, 0x1

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 300
    const/high16 v24, 0x3fc0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x2

    add-int/lit8 v25, v25, -0x3

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v15, v24, v25

    .line 302
    .local v15, ratio:F
    iget v0, v6, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    iget v0, v8, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v25, v0

    sub-int v4, v24, v25

    .line 303
    .local v4, dx:I
    iget v0, v6, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    iget v0, v8, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v25, v0

    sub-int v5, v24, v25

    .line 304
    .local v5, dy:I
    iget v0, v8, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v4

    move/from16 v25, v0

    mul-float v25, v25, v15

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v20

    .line 305
    .local v20, targetcx:I
    iget v0, v8, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v5

    move/from16 v25, v0

    mul-float v25, v25, v15

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v21

    .line 306
    .local v21, targetcy:I
    iget v0, v6, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v4

    move/from16 v25, v0

    mul-float v25, v25, v15

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v16

    .line 307
    .local v16, targetax:I
    iget v0, v6, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v5

    move/from16 v25, v0

    mul-float v25, v25, v15

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v17

    .line 309
    .local v17, targetay:I
    iget v0, v7, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    iget v0, v9, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v25, v0

    sub-int v4, v24, v25

    .line 310
    iget v0, v7, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    iget v0, v9, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v25, v0

    sub-int v5, v24, v25

    .line 312
    iget v0, v9, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v4

    move/from16 v25, v0

    mul-float v25, v25, v15

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v22

    .line 313
    .local v22, targetdx:I
    iget v0, v9, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v5

    move/from16 v25, v0

    mul-float v25, v25, v15

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v23

    .line 314
    .local v23, targetdy:I
    iget v0, v7, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v4

    move/from16 v25, v0

    mul-float v25, v25, v15

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v18

    .line 315
    .local v18, targetbx:I
    iget v0, v7, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v5

    move/from16 v25, v0

    mul-float v25, v25, v15

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v19

    .line 317
    .local v19, targetby:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v24

    if-nez v24, :cond_6

    .line 321
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v24

    throw v24

    .line 298
    .end local v4           #dx:I
    .end local v5           #dy:I
    .end local v15           #ratio:F
    .end local v16           #targetax:I
    .end local v17           #targetay:I
    .end local v18           #targetbx:I
    .end local v19           #targetby:I
    .end local v20           #targetcx:I
    .end local v21           #targetcy:I
    .end local v22           #targetdx:I
    .end local v23           #targetdy:I
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 324
    .restart local v4       #dx:I
    .restart local v5       #dy:I
    .restart local v15       #ratio:F
    .restart local v16       #targetax:I
    .restart local v17       #targetay:I
    .restart local v18       #targetbx:I
    .restart local v19       #targetby:I
    .restart local v20       #targetcx:I
    .restart local v21       #targetcy:I
    .restart local v22       #targetdx:I
    .restart local v23       #targetdy:I
    :cond_6
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    aput-object v26, v24, v25

    const/16 v25, 0x1

    new-instance v26, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    aput-object v26, v24, v25

    const/16 v25, 0x2

    new-instance v26, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    aput-object v26, v24, v25

    const/16 v25, 0x3

    new-instance v26, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    aput-object v26, v24, v25

    return-object v24
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 12
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 548
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v1

    .line 549
    .local v1, d:F
    iget v9, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v10, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v2, v9, v1

    .line 550
    .local v2, dx:F
    iget v9, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget v10, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v3, v9, v1

    .line 551
    .local v3, dy:F
    const/4 v5, 0x0

    .line 553
    .local v5, error:I
    iget v9, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v7, v9

    .line 554
    .local v7, px:F
    iget v9, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v8, v9

    .line 556
    .local v8, py:F
    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v10, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v11, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    .line 558
    .local v0, colorModel:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    int-to-float v9, v6

    cmpg-float v9, v9, v1

    if-gez v9, :cond_1

    .line 559
    add-float/2addr v7, v2

    .line 560
    add-float/2addr v8, v3

    .line 561
    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eq v9, v0, :cond_0

    .line 562
    add-int/lit8 v5, v5, 0x1

    .line 558
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 566
    :cond_1
    int-to-float v9, v5

    div-float v4, v9, v1

    .line 568
    .local v4, errRatio:F
    const v9, 0x3dcccccd

    cmpl-float v9, v4, v9

    if-lez v9, :cond_2

    const v9, 0x3f666666

    cmpg-float v9, v4, v9

    if-gez v9, :cond_2

    .line 569
    const/4 v9, 0x0

    .line 572
    :goto_1
    return v9

    :cond_2
    const v9, 0x3dcccccd

    cmpg-float v9, v4, v9

    if-gtz v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    if-ne v9, v0, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    const/4 v9, -0x1

    goto :goto_1
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 3
    .parameter "init"
    .parameter "color"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 579
    iget v2, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    add-int v0, v2, p3

    .line 580
    .local v0, x:I
    iget v2, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    add-int v1, v2, p4

    .line 582
    .local v1, y:I
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 583
    add-int/2addr v0, p3

    .line 584
    add-int/2addr v1, p4

    goto :goto_0

    .line 587
    :cond_0
    sub-int/2addr v0, p3

    .line 588
    sub-int/2addr v1, p4

    .line 590
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_1

    .line 591
    add-int/2addr v0, p3

    goto :goto_1

    .line 593
    :cond_1
    sub-int/2addr v0, p3

    .line 595
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_2

    .line 596
    add-int/2addr v1, p4

    goto :goto_2

    .line 598
    :cond_2
    sub-int/2addr v1, p4

    .line 600
    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v2
.end method

.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 15

    .prologue
    const/high16 v14, 0x4080

    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 347
    :try_start_0
    new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 348
    .local v0, cornerPoints:[Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x0

    aget-object v4, v0, v8

    .line 349
    .local v4, pointA:Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x1

    aget-object v5, v0, v8

    .line 350
    .local v5, pointB:Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x2

    aget-object v6, v0, v8

    .line 351
    .local v6, pointC:Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x3

    aget-object v7, v0, v8
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v0           #cornerPoints:[Lcom/google/zxing/ResultPoint;
    .local v7, pointD:Lcom/google/zxing/ResultPoint;
    :goto_0
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 368
    .local v1, cx:I
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 374
    .local v2, cy:I
    :try_start_1
    new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/16 v10, 0xf

    invoke-direct {v8, v9, v10, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 375
    .restart local v0       #cornerPoints:[Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x0

    aget-object v4, v0, v8

    .line 376
    const/4 v8, 0x1

    aget-object v5, v0, v8

    .line 377
    const/4 v8, 0x2

    aget-object v6, v0, v8

    .line 378
    const/4 v8, 0x3

    aget-object v7, v0, v8
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    .end local v0           #cornerPoints:[Lcom/google/zxing/ResultPoint;
    :goto_1
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 392
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v14

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 394
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v8, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v8

    .line 353
    .end local v1           #cx:I
    .end local v2           #cy:I
    .end local v4           #pointA:Lcom/google/zxing/ResultPoint;
    .end local v5           #pointB:Lcom/google/zxing/ResultPoint;
    .end local v6           #pointC:Lcom/google/zxing/ResultPoint;
    .end local v7           #pointD:Lcom/google/zxing/ResultPoint;
    :catch_0
    move-exception v3

    .line 357
    .local v3, e:Lcom/google/zxing/NotFoundException;
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    div-int/lit8 v1, v8, 0x2

    .line 358
    .restart local v1       #cx:I
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .line 359
    .restart local v2       #cy:I
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 360
    .restart local v4       #pointA:Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 361
    .restart local v5       #pointB:Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 362
    .restart local v6       #pointC:Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .restart local v7       #pointD:Lcom/google/zxing/ResultPoint;
    goto/16 :goto_0

    .line 379
    .end local v3           #e:Lcom/google/zxing/NotFoundException;
    :catch_1
    move-exception v3

    .line 383
    .restart local v3       #e:Lcom/google/zxing/NotFoundException;
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 384
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, 0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v12, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 385
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 386
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v1, -0x7

    add-int/lit8 v10, v2, -0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v8, v11, v13, v13}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v7

    goto/16 :goto_1
.end method

.method private getMatrixCornerPoints([Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .locals 17
    .parameter "bullEyeCornerPoints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v13, v12, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/4 v14, 0x4

    if-le v12, v14, :cond_1

    const/4 v12, 0x1

    :goto_0
    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    add-int/lit8 v13, v13, -0x4

    div-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x4000

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    div-float v3, v12, v13

    .line 167
    .local v3, ratio:F
    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    const/4 v13, 0x2

    aget-object v13, p1, v13

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int v1, v12, v13

    .line 168
    .local v1, dx:I
    if-lez v1, :cond_2

    const/4 v12, 0x1

    :goto_1
    add-int/2addr v1, v12

    .line 169
    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    const/4 v13, 0x2

    aget-object v13, p1, v13

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int v2, v12, v13

    .line 170
    .local v2, dy:I
    if-lez v2, :cond_3

    const/4 v12, 0x1

    :goto_2
    add-int/2addr v2, v12

    .line 172
    const/4 v12, 0x2

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v12, v12

    int-to-float v13, v1

    mul-float/2addr v13, v3

    sub-float/2addr v12, v13

    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    .line 173
    .local v8, targetcx:I
    const/4 v12, 0x2

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v12, v12

    int-to-float v13, v2

    mul-float/2addr v13, v3

    sub-float/2addr v12, v13

    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    .line 175
    .local v9, targetcy:I
    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v12, v12

    int-to-float v13, v1

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    .line 176
    .local v4, targetax:I
    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v12, v12

    int-to-float v13, v2

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v5

    .line 178
    .local v5, targetay:I
    const/4 v12, 0x1

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    const/4 v13, 0x3

    aget-object v13, p1, v13

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int v1, v12, v13

    .line 179
    if-lez v1, :cond_4

    const/4 v12, 0x1

    :goto_3
    add-int/2addr v1, v12

    .line 180
    const/4 v12, 0x1

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    const/4 v13, 0x3

    aget-object v13, p1, v13

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int v2, v12, v13

    .line 181
    if-lez v2, :cond_5

    const/4 v12, 0x1

    :goto_4
    add-int/2addr v2, v12

    .line 183
    const/4 v12, 0x3

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v12, v12

    int-to-float v13, v1

    mul-float/2addr v13, v3

    sub-float/2addr v12, v13

    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    .line 184
    .local v10, targetdx:I
    const/4 v12, 0x3

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v12, v12

    int-to-float v13, v2

    mul-float/2addr v13, v3

    sub-float/2addr v12, v13

    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    .line 185
    .local v11, targetdy:I
    const/4 v12, 0x1

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v12, v12

    int-to-float v13, v1

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v6

    .line 186
    .local v6, targetbx:I
    const/4 v12, 0x1

    aget-object v12, p1, v12

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v12, v12

    int-to-float v13, v2

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v7

    .line 188
    .local v7, targetby:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v12

    if-nez v12, :cond_6

    .line 192
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 164
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #ratio:F
    .end local v4           #targetax:I
    .end local v5           #targetay:I
    .end local v6           #targetbx:I
    .end local v7           #targetby:I
    .end local v8           #targetcx:I
    .end local v9           #targetcy:I
    .end local v10           #targetdx:I
    .end local v11           #targetdy:I
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 168
    .restart local v1       #dx:I
    .restart local v3       #ratio:F
    :cond_2
    const/4 v12, -0x1

    goto/16 :goto_1

    .line 170
    .restart local v2       #dy:I
    :cond_3
    const/4 v12, -0x1

    goto/16 :goto_2

    .line 179
    .restart local v4       #targetax:I
    .restart local v5       #targetay:I
    .restart local v8       #targetcx:I
    .restart local v9       #targetcy:I
    :cond_4
    const/4 v12, -0x1

    goto :goto_3

    .line 181
    :cond_5
    const/4 v12, -0x1

    goto :goto_4

    .line 195
    .restart local v6       #targetbx:I
    .restart local v7       #targetby:I
    .restart local v10       #targetdx:I
    .restart local v11       #targetdy:I
    :cond_6
    const/4 v12, 0x4

    new-array v12, v12, [Lcom/google/zxing/ResultPoint;

    const/4 v13, 0x0

    new-instance v14, Lcom/google/zxing/ResultPoint;

    int-to-float v15, v4

    int-to-float v0, v5

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Lcom/google/zxing/ResultPoint;

    int-to-float v15, v6

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    const/4 v13, 0x2

    new-instance v14, Lcom/google/zxing/ResultPoint;

    int-to-float v15, v8

    int-to-float v0, v9

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    const/4 v13, 0x3

    new-instance v14, Lcom/google/zxing/ResultPoint;

    int-to-float v15, v10

    int-to-float v0, v11

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    return-object v12
.end method

.method private getParameters([Z)V
    .locals 4
    .parameter "parameterData"

    .prologue
    .line 448
    iget-boolean v3, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v3, :cond_1

    .line 449
    const/4 v2, 0x2

    .line 450
    .local v2, nbBitsForNbLayers:I
    const/4 v1, 0x6

    .line 456
    .local v1, nbBitsForNbDatablocks:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 457
    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    shl-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 458
    aget-boolean v3, p1, v0

    if-eqz v3, :cond_0

    .line 459
    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 456
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 452
    .end local v0           #i:I
    .end local v1           #nbBitsForNbDatablocks:I
    .end local v2           #nbBitsForNbLayers:I
    :cond_1
    const/4 v2, 0x5

    .line 453
    .restart local v2       #nbBitsForNbLayers:I
    const/16 v1, 0xb

    .restart local v1       #nbBitsForNbDatablocks:I
    goto :goto_0

    .line 463
    .restart local v0       #i:I
    :cond_2
    move v0, v2

    :goto_2
    add-int v3, v2, v1

    if-ge v0, v3, :cond_4

    .line 464
    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    shl-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 465
    aget-boolean v3, p1, v0

    if-eqz v3, :cond_3

    .line 466
    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 463
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 470
    :cond_4
    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 471
    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 472
    return-void
.end method

.method private isValid(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 604
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .locals 10
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "p4"

    .prologue
    const/4 v7, 0x0

    .line 511
    const/4 v2, 0x3

    .line 513
    .local v2, corr:I
    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget v8, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v8, v2

    iget v9, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    add-int/2addr v9, v2

    invoke-direct {v3, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 514
    .end local p1
    .local v3, p1:Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget v8, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v8, v2

    iget v9, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v9, v2

    invoke-direct {v4, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 515
    .end local p2
    .local v4, p2:Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget v8, p3, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    add-int/2addr v8, v2

    iget v9, p3, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v9, v2

    invoke-direct {v5, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 516
    .end local p3
    .local v5, p3:Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v6, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget v8, p4, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    add-int/2addr v8, v2

    iget v9, p4, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    add-int/2addr v9, v2

    invoke-direct {v6, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    .line 518
    .end local p4
    .local v6, p4:Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {p0, v6, v3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v1

    .line 520
    .local v1, cInit:I
    if-nez v1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v7

    .line 524
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 526
    .local v0, c:I
    if-ne v0, v1, :cond_0

    .line 530
    invoke-direct {p0, v4, v5}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 532
    if-ne v0, v1, :cond_0

    .line 536
    invoke-direct {p0, v5, v6}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    .line 538
    if-ne v0, v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0
.end method

.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .locals 21
    .parameter "image"
    .parameter "topLeft"
    .parameter "bottomLeft"
    .parameter "bottomRight"
    .parameter "topRight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v2, :cond_0

    .line 408
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v2, 0xb

    .line 417
    .local v3, dimension:I
    :goto_0
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    .line 419
    .local v1, sampler:Lcom/google/zxing/common/GridSampler;
    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f00

    int-to-float v2, v3

    const/high16 v4, 0x3f00

    sub-float v7, v2, v4

    const/high16 v8, 0x3f00

    int-to-float v2, v3

    const/high16 v4, 0x3f00

    sub-float v9, v2, v4

    int-to-float v2, v3

    const/high16 v4, 0x3f00

    sub-float v10, v2, v4

    const/high16 v11, 0x3f00

    int-to-float v2, v3

    const/high16 v4, 0x3f00

    sub-float v12, v2, v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move-object/from16 v2, p1

    move v4, v3

    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2

    .line 410
    .end local v1           #sampler:Lcom/google/zxing/common/GridSampler;
    .end local v3           #dimension:I
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/4 v4, 0x4

    if-gt v2, v4, :cond_1

    .line 411
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v2, 0xf

    .restart local v3       #dimension:I
    goto :goto_0

    .line 413
    .end local v3           #dimension:I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    add-int/lit8 v4, v4, -0x4

    div-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v3, v2, 0xf

    .restart local v3       #dimension:I
    goto :goto_0
.end method

.method private sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z
    .locals 11
    .parameter "p1"
    .parameter "p2"
    .parameter "size"

    .prologue
    .line 484
    new-array v7, p3, [Z

    .line 485
    .local v7, res:[Z
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v0

    .line 486
    .local v0, d:F
    add-int/lit8 v8, p3, -0x1

    int-to-float v8, v8

    div-float v4, v0, v8

    .line 487
    .local v4, moduleSize:F
    iget v8, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v9, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v4

    div-float v1, v8, v0

    .line 488
    .local v1, dx:F
    iget v8, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget v9, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v4

    div-float v2, v8, v0

    .line 490
    .local v2, dy:F
    iget v8, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v5, v8

    .line 491
    .local v5, px:F
    iget v8, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v6, v8

    .line 493
    .local v6, py:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 494
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    aput-boolean v8, v7, v3

    .line 495
    add-float/2addr v5, v1

    .line 496
    add-float/2addr v6, v2

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 499
    :cond_0
    return-object v7
.end method


# virtual methods
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    .line 62
    .local v8, pCenter:Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {p0, v8}, Lcom/google/zxing/aztec/detector/Detector;->getBullEyeCornerPoints(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v6

    .line 65
    .local v6, bullEyeCornerPoints:[Lcom/google/zxing/aztec/detector/Detector$Point;
    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/aztec/detector/Detector$Point;)V

    .line 68
    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .line 71
    .local v7, corners:[Lcom/google/zxing/ResultPoint;
    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    rem-int/lit8 v0, v0, 0x4

    aget-object v2, v7, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    aget-object v3, v7, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    aget-object v4, v7, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    aget-object v5, v7, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 73
    .local v1, bits:Lcom/google/zxing/common/BitMatrix;
    new-instance v0, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v3, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    iget v5, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    return-object v0
.end method
