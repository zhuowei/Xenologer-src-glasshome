.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C = null

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field static final CHARACTER_ENCODINGS:[I = null

.field private static final MAX_ACCEPTABLE:I = 0x200

.field private static final MIN_CHARACTER_LENGTH:I = 0x3

.field private static final PADDING:I = 0x180

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 50
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    .line 50
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_1
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 75
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 77
    return-void
.end method

.method static arrayContains([CC)Z
    .locals 5
    .parameter "array"
    .parameter "key"

    .prologue
    .line 280
    if-eqz p0, :cond_1

    .line 281
    move-object v0, p0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 282
    .local v1, c:C
    if-ne v1, p1, :cond_0

    .line 283
    const/4 v4, 0x1

    .line 287
    .end local v0           #arr$:[C
    .end local v1           #c:C
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 281
    .restart local v0       #arr$:[C
    .restart local v1       #c:C
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    .end local v0           #arr$:[C
    .end local v1           #c:C
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private counterAppend(I)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    aput p1, v1, v2

    .line 253
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 254
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 255
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 256
    .local v0, temp:[I
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 259
    .end local v0           #temp:[I
    :cond_0
    return-void
.end method

.method private findStartPattern()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v1, v4, :cond_3

    .line 263
    invoke-direct {p0, v1}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v0

    .line 264
    .local v0, charOffset:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v5, v5, v0

    invoke-static {v4, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, patternSize:I
    move v2, v1

    .local v2, j:I
    :goto_1
    add-int/lit8 v4, v1, 0x7

    if-ge v2, v4, :cond_0

    .line 269
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 271
    :cond_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    div-int/lit8 v5, v3, 0x2

    if-lt v4, v5, :cond_2

    .line 272
    :cond_1
    return v1

    .line 262
    .end local v2           #j:I
    .end local v3           #patternSize:I
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 276
    .end local v0           #charOffset:I
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method private setCounters(Lcom/google/zxing/common/BitArray;)V
    .locals 6
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 230
    iput v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 232
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v2

    .line 233
    .local v2, i:I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 234
    .local v1, end:I
    if-lt v2, v1, :cond_0

    .line 235
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 237
    :cond_0
    const/4 v3, 0x1

    .line 238
    .local v3, isWhite:Z
    const/4 v0, 0x0

    .line 239
    .local v0, count:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 240
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_1

    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 239
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 244
    const/4 v0, 0x1

    .line 245
    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 248
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 249
    return-void
.end method

.method private toNarrowWidePattern(I)I
    .locals 15
    .parameter "position"

    .prologue
    .line 292
    add-int/lit8 v2, p1, 0x7

    .line 293
    .local v2, end:I
    iget v14, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v2, v14, :cond_1

    .line 294
    const/4 v3, -0x1

    .line 340
    :cond_0
    :goto_0
    return v3

    .line 297
    :cond_1
    iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 299
    .local v10, theCounters:[I
    const/4 v5, 0x0

    .line 300
    .local v5, maxBar:I
    const v7, 0x7fffffff

    .line 301
    .local v7, minBar:I
    move/from16 v4, p1

    .local v4, j:I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 302
    aget v1, v10, v4

    .line 303
    .local v1, currentCounter:I
    if-ge v1, v7, :cond_2

    .line 304
    move v7, v1

    .line 306
    :cond_2
    if-le v1, v5, :cond_3

    .line 307
    move v5, v1

    .line 301
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 310
    .end local v1           #currentCounter:I
    :cond_4
    add-int v14, v7, v5

    div-int/lit8 v12, v14, 0x2

    .line 312
    .local v12, thresholdBar:I
    const/4 v6, 0x0

    .line 313
    .local v6, maxSpace:I
    const v8, 0x7fffffff

    .line 314
    .local v8, minSpace:I
    add-int/lit8 v4, p1, 0x1

    :goto_2
    if-ge v4, v2, :cond_7

    .line 315
    aget v1, v10, v4

    .line 316
    .restart local v1       #currentCounter:I
    if-ge v1, v8, :cond_5

    .line 317
    move v8, v1

    .line 319
    :cond_5
    if-le v1, v6, :cond_6

    .line 320
    move v6, v1

    .line 314
    :cond_6
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 323
    .end local v1           #currentCounter:I
    :cond_7
    add-int v14, v8, v6

    div-int/lit8 v13, v14, 0x2

    .line 325
    .local v13, thresholdSpace:I
    const/16 v0, 0x80

    .line 326
    .local v0, bitmask:I
    const/4 v9, 0x0

    .line 327
    .local v9, pattern:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    const/4 v14, 0x7

    if-ge v3, v14, :cond_a

    .line 328
    and-int/lit8 v14, v3, 0x1

    if-nez v14, :cond_9

    move v11, v12

    .line 329
    .local v11, threshold:I
    :goto_4
    shr-int/lit8 v0, v0, 0x1

    .line 330
    add-int v14, p1, v3

    aget v14, v10, v14

    if-le v14, v11, :cond_8

    .line 331
    or-int/2addr v9, v0

    .line 327
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v11           #threshold:I
    :cond_9
    move v11, v13

    .line 328
    goto :goto_4

    .line 335
    :cond_a
    const/4 v3, 0x0

    :goto_5
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v14, v14

    if-ge v3, v14, :cond_b

    .line 336
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v14, v14, v3

    if-eq v14, v9, :cond_0

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 340
    :cond_b
    const/4 v3, -0x1

    goto :goto_0
.end method


# virtual methods
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 82
    .local p3, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/util/Arrays;->fill([II)V

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/CodaBarReader;->setCounters(Lcom/google/zxing/common/BitArray;)V

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/oned/CodaBarReader;->findStartPattern()I

    move-result v10

    .line 85
    .local v10, startOffset:I
    move v7, v10

    .line 87
    .local v7, nextStart:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v2

    .line 90
    .local v2, charOffset:I
    const/4 v13, -0x1

    if-ne v2, v13, :cond_1

    .line 91
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 96
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    int-to-char v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v7, v7, 0x8

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v14, v14, v2

    invoke-static {v13, v14}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 106
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v14, v7, -0x1

    aget v12, v13, v14

    .line 107
    .local v12, trailingWhitespace:I
    const/4 v5, 0x0

    .line 108
    .local v5, lastPatternSize:I
    const/4 v4, -0x8

    .local v4, i:I
    :goto_1
    const/4 v13, -0x1

    if-ge v4, v13, :cond_3

    .line 109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v14, v7, v4

    aget v13, v13, v14

    add-int/2addr v5, v13

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    .end local v4           #i:I
    .end local v5           #lastPatternSize:I
    .end local v12           #trailingWhitespace:I
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v7, v13, :cond_0

    goto :goto_0

    .line 115
    .restart local v4       #i:I
    .restart local v5       #lastPatternSize:I
    .restart local v12       #trailingWhitespace:I
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v7, v13, :cond_4

    div-int/lit8 v13, v5, 0x2

    if-ge v12, v13, :cond_4

    .line 116
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 119
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V

    .line 122
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-ge v4, v13, :cond_5

    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    aget-char v14, v14, v15

    invoke-virtual {v13, v4, v14}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 126
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    .line 127
    .local v11, startchar:C
    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v13, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v13

    if-nez v13, :cond_6

    .line 128
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 130
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 131
    .local v3, endchar:C
    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v13, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v13

    if-nez v13, :cond_7

    .line 132
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 136
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/4 v14, 0x3

    if-gt v13, v14, :cond_8

    .line 138
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 141
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 144
    const/4 v9, 0x0

    .line 145
    .local v9, runningCount:I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v10, :cond_9

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v13, v13, v4

    add-int/2addr v9, v13

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 148
    :cond_9
    int-to-float v6, v9

    .line 149
    .local v6, left:F
    move v4, v10

    :goto_4
    add-int/lit8 v13, v7, -0x1

    if-ge v4, v13, :cond_a

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v13, v13, v4

    add-int/2addr v9, v13

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 152
    :cond_a
    int-to-float v8, v9

    .line 153
    .local v8, right:F
    new-instance v13, Lcom/google/zxing/Result;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v16, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v16, v17

    sget-object v17, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-direct/range {v13 .. v17}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v13
.end method

.method validatePattern(I)V
    .locals 15
    .parameter "start"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v11, 0x4

    new-array v10, v11, [I

    fill-array-data v10, :array_0

    .line 165
    .local v10, sizes:[I
    const/4 v11, 0x4

    new-array v1, v11, [I

    fill-array-data v1, :array_1

    .line 166
    .local v1, counts:[I
    iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 170
    .local v2, end:I
    move/from16 v8, p1

    .line 171
    .local v8, pos:I
    const/4 v3, 0x0

    .line 172
    .local v3, i:I
    :goto_0
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    aget v7, v11, v12

    .line 173
    .local v7, pattern:I
    const/4 v4, 0x6

    .local v4, j:I
    :goto_1
    if-ltz v4, :cond_0

    .line 176
    and-int/lit8 v11, v4, 0x1

    and-int/lit8 v12, v7, 0x1

    mul-int/lit8 v12, v12, 0x2

    add-int v0, v11, v12

    .line 177
    .local v0, category:I
    aget v11, v10, v0

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v13, v8, v4

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v0

    .line 178
    aget v11, v1, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v1, v0

    .line 179
    shr-int/lit8 v7, v7, 0x1

    .line 173
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 181
    .end local v0           #category:I
    :cond_0
    if-lt v3, v2, :cond_1

    .line 189
    const/4 v11, 0x4

    new-array v5, v11, [I

    .line 190
    .local v5, maxes:[I
    const/4 v11, 0x4

    new-array v6, v11, [I

    .line 194
    .local v6, mins:[I
    const/4 v3, 0x0

    :goto_2
    const/4 v11, 0x2

    if-ge v3, v11, :cond_2

    .line 195
    const/4 v11, 0x0

    aput v11, v6, v3

    .line 196
    add-int/lit8 v11, v3, 0x2

    aget v12, v10, v3

    shl-int/lit8 v12, v12, 0x8

    aget v13, v1, v3

    div-int/2addr v12, v13

    add-int/lit8 v13, v3, 0x2

    aget v13, v10, v13

    shl-int/lit8 v13, v13, 0x8

    add-int/lit8 v14, v3, 0x2

    aget v14, v1, v14

    div-int/2addr v13, v14

    add-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x1

    aput v12, v6, v11

    .line 198
    add-int/lit8 v11, v3, 0x2

    aget v11, v6, v11

    aput v11, v5, v3

    .line 199
    add-int/lit8 v11, v3, 0x2

    add-int/lit8 v12, v3, 0x2

    aget v12, v10, v12

    mul-int/lit16 v12, v12, 0x200

    add-int/lit16 v12, v12, 0x180

    add-int/lit8 v13, v3, 0x2

    aget v13, v1, v13

    div-int/2addr v12, v13

    aput v12, v5, v11

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 185
    .end local v5           #maxes:[I
    .end local v6           #mins:[I
    :cond_1
    add-int/lit8 v8, v8, 0x8

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .restart local v5       #maxes:[I
    .restart local v6       #mins:[I
    :cond_2
    move/from16 v8, p1

    .line 204
    const/4 v3, 0x0

    .line 205
    :goto_3
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    aget v7, v11, v12

    .line 206
    const/4 v4, 0x6

    :goto_4
    if-ltz v4, :cond_5

    .line 209
    and-int/lit8 v11, v4, 0x1

    and-int/lit8 v12, v7, 0x1

    mul-int/lit8 v12, v12, 0x2

    add-int v0, v11, v12

    .line 210
    .restart local v0       #category:I
    iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v12, v8, v4

    aget v11, v11, v12

    shl-int/lit8 v9, v11, 0x8

    .line 211
    .local v9, size:I
    aget v11, v6, v0

    if-lt v9, v11, :cond_3

    aget v11, v5, v0

    if-le v9, v11, :cond_4

    .line 212
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 214
    :cond_4
    shr-int/lit8 v7, v7, 0x1

    .line 206
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 216
    .end local v0           #category:I
    .end local v9           #size:I
    :cond_5
    if-lt v3, v2, :cond_6

    .line 221
    return-void

    .line 219
    :cond_6
    add-int/lit8 v8, v8, 0x8

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 164
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 165
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
