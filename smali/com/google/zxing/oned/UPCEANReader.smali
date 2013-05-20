.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field static final L_AND_G_PATTERNS:[[I = null

.field static final L_PATTERNS:[[I = null

.field private static final MAX_AVG_VARIANCE:I = 0x7a

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xb3

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;

.field private final eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

.field private final extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 53
    new-array v4, v9, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 58
    new-array v4, v10, [I

    fill-array-data v4, :array_1

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 63
    new-array v4, v11, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_2

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-array v6, v7, [I

    fill-array-data v6, :array_3

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_4

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_5

    aput-object v5, v4, v9

    new-array v5, v7, [I

    fill-array-data v5, :array_6

    aput-object v5, v4, v7

    new-array v5, v7, [I

    fill-array-data v5, :array_7

    aput-object v5, v4, v10

    const/4 v5, 0x6

    new-array v6, v7, [I

    fill-array-data v6, :array_8

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_9

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_a

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v6, v7, [I

    fill-array-data v6, :array_b

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 82
    const/16 v4, 0x14

    new-array v4, v4, [[I

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 83
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {v4, v8, v5, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    const/16 v0, 0xa

    .local v0, i:I
    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_1

    .line 85
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v5, v0, -0xa

    aget-object v3, v4, v5

    .line 86
    .local v3, widths:[I
    array-length v4, v3

    new-array v2, v4, [I

    .line 87
    .local v2, reversedWidths:[I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 88
    array-length v4, v3

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    aput v4, v2, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :cond_0
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v2, v4, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1           #j:I
    .end local v2           #reversedWidths:[I
    .end local v3           #widths:[I
    :cond_1
    return-void

    .line 53
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 58
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    .line 101
    new-instance v0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    .line 102
    return-void
.end method

.method static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/4 v4, 0x0

    .line 228
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 229
    .local v2, length:I
    if-nez v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v4

    .line 233
    :cond_1
    const/4 v3, 0x0

    .line 234
    .local v3, sum:I
    add-int/lit8 v1, v2, -0x2

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_4

    .line 235
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    .line 236
    .local v0, digit:I
    if-ltz v0, :cond_2

    if-le v0, v6, :cond_3

    .line 237
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 239
    :cond_3
    add-int/2addr v3, v0

    .line 234
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 241
    .end local v0           #digit:I
    :cond_4
    mul-int/lit8 v3, v3, 0x3

    .line 242
    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_7

    .line 243
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    .line 244
    .restart local v0       #digit:I
    if-ltz v0, :cond_5

    if-le v0, v6, :cond_6

    .line 245
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 247
    :cond_6
    add-int/2addr v3, v0

    .line 242
    add-int/lit8 v1, v1, -0x2

    goto :goto_2

    .line 249
    .end local v0           #digit:I
    :cond_7
    rem-int/lit8 v5, v3, 0xa

    if-nez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method static decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
    .locals 7
    .parameter "row"
    .parameter "counters"
    .parameter "rowOffset"
    .parameter "patterns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/UPCEANReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 323
    const/16 v1, 0x7a

    .line 324
    .local v1, bestVariance:I
    const/4 v0, -0x1

    .line 325
    .local v0, bestMatch:I
    array-length v3, p3

    .line 326
    .local v3, max:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 327
    aget-object v4, p3, v2

    .line 328
    .local v4, pattern:[I
    const/16 v6, 0xb3

    invoke-static {p1, v4, v6}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[II)I

    move-result v5

    .line 329
    .local v5, variance:I
    if-ge v5, v1, :cond_0

    .line 330
    move v1, v5

    .line 331
    move v0, v2

    .line 326
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v4           #pattern:[I
    .end local v5           #variance:I
    :cond_1
    if-ltz v0, :cond_2

    .line 335
    return v0

    .line 337
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
    .locals 1
    .parameter "row"
    .parameter "rowOffset"
    .parameter "whiteFirst"
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 260
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
    .locals 11
    .parameter "row"
    .parameter "rowOffset"
    .parameter "whiteFirst"
    .parameter "pattern"
    .parameter "counters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 279
    array-length v2, p3

    .line 280
    .local v2, patternLength:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 281
    .local v4, width:I
    move v1, p2

    .line 282
    .local v1, isWhite:Z
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result p1

    .line 283
    :goto_0
    const/4 v0, 0x0

    .line 284
    .local v0, counterPosition:I
    move v3, p1

    .line 285
    .local v3, patternStart:I
    move v5, p1

    .local v5, x:I
    :goto_1
    if-ge v5, v4, :cond_5

    .line 286
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v1

    if-eqz v8, :cond_1

    .line 287
    aget v8, p4, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, p4, v0

    .line 285
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 282
    .end local v0           #counterPosition:I
    .end local v3           #patternStart:I
    .end local v5           #x:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p1

    goto :goto_0

    .line 289
    .restart local v0       #counterPosition:I
    .restart local v3       #patternStart:I
    .restart local v5       #x:I
    :cond_1
    add-int/lit8 v8, v2, -0x1

    if-ne v0, v8, :cond_3

    .line 290
    const/16 v8, 0xb3

    invoke-static {p4, p3, v8}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[II)I

    move-result v8

    const/16 v9, 0x7a

    if-ge v8, v9, :cond_2

    .line 291
    new-array v8, v10, [I

    aput v3, v8, v7

    aput v5, v8, v6

    return-object v8

    .line 293
    :cond_2
    aget v8, p4, v7

    aget v9, p4, v6

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    .line 294
    add-int/lit8 v8, v2, -0x2

    invoke-static {p4, v10, p4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    add-int/lit8 v8, v2, -0x2

    aput v7, p4, v8

    .line 296
    add-int/lit8 v8, v2, -0x1

    aput v7, p4, v8

    .line 297
    add-int/lit8 v0, v0, -0x1

    .line 301
    :goto_3
    aput v6, p4, v0

    .line 302
    if-nez v1, :cond_4

    move v1, v6

    :goto_4
    goto :goto_2

    .line 299
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v1, v7

    .line 302
    goto :goto_4

    .line 305
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method static findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 8
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, foundStart:Z
    const/4 v5, 0x0

    .line 107
    .local v5, startRange:[I
    const/4 v2, 0x0

    .line 108
    .local v2, nextStart:I
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v6, v6

    new-array v0, v6, [I

    .line 109
    .local v0, counters:[I
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 110
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v6, v6

    invoke-static {v0, v7, v6, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 111
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p0, v2, v7, v6, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v5

    .line 112
    aget v4, v5, v7

    .line 113
    .local v4, start:I
    const/4 v6, 0x1

    aget v2, v5, v6

    .line 117
    sub-int v6, v2, v4

    sub-int v3, v4, v6

    .line 118
    .local v3, quietStart:I
    if-ltz v3, :cond_0

    .line 119
    invoke-virtual {p0, v3, v4, v7}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v1

    goto :goto_0

    .line 122
    .end local v3           #quietStart:I
    .end local v4           #start:I
    :cond_1
    return-object v5
.end method


# virtual methods
.method checkChecksum(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2
    .parameter "row"
    .parameter "endStart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected abstract decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 1
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 128
    .local p3, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .locals 22
    .parameter "rowNumber"
    .parameter "row"
    .parameter "startGuardRange"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
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
    .line 142
    .local p4, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-nez p4, :cond_4

    const/4 v14, 0x0

    .line 145
    .local v14, resultPointCallback:Lcom/google/zxing/ResultPointCallback;
    :goto_0
    if-eqz v14, :cond_0

    .line 146
    new-instance v17, Lcom/google/zxing/ResultPoint;

    const/16 v18, 0x0

    aget v18, p3, v18

    const/16 v19, 0x1

    aget v19, p3, v19

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 151
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 152
    .local v13, result:Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v13}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v8

    .line 155
    .local v8, endStart:I
    if-eqz v14, :cond_1

    .line 156
    new-instance v17, Lcom/google/zxing/ResultPoint;

    int-to-float v0, v8

    move/from16 v18, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 161
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8}, Lcom/google/zxing/oned/UPCEANReader;->decodeEnd(Lcom/google/zxing/common/BitArray;I)[I

    move-result-object v7

    .line 163
    .local v7, endRange:[I
    if-eqz v14, :cond_2

    .line 164
    new-instance v17, Lcom/google/zxing/ResultPoint;

    const/16 v18, 0x0

    aget v18, v7, v18

    const/16 v19, 0x1

    aget v19, v7, v19

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 172
    :cond_2
    const/16 v17, 0x1

    aget v6, v7, v17

    .line 173
    .local v6, end:I
    const/16 v17, 0x0

    aget v17, v7, v17

    sub-int v17, v6, v17

    add-int v12, v6, v17

    .line 174
    .local v12, quietEnd:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_3

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v6, v12, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v17

    if-nez v17, :cond_5

    .line 175
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 142
    .end local v6           #end:I
    .end local v7           #endRange:[I
    .end local v8           #endStart:I
    .end local v12           #quietEnd:I
    .end local v13           #result:Ljava/lang/StringBuilder;
    .end local v14           #resultPointCallback:Lcom/google/zxing/ResultPointCallback;
    :cond_4
    sget-object v17, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/ResultPointCallback;

    move-object/from16 v14, v17

    goto/16 :goto_0

    .line 178
    .restart local v6       #end:I
    .restart local v7       #endRange:[I
    .restart local v8       #endStart:I
    .restart local v12       #quietEnd:I
    .restart local v13       #result:Ljava/lang/StringBuilder;
    .restart local v14       #resultPointCallback:Lcom/google/zxing/ResultPointCallback;
    :cond_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 179
    .local v15, resultString:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 180
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v17

    throw v17

    .line 183
    :cond_6
    const/16 v17, 0x1

    aget v17, p3, v17

    const/16 v18, 0x0

    aget v18, p3, v18

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    div-float v11, v17, v18

    .line 184
    .local v11, left:F
    const/16 v17, 0x1

    aget v17, v7, v17

    const/16 v18, 0x0

    aget v18, v7, v18

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    div-float v16, v17, v18

    .line 185
    .local v16, right:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/UPCEANReader;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v10

    .line 186
    .local v10, format:Lcom/google/zxing/BarcodeFormat;
    new-instance v5, Lcom/google/zxing/Result;

    const/16 v17, 0x0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v15, v0, v1, v10}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 194
    .local v5, decodeResult:Lcom/google/zxing/Result;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v18, v7, v18

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;

    move-result-object v9

    .line 195
    .local v9, extensionResult:Lcom/google/zxing/Result;
    sget-object v17, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v9}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v9}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 197
    invoke-virtual {v9}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v9           #extensionResult:Lcom/google/zxing/Result;
    :goto_1
    sget-object v17, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v17

    if-eq v10, v0, :cond_7

    sget-object v17, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v17

    if-ne v10, v0, :cond_8

    .line 203
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, countryID:Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 205
    sget-object v17, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v4}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 209
    .end local v4           #countryID:Ljava/lang/String;
    :cond_8
    return-object v5

    .line 198
    :catch_0
    move-exception v17

    goto :goto_1
.end method

.method abstract getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.end method
