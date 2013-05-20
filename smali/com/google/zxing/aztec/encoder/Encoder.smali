.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final CHAR_MAP:[[I = null

.field public static final DEFAULT_EC_PERCENT:I = 0x21

.field private static final LATCH_TABLE:[[I = null

.field private static final NB_BITS:[I = null

.field private static final NB_BITS_COMPACT:[I = null

.field private static final SHIFT_TABLE:[[I = null

.field private static final TABLE_BINARY:I = 0x5

.field private static final TABLE_DIGIT:I = 0x2

.field private static final TABLE_LOWER:I = 0x1

.field private static final TABLE_MIXED:I = 0x3

.field private static final TABLE_PUNCT:I = 0x4

.field private static final TABLE_UPPER:I

.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 42
    const/4 v8, 0x5

    const/16 v9, 0x100

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    .line 43
    const/4 v8, 0x6

    const/4 v9, 0x6

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    .line 44
    const/4 v8, 0x6

    const/4 v9, 0x6

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    .line 49
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v11

    const/16 v9, 0x20

    aput v12, v8, v9

    .line 50
    const/16 v1, 0x41

    .local v1, c:I
    :goto_0
    const/16 v8, 0x5a

    if-gt v1, v8, :cond_0

    .line 51
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v11

    add-int/lit8 v9, v1, -0x41

    add-int/lit8 v9, v9, 0x2

    aput v9, v8, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v12

    const/16 v9, 0x20

    aput v12, v8, v9

    .line 54
    const/16 v1, 0x61

    :goto_1
    const/16 v8, 0x7a

    if-gt v1, v8, :cond_1

    .line 55
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v12

    add-int/lit8 v9, v1, -0x61

    add-int/lit8 v9, v9, 0x2

    aput v9, v8, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    :cond_1
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x20

    aput v12, v8, v9

    .line 58
    const/16 v1, 0x30

    :goto_2
    const/16 v8, 0x39

    if-gt v1, v8, :cond_2

    .line 59
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    add-int/lit8 v9, v1, -0x30

    add-int/lit8 v9, v9, 0x2

    aput v9, v8, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 61
    :cond_2
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x2c

    const/16 v10, 0xc

    aput v10, v8, v9

    .line 62
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x2e

    const/16 v10, 0xd

    aput v10, v8, v9

    .line 63
    const/16 v8, 0x1c

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 67
    .local v5, mixedTable:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v8, v5

    if-ge v2, v8, :cond_3

    .line 68
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v14

    aget v9, v5, v2

    aput v2, v8, v9

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 70
    :cond_3
    const/16 v8, 0x1f

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    .line 74
    .local v6, punctTable:[I
    const/4 v2, 0x0

    :goto_4
    array-length v8, v6

    if-ge v2, v8, :cond_5

    .line 75
    aget v8, v6, v2

    if-lez v8, :cond_4

    .line 76
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v8, v8, v15

    aget v9, v6, v2

    aput v2, v8, v9

    .line 74
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 79
    :cond_5
    sget-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    .local v0, arr$:[[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_5
    if-ge v3, v4, :cond_6

    aget-object v7, v0, v3

    .line 80
    .local v7, table:[I
    const/4 v8, -0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 82
    .end local v7           #table:[I
    :cond_6
    sget-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_7

    aget-object v7, v0, v3

    .line 83
    .restart local v7       #table:[I
    const/4 v8, -0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 85
    .end local v7           #table:[I
    :cond_7
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v11

    aput v11, v8, v15

    .line 86
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v11

    const/16 v9, 0x1c

    aput v9, v8, v12

    .line 87
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v11

    const/16 v9, 0x1d

    aput v9, v8, v14

    .line 88
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v11

    const/16 v9, 0x1e

    aput v9, v8, v13

    .line 89
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v11

    const/4 v9, 0x5

    const/16 v10, 0x1f

    aput v10, v8, v9

    .line 90
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v12

    aput v11, v8, v15

    .line 91
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v12

    const/16 v9, 0x1c

    aput v9, v8, v11

    .line 92
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v12

    const/16 v9, 0x1d

    aput v9, v8, v14

    .line 93
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v12

    const/16 v9, 0x1e

    aput v9, v8, v13

    .line 94
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v12

    const/4 v9, 0x5

    const/16 v10, 0x1f

    aput v10, v8, v9

    .line 95
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v14

    aput v11, v8, v15

    .line 96
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v14

    const/16 v9, 0x1c

    aput v9, v8, v12

    .line 97
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v14

    const/16 v9, 0x1d

    aput v9, v8, v11

    .line 98
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v14

    const/16 v9, 0x1e

    aput v9, v8, v15

    .line 99
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v14

    const/4 v9, 0x5

    const/16 v10, 0x1f

    aput v10, v8, v9

    .line 100
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v15

    const/16 v9, 0x1f

    aput v9, v8, v11

    .line 101
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v13

    aput v11, v8, v15

    .line 102
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x1e

    aput v9, v8, v11

    .line 103
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x1f

    aput v9, v8, v11

    .line 104
    const/4 v8, 0x5

    new-array v8, v8, [I

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    .line 105
    const/4 v2, 0x1

    :goto_7
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    array-length v8, v8

    if-ge v2, v8, :cond_8

    .line 106
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    mul-int/lit8 v9, v2, 0x10

    add-int/lit8 v9, v9, 0x58

    mul-int/2addr v9, v2

    aput v9, v8, v2

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 108
    :cond_8
    const/16 v8, 0x21

    new-array v8, v8, [I

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    .line 109
    const/4 v2, 0x1

    :goto_8
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    array-length v8, v8

    if-ge v2, v8, :cond_9

    .line 110
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    mul-int/lit8 v9, v2, 0x10

    add-int/lit8 v9, v9, 0x70

    mul-int/2addr v9, v2

    aput v9, v8, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 114
    :cond_9
    const/16 v8, 0x21

    new-array v8, v8, [I

    fill-array-data v8, :array_2

    sput-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void

    .line 63
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
    .end array-data

    .line 70
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .locals 7
    .parameter "stuffedBits"
    .parameter "wordSize"
    .parameter "totalWords"

    .prologue
    .line 361
    new-array v2, p2, [I

    .line 364
    .local v2, message:[I
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    div-int v3, v5, p1

    .local v3, n:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 365
    const/4 v4, 0x0

    .line 366
    .local v4, value:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 367
    mul-int v5, v0, p1

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    sub-int v6, p1, v1

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    :goto_2
    or-int/2addr v4, v5

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    .line 369
    :cond_1
    aput v4, v2, v0

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v1           #j:I
    .end local v4           #value:I
    :cond_2
    return-object v2
.end method

.method static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .locals 4
    .parameter "matrix"
    .parameter "center"
    .parameter "size"

    .prologue
    .line 278
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 279
    sub-int v1, p1, v0

    .local v1, j:I
    :goto_1
    add-int v2, p1, v0

    if-gt v1, v2, :cond_0

    .line 280
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 281
    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 282
    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 283
    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 286
    .end local v1           #j:I
    :cond_1
    sub-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 287
    sub-int v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 288
    sub-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 289
    add-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 290
    add-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 291
    add-int v2, p1, p2

    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 292
    return-void
.end method

.method static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .locals 4
    .parameter "matrix"
    .parameter "compact"
    .parameter "matrixSize"
    .parameter "modeMessage"

    .prologue
    .line 309
    if-eqz p1, :cond_4

    .line 310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_9

    .line 311
    invoke-virtual {p3, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 314
    :cond_0
    add-int/lit8 v1, v0, 0x7

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 317
    :cond_1
    rsub-int/lit8 v1, v0, 0x14

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v1, v0

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 320
    :cond_2
    rsub-int/lit8 v1, v0, 0x1b

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x5

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x3

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 310
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    .line 326
    invoke-virtual {p3, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 327
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x5

    add-int/2addr v1, v0

    div-int/lit8 v2, v0, 0x5

    add-int/2addr v1, v2

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 329
    :cond_5
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 330
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x5

    add-int/2addr v2, v0

    div-int/lit8 v3, v0, 0x5

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 332
    :cond_6
    rsub-int/lit8 v1, v0, 0x1d

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 333
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x5

    add-int/2addr v1, v0

    div-int/lit8 v2, v0, 0x5

    add-int/2addr v1, v2

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 335
    :cond_7
    rsub-int/lit8 v1, v0, 0x27

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 336
    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x7

    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, -0x5

    add-int/2addr v2, v0

    div-int/lit8 v3, v0, 0x5

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 325
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 340
    :cond_9
    return-void
.end method

.method public static encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 1
    .parameter "data"

    .prologue
    .line 129
    const/16 v0, 0x21

    invoke-static {p0, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BI)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 39
    .parameter "data"
    .parameter "minECCPercent"

    .prologue
    .line 143
    invoke-static/range {p0 .. p0}, Lcom/google/zxing/aztec/encoder/Encoder;->highLevelEncode([B)Lcom/google/zxing/common/BitArray;

    move-result-object v7

    .line 146
    .local v7, bits:Lcom/google/zxing/common/BitArray;
    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v36

    mul-int v36, v36, p1

    div-int/lit8 v36, v36, 0x64

    add-int/lit8 v11, v36, 0xb

    .line 147
    .local v11, eccBits:I
    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v36

    add-int v32, v36, v11

    .line 149
    .local v32, totalSizeBits:I
    const/16 v35, 0x0

    .line 150
    .local v35, wordSize:I
    const/16 v34, 0x0

    .line 151
    .local v34, totalSymbolBits:I
    const/16 v31, 0x0

    .line 152
    .local v31, stuffedBits:Lcom/google/zxing/common/BitArray;
    const/16 v16, 0x1

    .local v16, layers:I
    :goto_0
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_1

    .line 153
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    aget v36, v36, v16

    move/from16 v0, v36

    move/from16 v1, v32

    if-lt v0, v1, :cond_4

    .line 154
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v36, v36, v16

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_0

    .line 155
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v35, v36, v16

    .line 156
    move/from16 v0, v35

    invoke-static {v7, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v31

    .line 158
    :cond_0
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    aget v34, v36, v16

    .line 159
    invoke-virtual/range {v31 .. v31}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v36

    add-int v36, v36, v11

    sget-object v37, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    aget v37, v37, v16

    move/from16 v0, v36

    move/from16 v1, v37

    if-gt v0, v1, :cond_4

    .line 164
    :cond_1
    const/4 v10, 0x1

    .line 165
    .local v10, compact:Z
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS_COMPACT:[I

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    .line 166
    const/4 v10, 0x0

    .line 167
    const/16 v16, 0x1

    :goto_1
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_3

    .line 168
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    aget v36, v36, v16

    move/from16 v0, v36

    move/from16 v1, v32

    if-lt v0, v1, :cond_5

    .line 169
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v36, v36, v16

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_2

    .line 170
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v35, v36, v16

    .line 171
    move/from16 v0, v35

    invoke-static {v7, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v31

    .line 173
    :cond_2
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    aget v34, v36, v16

    .line 174
    invoke-virtual/range {v31 .. v31}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v36

    add-int v36, v36, v11

    sget-object v37, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    aget v37, v37, v16

    move/from16 v0, v36

    move/from16 v1, v37

    if-gt v0, v1, :cond_5

    .line 180
    :cond_3
    sget-object v36, Lcom/google/zxing/aztec/encoder/Encoder;->NB_BITS:[I

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    .line 181
    new-instance v36, Ljava/lang/IllegalArgumentException;

    const-string v37, "Data too large for an Aztec code"

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 152
    .end local v10           #compact:Z
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 167
    .restart local v10       #compact:Z
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 185
    :cond_6
    invoke-virtual/range {v31 .. v31}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v36

    add-int v36, v36, v35

    add-int/lit8 v36, v36, -0x1

    div-int v21, v36, v35

    .line 186
    .local v21, messageSizeInWords:I
    mul-int v36, v21, v35

    invoke-virtual/range {v31 .. v31}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v37

    sub-int v12, v36, v37

    .local v12, i:I
    :goto_2
    if-lez v12, :cond_7

    .line 187
    const/16 v36, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 186
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 191
    :cond_7
    new-instance v29, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static/range {v35 .. v35}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v36

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 192
    .local v29, rs:Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    div-int v33, v34, v35

    .line 193
    .local v33, totalSizeInFullWords:I
    move-object/from16 v0, v31

    move/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v23

    .line 194
    .local v23, messageWords:[I
    sub-int v36, v33, v21

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 197
    rem-int v30, v34, v35

    .line 198
    .local v30, startPad:I
    new-instance v20, Lcom/google/zxing/common/BitArray;

    invoke-direct/range {v20 .. v20}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 199
    .local v20, messageBits:Lcom/google/zxing/common/BitArray;
    const/16 v36, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v36

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 200
    move-object/from16 v4, v23

    .local v4, arr$:[I
    array-length v0, v4

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_8

    aget v22, v4, v13

    .line 201
    .local v22, messageWord:I
    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 200
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 205
    .end local v22           #messageWord:I
    :cond_8
    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v10, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v24

    .line 208
    .local v24, modeMessage:Lcom/google/zxing/common/BitArray;
    if-eqz v10, :cond_9

    mul-int/lit8 v36, v16, 0x4

    add-int/lit8 v6, v36, 0xb

    .line 209
    .local v6, baseMatrixSize:I
    :goto_4
    new-array v3, v6, [I

    .line 211
    .local v3, alignmentMap:[I
    if-eqz v10, :cond_a

    .line 213
    move/from16 v19, v6

    .line 214
    .local v19, matrixSize:I
    const/4 v12, 0x0

    :goto_5
    array-length v0, v3

    move/from16 v36, v0

    move/from16 v0, v36

    if-ge v12, v0, :cond_b

    .line 215
    aput v12, v3, v12

    .line 214
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 208
    .end local v3           #alignmentMap:[I
    .end local v6           #baseMatrixSize:I
    .end local v19           #matrixSize:I
    :cond_9
    mul-int/lit8 v36, v16, 0x4

    add-int/lit8 v6, v36, 0xe

    goto :goto_4

    .line 218
    .restart local v3       #alignmentMap:[I
    .restart local v6       #baseMatrixSize:I
    :cond_a
    add-int/lit8 v36, v6, 0x1

    div-int/lit8 v37, v6, 0x2

    add-int/lit8 v37, v37, -0x1

    div-int/lit8 v37, v37, 0xf

    mul-int/lit8 v37, v37, 0x2

    add-int v19, v36, v37

    .line 219
    .restart local v19       #matrixSize:I
    div-int/lit8 v26, v6, 0x2

    .line 220
    .local v26, origCenter:I
    div-int/lit8 v8, v19, 0x2

    .line 221
    .local v8, center:I
    const/4 v12, 0x0

    :goto_6
    move/from16 v0, v26

    if-ge v12, v0, :cond_b

    .line 222
    div-int/lit8 v36, v12, 0xf

    add-int v25, v12, v36

    .line 223
    .local v25, newOffset:I
    sub-int v36, v26, v12

    add-int/lit8 v36, v36, -0x1

    sub-int v37, v8, v25

    add-int/lit8 v37, v37, -0x1

    aput v37, v3, v36

    .line 224
    add-int v36, v26, v12

    add-int v37, v8, v25

    add-int/lit8 v37, v37, 0x1

    aput v37, v3, v36

    .line 221
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 227
    .end local v8           #center:I
    .end local v25           #newOffset:I
    .end local v26           #origCenter:I
    :cond_b
    new-instance v18, Lcom/google/zxing/common/BitMatrix;

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 230
    .local v18, matrix:Lcom/google/zxing/common/BitMatrix;
    const/4 v12, 0x0

    const/16 v27, 0x0

    .local v27, rowOffset:I
    :goto_7
    move/from16 v0, v16

    if-ge v12, v0, :cond_13

    .line 231
    if-eqz v10, :cond_10

    sub-int v36, v16, v12

    mul-int/lit8 v36, v36, 0x4

    add-int/lit8 v28, v36, 0x9

    .line 232
    .local v28, rowSize:I
    :goto_8
    const/4 v14, 0x0

    .local v14, j:I
    :goto_9
    move/from16 v0, v28

    if-ge v14, v0, :cond_12

    .line 233
    mul-int/lit8 v9, v14, 0x2

    .line 234
    .local v9, columnOffset:I
    const/4 v15, 0x0

    .local v15, k:I
    :goto_a
    const/16 v36, 0x2

    move/from16 v0, v36

    if-ge v15, v0, :cond_11

    .line 235
    add-int v36, v27, v9

    add-int v36, v36, v15

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 236
    mul-int/lit8 v36, v12, 0x2

    add-int v36, v36, v15

    aget v36, v3, v36

    mul-int/lit8 v37, v12, 0x2

    add-int v37, v37, v14

    aget v37, v3, v37

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 238
    :cond_c
    mul-int/lit8 v36, v28, 0x2

    add-int v36, v36, v27

    add-int v36, v36, v9

    add-int v36, v36, v15

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 239
    mul-int/lit8 v36, v12, 0x2

    add-int v36, v36, v14

    aget v36, v3, v36

    add-int/lit8 v37, v6, -0x1

    mul-int/lit8 v38, v12, 0x2

    sub-int v37, v37, v38

    sub-int v37, v37, v15

    aget v37, v3, v37

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 241
    :cond_d
    mul-int/lit8 v36, v28, 0x4

    add-int v36, v36, v27

    add-int v36, v36, v9

    add-int v36, v36, v15

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v36

    if-eqz v36, :cond_e

    .line 242
    add-int/lit8 v36, v6, -0x1

    mul-int/lit8 v37, v12, 0x2

    sub-int v36, v36, v37

    sub-int v36, v36, v15

    aget v36, v3, v36

    add-int/lit8 v37, v6, -0x1

    mul-int/lit8 v38, v12, 0x2

    sub-int v37, v37, v38

    sub-int v37, v37, v14

    aget v37, v3, v37

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 244
    :cond_e
    mul-int/lit8 v36, v28, 0x6

    add-int v36, v36, v27

    add-int v36, v36, v9

    add-int v36, v36, v15

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v36

    if-eqz v36, :cond_f

    .line 245
    add-int/lit8 v36, v6, -0x1

    mul-int/lit8 v37, v12, 0x2

    sub-int v36, v36, v37

    sub-int v36, v36, v14

    aget v36, v3, v36

    mul-int/lit8 v37, v12, 0x2

    add-int v37, v37, v15

    aget v37, v3, v37

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 234
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a

    .line 231
    .end local v9           #columnOffset:I
    .end local v14           #j:I
    .end local v15           #k:I
    .end local v28           #rowSize:I
    :cond_10
    sub-int v36, v16, v12

    mul-int/lit8 v36, v36, 0x4

    add-int/lit8 v28, v36, 0xc

    goto/16 :goto_8

    .line 232
    .restart local v9       #columnOffset:I
    .restart local v14       #j:I
    .restart local v15       #k:I
    .restart local v28       #rowSize:I
    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    .line 249
    .end local v9           #columnOffset:I
    .end local v15           #k:I
    :cond_12
    mul-int/lit8 v36, v28, 0x8

    add-int v27, v27, v36

    .line 230
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 251
    .end local v14           #j:I
    .end local v28           #rowSize:I
    :cond_13
    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v24

    invoke-static {v0, v10, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    .line 254
    if-eqz v10, :cond_15

    .line 255
    div-int/lit8 v36, v19, 0x2

    const/16 v37, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 268
    :cond_14
    new-instance v5, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v5}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    .line 269
    .local v5, aztec:Lcom/google/zxing/aztec/encoder/AztecCode;
    invoke-virtual {v5, v10}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    .line 270
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    .line 271
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    .line 272
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    .line 273
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    .line 274
    return-object v5

    .line 257
    .end local v5           #aztec:Lcom/google/zxing/aztec/encoder/AztecCode;
    :cond_15
    div-int/lit8 v36, v19, 0x2

    const/16 v37, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 258
    const/4 v12, 0x0

    const/4 v14, 0x0

    .restart local v14       #j:I
    :goto_b
    div-int/lit8 v36, v6, 0x2

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    if-ge v12, v0, :cond_14

    .line 259
    div-int/lit8 v36, v19, 0x2

    and-int/lit8 v15, v36, 0x1

    .restart local v15       #k:I
    :goto_c
    move/from16 v0, v19

    if-ge v15, v0, :cond_16

    .line 260
    div-int/lit8 v36, v19, 0x2

    sub-int v36, v36, v14

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 261
    div-int/lit8 v36, v19, 0x2

    add-int v36, v36, v14

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 262
    div-int/lit8 v36, v19, 0x2

    sub-int v36, v36, v14

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v15, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 263
    div-int/lit8 v36, v19, 0x2

    add-int v36, v36, v14

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v15, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 259
    add-int/lit8 v15, v15, 0x2

    goto :goto_c

    .line 258
    :cond_16
    add-int/lit8 v12, v12, 0xf

    add-int/lit8 v14, v14, 0x10

    goto :goto_b
.end method

.method static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .locals 13
    .parameter "stuffedBits"
    .parameter "totalSymbolBits"
    .parameter "wordSize"

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    add-int/2addr v11, p2

    add-int/lit8 v11, v11, -0x1

    div-int v5, v11, p2

    .line 344
    .local v5, messageSizeInWords:I
    mul-int v11, v5, p2

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v12

    sub-int v1, v11, v12

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_0

    .line 345
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 344
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 347
    :cond_0
    new-instance v8, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 348
    .local v8, rs:Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    div-int v10, p1, p2

    .line 349
    .local v10, totalSizeInFullWords:I
    invoke-static {p0, p2, v10}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v7

    .line 350
    .local v7, messageWords:[I
    sub-int v11, v10, v5

    invoke-virtual {v8, v7, v11}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 351
    rem-int v9, p1, p2

    .line 352
    .local v9, startPad:I
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 353
    .local v4, messageBits:Lcom/google/zxing/common/BitArray;
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 354
    move-object v0, v7

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget v6, v0, v2

    .line 355
    .local v6, messageWord:I
    invoke-virtual {v4, v6, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 357
    .end local v6           #messageWord:I
    :cond_1
    return-object v4
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .locals 4
    .parameter "compact"
    .parameter "layers"
    .parameter "messageSizeInWords"

    .prologue
    const/4 v3, 0x4

    .line 295
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 296
    .local v0, modeMessage:Lcom/google/zxing/common/BitArray;
    if-eqz p0, :cond_0

    .line 297
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 298
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 299
    const/16 v1, 0x1c

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .line 301
    :cond_0
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 302
    add-int/lit8 v1, p2, -0x1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 303
    const/16 v1, 0x28

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_0
.end method

.method static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .locals 1
    .parameter "wordSize"

    .prologue
    .line 375
    packed-switch p0, :pswitch_data_0

    .line 387
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 377
    :pswitch_1
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 379
    :pswitch_2
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 381
    :pswitch_3
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 383
    :pswitch_4
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 385
    :pswitch_5
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static highLevelEncode([B)Lcom/google/zxing/common/BitArray;
    .locals 20
    .parameter "data"

    .prologue
    .line 434
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 435
    .local v3, bits:Lcom/google/zxing/common/BitArray;
    const/4 v13, 0x0

    .line 436
    .local v13, mode:I
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v7, v0, [I

    .line 437
    .local v7, idx:[I
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v8, v0, [I

    .line 438
    .local v8, idxnext:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_1d

    .line 439
    aget-byte v17, p0, v6

    move/from16 v0, v17

    and-int/lit16 v4, v0, 0xff

    .line 440
    .local v4, c:I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v6, v0, :cond_1

    add-int/lit8 v17, v6, 0x1

    aget-byte v17, p0, v17

    move/from16 v0, v17

    and-int/lit16 v14, v0, 0xff

    .line 441
    .local v14, next:I
    :goto_1
    const/4 v15, 0x0

    .line 443
    .local v15, punctWord:I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v4, v0, :cond_2

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v14, v0, :cond_2

    .line 444
    const/4 v15, 0x2

    .line 452
    :cond_0
    :goto_2
    if-lez v15, :cond_7

    .line 453
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v13, v0, :cond_5

    .line 454
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v3, v0, v15}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 455
    add-int/lit8 v6, v6, 0x1

    .line 438
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 440
    .end local v14           #next:I
    .end local v15           #punctWord:I
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 445
    .restart local v14       #next:I
    .restart local v15       #punctWord:I
    :cond_2
    const/16 v17, 0x2e

    move/from16 v0, v17

    if-ne v4, v0, :cond_3

    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    .line 446
    const/4 v15, 0x3

    goto :goto_2

    .line 447
    :cond_3
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    .line 448
    const/4 v15, 0x4

    goto :goto_2

    .line 449
    :cond_4
    const/16 v17, 0x3a

    move/from16 v0, v17

    if-ne v4, v0, :cond_0

    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v14, v0, :cond_0

    .line 450
    const/4 v15, 0x5

    goto :goto_2

    .line 457
    :cond_5
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x4

    aget v17, v17, v18

    if-ltz v17, :cond_6

    .line 458
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x4

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 459
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v3, v0, v15}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 460
    add-int/lit8 v6, v6, 0x1

    .line 461
    goto :goto_3

    .line 462
    :cond_6
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x4

    aget v17, v17, v18

    if-ltz v17, :cond_7

    .line 463
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x4

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 464
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-static {v3, v0, v15}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 465
    const/4 v13, 0x4

    .line 466
    add-int/lit8 v6, v6, 0x1

    .line 467
    goto :goto_3

    .line 471
    :cond_7
    const/4 v5, -0x1

    .line 472
    .local v5, firstMatch:I
    const/16 v16, -0x1

    .line 473
    .local v16, shiftMode:I
    const/4 v11, -0x1

    .line 475
    .local v11, latchMode:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_4
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v9, v0, :cond_c

    .line 476
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v17, v17, v9

    aget v17, v17, v4

    aput v17, v7, v9

    .line 477
    aget v17, v7, v9

    if-lez v17, :cond_8

    if-gez v5, :cond_8

    .line 478
    move v5, v9

    .line 480
    :cond_8
    if-gez v16, :cond_9

    aget v17, v7, v9

    if-lez v17, :cond_9

    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    aget v17, v17, v9

    if-ltz v17, :cond_9

    .line 481
    move/from16 v16, v9

    .line 483
    :cond_9
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v17, v17, v9

    aget v17, v17, v14

    aput v17, v8, v9

    .line 484
    if-gez v11, :cond_b

    aget v17, v7, v9

    if-lez v17, :cond_b

    if-eqz v14, :cond_a

    aget v17, v8, v9

    if-lez v17, :cond_b

    :cond_a
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    aget v17, v17, v9

    if-ltz v17, :cond_b

    .line 485
    move v11, v9

    .line 475
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 488
    :cond_c
    if-gez v16, :cond_d

    if-gez v11, :cond_d

    .line 489
    const/4 v9, 0x0

    :goto_5
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v9, v0, :cond_d

    .line 490
    aget v17, v7, v9

    if-lez v17, :cond_e

    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    aget v17, v17, v9

    if-ltz v17, :cond_e

    .line 491
    move v11, v9

    .line 496
    :cond_d
    aget v17, v7, v13

    if-lez v17, :cond_f

    .line 498
    aget v17, v7, v13

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    goto/16 :goto_3

    .line 489
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 500
    :cond_f
    if-ltz v11, :cond_10

    .line 502
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    aget v17, v17, v11

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 503
    aget v17, v7, v11

    move/from16 v0, v17

    invoke-static {v3, v11, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 504
    move v13, v11

    goto/16 :goto_3

    .line 505
    :cond_10
    if-ltz v16, :cond_11

    .line 507
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    aget v17, v17, v16

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 508
    aget v17, v7, v16

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    goto/16 :goto_3

    .line 510
    :cond_11
    if-ltz v5, :cond_13

    .line 512
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v13, v0, :cond_12

    .line 513
    const/16 v17, 0x4

    sget-object v18, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    const/16 v19, 0x4

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 514
    const/4 v13, 0x0

    .line 515
    add-int/lit8 v6, v6, -0x1

    .line 516
    goto/16 :goto_3

    .line 517
    :cond_12
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_13

    .line 518
    const/16 v17, 0x2

    sget-object v18, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    const/16 v19, 0x2

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 519
    const/4 v13, 0x0

    .line 520
    add-int/lit8 v6, v6, -0x1

    .line 521
    goto/16 :goto_3

    .line 528
    :cond_13
    add-int/lit8 v10, v6, 0x1

    .local v10, k:I
    const/4 v12, 0x0

    .local v12, lookahead:I
    :goto_6
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_17

    .line 529
    aget-byte v17, p0, v10

    move/from16 v0, v17

    and-int/lit16 v14, v0, 0xff

    .line 530
    const/4 v2, 0x1

    .line 531
    .local v2, binary:Z
    const/4 v9, 0x0

    :goto_7
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ge v9, v0, :cond_14

    .line 532
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->CHAR_MAP:[[I

    aget-object v17, v17, v9

    aget v17, v17, v14

    if-lez v17, :cond_15

    .line 533
    const/4 v2, 0x0

    .line 537
    :cond_14
    if-eqz v2, :cond_16

    .line 538
    const/4 v12, 0x0

    .line 528
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 531
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 541
    :cond_16
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v12, v0, :cond_1a

    .line 542
    sub-int/2addr v10, v12

    .line 548
    .end local v2           #binary:Z
    :cond_17
    sub-int/2addr v10, v6

    .line 550
    packed-switch v13, :pswitch_data_0

    .line 567
    :goto_9
    const/16 v17, 0x20

    move/from16 v0, v17

    if-lt v10, v0, :cond_18

    const/16 v17, 0x3f

    move/from16 v0, v17

    if-ge v10, v0, :cond_18

    .line 568
    const/16 v10, 0x1f

    .line 570
    :cond_18
    const/16 v17, 0x21e

    move/from16 v0, v17

    if-le v10, v0, :cond_19

    .line 571
    const/16 v10, 0x21e

    .line 573
    :cond_19
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v10, v0, :cond_1b

    .line 574
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v3, v10, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 578
    :goto_a
    if-lez v10, :cond_1c

    .line 579
    aget-byte v17, p0, v6

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 578
    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 545
    .restart local v2       #binary:Z
    :cond_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 554
    .end local v2           #binary:Z
    :pswitch_0
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    goto :goto_9

    .line 557
    :pswitch_1
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 558
    const/4 v13, 0x0

    .line 559
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    goto :goto_9

    .line 562
    :pswitch_2
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->LATCH_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    .line 563
    const/4 v13, 0x0

    .line 564
    sget-object v17, Lcom/google/zxing/aztec/encoder/Encoder;->SHIFT_TABLE:[[I

    aget-object v17, v17, v13

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v3, v13, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->outputWord(Lcom/google/zxing/common/BitArray;II)V

    goto :goto_9

    .line 576
    :cond_1b
    add-int/lit8 v17, v10, -0x1f

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_a

    .line 581
    :cond_1c
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_3

    .line 585
    .end local v4           #c:I
    .end local v5           #firstMatch:I
    .end local v9           #j:I
    .end local v10           #k:I
    .end local v11           #latchMode:I
    .end local v12           #lookahead:I
    .end local v14           #next:I
    .end local v15           #punctWord:I
    .end local v16           #shiftMode:I
    :cond_1d
    return-object v3

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static outputWord(Lcom/google/zxing/common/BitArray;II)V
    .locals 2
    .parameter "bits"
    .parameter "mode"
    .parameter "value"

    .prologue
    const/4 v1, 0x5

    .line 589
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 590
    const/4 v0, 0x4

    invoke-virtual {p0, p2, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 596
    :goto_0
    return-void

    .line 591
    :cond_0
    if-ge p1, v1, :cond_1

    .line 592
    invoke-virtual {p0, p2, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_0

    .line 594
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, p2, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_0
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .locals 9
    .parameter "bits"
    .parameter "wordSize"

    .prologue
    const/4 v7, 0x1

    .line 392
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 395
    .local v4, out:Lcom/google/zxing/common/BitArray;
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 396
    .local v3, n:I
    shl-int v8, v7, p1

    add-int/lit8 v2, v8, -0x2

    .line 397
    .local v2, mask:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_5

    .line 398
    const/4 v6, 0x0

    .line 399
    .local v6, word:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 400
    add-int v8, v0, v1

    if-ge v8, v3, :cond_0

    add-int v8, v0, v1

    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 401
    :cond_0
    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v1

    shl-int v8, v7, v8

    or-int/2addr v6, v8

    .line 399
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 404
    :cond_2
    and-int v8, v6, v2

    if-ne v8, v2, :cond_3

    .line 405
    and-int v8, v6, v2

    invoke-virtual {v4, v8, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 406
    add-int/lit8 v0, v0, -0x1

    .line 397
    :goto_2
    add-int/2addr v0, p1

    goto :goto_0

    .line 407
    :cond_3
    and-int v8, v6, v2

    if-nez v8, :cond_4

    .line 408
    or-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v8, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 409
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 411
    :cond_4
    invoke-virtual {v4, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2

    .line 416
    .end local v1           #j:I
    .end local v6           #word:I
    :cond_5
    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 417
    rem-int v5, v3, p1

    .line 418
    .local v5, remainder:I
    if-eqz v5, :cond_9

    .line 419
    const/4 v1, 0x1

    .line 420
    .restart local v1       #j:I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_7

    .line 421
    add-int/lit8 v8, v3, -0x1

    sub-int/2addr v8, v0

    invoke-virtual {v4, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 422
    const/4 v1, 0x0

    .line 420
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 425
    :cond_7
    move v0, v5

    :goto_4
    add-int/lit8 v8, p1, -0x1

    if-ge v0, v8, :cond_8

    .line 426
    invoke-virtual {v4, v7}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 428
    :cond_8
    if-nez v1, :cond_a

    :goto_5
    invoke-virtual {v4, v7}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 430
    .end local v1           #j:I
    :cond_9
    return-object v4

    .line 428
    .restart local v1       #j:I
    :cond_a
    const/4 v7, 0x0

    goto :goto_5
.end method
