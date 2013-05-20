.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I = null

.field private static final END_PATTERN_REVERSED:[I = null

.field private static final MAX_AVG_VARIANCE:I = 0x6b

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xcc

.field private static final N:I = 0x1

.field static final PATTERNS:[[I = null

.field private static final START_PATTERN:[I = null

.field private static final W:I = 0x3


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v1, 0xa

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 64
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 65
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    .line 70
    new-array v0, v1, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    .line 53
    :array_0
    .array-data 0x4
        0x2ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 64
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 70
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .locals 7
    .parameter "counters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 329
    const/16 v1, 0x6b

    .line 330
    .local v1, bestVariance:I
    const/4 v0, -0x1

    .line 331
    .local v0, bestMatch:I
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v3, v6

    .line 332
    .local v3, max:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 333
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v6, v2

    .line 334
    .local v4, pattern:[I
    const/16 v6, 0xcc

    invoke-static {p0, v4, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[II)I

    move-result v5

    .line 335
    .local v5, variance:I
    if-ge v5, v1, :cond_0

    .line 336
    move v1, v5

    .line 337
    move v0, v2

    .line 332
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v4           #pattern:[I
    .end local v5           #variance:I
    :cond_1
    if-ltz v0, :cond_2

    .line 341
    return v0

    .line 343
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .locals 12
    .parameter "row"
    .parameter "payloadStart"
    .parameter "payloadEnd"
    .parameter "resultString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x5

    .line 142
    const/16 v10, 0xa

    new-array v4, v10, [I

    .line 143
    .local v4, counterDigitPair:[I
    new-array v2, v11, [I

    .line 144
    .local v2, counterBlack:[I
    new-array v5, v11, [I

    .line 146
    .local v5, counterWhite:[I
    :cond_0
    if-ge p1, p2, :cond_2

    .line 149
    invoke-static {p0, p1, v4}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 151
    const/4 v7, 0x0

    .local v7, k:I
    :goto_0
    if-ge v7, v11, :cond_1

    .line 152
    shl-int/lit8 v9, v7, 0x1

    .line 153
    .local v9, twoK:I
    aget v10, v4, v9

    aput v10, v2, v7

    .line 154
    add-int/lit8 v10, v9, 0x1

    aget v10, v4, v10

    aput v10, v5, v7

    .line 151
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 157
    .end local v9           #twoK:I
    :cond_1
    invoke-static {v2}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v1

    .line 158
    .local v1, bestMatch:I
    add-int/lit8 v10, v1, 0x30

    int-to-char v10, v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {v5}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v1

    .line 160
    add-int/lit8 v10, v1, 0x30

    int-to-char v10, v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    move-object v0, v4

    .local v0, arr$:[I
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v8, :cond_0

    aget v3, v0, v6

    .line 163
    .local v3, counterDigit:I
    add-int/2addr p1, v3

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 166
    .end local v0           #arr$:[I
    .end local v1           #bestMatch:I
    .end local v3           #counterDigit:I
    .end local v6           #i$:I
    .end local v7           #k:I
    .end local v8           #len$:I
    :cond_2
    return-void
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 12
    .parameter "row"
    .parameter "rowOffset"
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 289
    array-length v3, p2

    .line 290
    .local v3, patternLength:I
    new-array v1, v3, [I

    .line 291
    .local v1, counters:[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 292
    .local v5, width:I
    const/4 v2, 0x0

    .line 294
    .local v2, isWhite:Z
    const/4 v0, 0x0

    .line 295
    .local v0, counterPosition:I
    move v4, p1

    .line 296
    .local v4, patternStart:I
    move v6, p1

    .local v6, x:I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 297
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_0

    .line 298
    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    .line 296
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 300
    :cond_0
    add-int/lit8 v9, v3, -0x1

    if-ne v0, v9, :cond_2

    .line 301
    const/16 v9, 0xcc

    invoke-static {v1, p2, v9}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[II)I

    move-result v9

    const/16 v10, 0x6b

    if-ge v9, v10, :cond_1

    .line 302
    new-array v9, v11, [I

    aput v4, v9, v8

    aput v6, v9, v7

    return-object v9

    .line 304
    :cond_1
    aget v9, v1, v8

    aget v10, v1, v7

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 305
    add-int/lit8 v9, v3, -0x2

    invoke-static {v1, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    add-int/lit8 v9, v3, -0x2

    aput v8, v1, v9

    .line 307
    add-int/lit8 v9, v3, -0x1

    aput v8, v1, v9

    .line 308
    add-int/lit8 v0, v0, -0x1

    .line 312
    :goto_2
    aput v7, v1, v0

    .line 313
    if-nez v2, :cond_3

    move v2, v7

    :goto_3
    goto :goto_1

    .line 310
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v8

    .line 313
    goto :goto_3

    .line 316
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 3
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 230
    .local v1, width:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 231
    .local v0, endStart:I
    if-ne v0, v1, :cond_0

    .line 232
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 235
    :cond_0
    return v0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 3
    .parameter "row"
    .parameter "startPattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 207
    iget v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v1, v2, 0xa

    .line 209
    .local v1, quietCount:I
    add-int/lit8 v0, p2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v1, :cond_0

    if-ltz v0, :cond_0

    .line 210
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    :cond_0
    if-eqz v1, :cond_2

    .line 217
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 213
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 209
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 219
    :cond_2
    return-void
.end method


# virtual methods
.method decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 6
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 252
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v1

    .line 253
    .local v1, endStart:I
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {p1, v1, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    .line 258
    .local v0, endPattern:[I
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 263
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 264
    .local v2, temp:I
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/4 v5, 0x1

    aget v5, v0, v5

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 265
    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    sub-int/2addr v4, v2

    aput v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    return-object v0

    .end local v0           #endPattern:[I
    .end local v1           #endStart:I
    .end local v2           #temp:I
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw v3
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 20
    .parameter "rowNumber"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    .local p3, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v12

    .line 89
    .local v12, startRange:[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v5

    .line 91
    .local v5, endRange:[I
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    .local v10, result:Ljava/lang/StringBuilder;
    const/4 v13, 0x1

    aget v13, v12, v13

    const/4 v14, 0x0

    aget v14, v5, v14

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14, v10}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 93
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 95
    .local v11, resultString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 96
    .local v3, allowedLengths:[I
    if-eqz p3, :cond_0

    .line 97
    sget-object v13, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    move-object v3, v13

    check-cast v3, [I

    .line 100
    :cond_0
    if-nez v3, :cond_1

    .line 101
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 106
    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 107
    .local v8, length:I
    const/4 v9, 0x0

    .line 108
    .local v9, lengthOK:Z
    move-object v4, v3

    .local v4, arr$:[I
    array-length v7, v4

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget v2, v4, v6

    .line 109
    .local v2, allowedLength:I
    if-ne v8, v2, :cond_3

    .line 110
    const/4 v9, 0x1

    .line 114
    .end local v2           #allowedLength:I
    :cond_2
    if-nez v9, :cond_4

    .line 115
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v13

    throw v13

    .line 108
    .restart local v2       #allowedLength:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 118
    .end local v2           #allowedLength:I
    :cond_4
    new-instance v13, Lcom/google/zxing/Result;

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Lcom/google/zxing/ResultPoint;

    const/16 v16, 0x0

    new-instance v17, Lcom/google/zxing/ResultPoint;

    const/16 v18, 0x1

    aget v18, v12, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/google/zxing/ResultPoint;

    const/16 v18, 0x0

    aget v18, v5, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    sget-object v16, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v16

    invoke-direct {v13, v11, v14, v15, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v13
.end method

.method decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 5
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 178
    .local v0, endStart:I
    sget-object v2, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 183
    .local v1, startPattern:[I
    const/4 v2, 0x1

    aget v2, v1, v2

    aget v3, v1, v4

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 185
    aget v2, v1, v4

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 187
    return-object v1
.end method
