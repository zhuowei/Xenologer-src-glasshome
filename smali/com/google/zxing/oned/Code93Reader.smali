.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C = null

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field private static final ASTERISK_ENCODING:I

.field private static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    .line 47
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    .line 55
    sget-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    .line 47
    :array_0
    .array-data 0x4
        0x14t 0x1t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0x28t 0x1t 0x0t 0x0t
        0x24t 0x1t 0x0t 0x0t
        0x22t 0x1t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xa8t 0x1t 0x0t 0x0t
        0xa4t 0x1t 0x0t 0x0t
        0xa2t 0x1t 0x0t 0x0t
        0x94t 0x1t 0x0t 0x0t
        0x92t 0x1t 0x0t 0x0t
        0x8at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x64t 0x1t 0x0t 0x0t
        0x62t 0x1t 0x0t 0x0t
        0x34t 0x1t 0x0t 0x0t
        0x1at 0x1t 0x0t 0x0t
        0x58t 0x1t 0x0t 0x0t
        0x4ct 0x1t 0x0t 0x0t
        0x46t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x16t 0x1t 0x0t 0x0t
        0xb4t 0x1t 0x0t 0x0t
        0xb2t 0x1t 0x0t 0x0t
        0xact 0x1t 0x0t 0x0t
        0xa6t 0x1t 0x0t 0x0t
        0x96t 0x1t 0x0t 0x0t
        0x9at 0x1t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0x66t 0x1t 0x0t 0x0t
        0x36t 0x1t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0xd4t 0x1t 0x0t 0x0t
        0xd2t 0x1t 0x0t 0x0t
        0xcat 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x76t 0x1t 0x0t 0x0t
        0xaet 0x1t 0x0t 0x0t
        0x26t 0x1t 0x0t 0x0t
        0xdat 0x1t 0x0t 0x0t
        0xd6t 0x1t 0x0t 0x0t
        0x32t 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 63
    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 257
    .local v0, length:I
    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 258
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 259
    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .locals 6
    .parameter "result"
    .parameter "checkPosition"
    .parameter "weightMax"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v2, 0x1

    .line 264
    .local v2, weight:I
    const/4 v1, 0x0

    .line 265
    .local v1, total:I
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 266
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 267
    add-int/lit8 v2, v2, 0x1

    if-le v2, p2, :cond_0

    .line 268
    const/4 v2, 0x1

    .line 265
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v5, v1, 0x2f

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_2

    .line 272
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3

    .line 274
    :cond_2
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5a

    const/16 v7, 0x41

    .line 197
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 198
    .local v4, length:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    .local v1, decoded:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_8

    .line 200
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 201
    .local v0, c:C
    const/16 v6, 0x61

    if-lt v0, v6, :cond_7

    const/16 v6, 0x64

    if-gt v0, v6, :cond_7

    .line 202
    add-int/lit8 v6, v4, -0x1

    if-lt v3, v6, :cond_0

    .line 203
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 205
    :cond_0
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 206
    .local v5, next:C
    const/4 v2, 0x0

    .line 207
    .local v2, decodedChar:C
    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 199
    .end local v2           #decodedChar:C
    .end local v5           #next:C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    .restart local v2       #decodedChar:C
    .restart local v5       #next:C
    :pswitch_0
    if-lt v5, v7, :cond_1

    if-gt v5, v8, :cond_1

    .line 211
    add-int/lit8 v6, v5, 0x20

    int-to-char v2, v6

    goto :goto_1

    .line 213
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 218
    :pswitch_1
    if-lt v5, v7, :cond_2

    if-gt v5, v8, :cond_2

    .line 219
    add-int/lit8 v6, v5, -0x40

    int-to-char v2, v6

    goto :goto_1

    .line 221
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 226
    :pswitch_2
    if-lt v5, v7, :cond_3

    const/16 v6, 0x45

    if-gt v5, v6, :cond_3

    .line 227
    add-int/lit8 v6, v5, -0x26

    int-to-char v2, v6

    goto :goto_1

    .line 228
    :cond_3
    const/16 v6, 0x46

    if-lt v5, v6, :cond_4

    const/16 v6, 0x57

    if-gt v5, v6, :cond_4

    .line 229
    add-int/lit8 v6, v5, -0xb

    int-to-char v2, v6

    goto :goto_1

    .line 231
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 236
    :pswitch_3
    if-lt v5, v7, :cond_5

    const/16 v6, 0x4f

    if-gt v5, v6, :cond_5

    .line 237
    add-int/lit8 v6, v5, -0x20

    int-to-char v2, v6

    goto :goto_1

    .line 238
    :cond_5
    if-ne v5, v8, :cond_6

    .line 239
    const/16 v2, 0x3a

    goto :goto_1

    .line 241
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 249
    .end local v2           #decodedChar:C
    .end local v5           #next:C
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 252
    .end local v0           #c:C
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 13
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 127
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 128
    .local v7, width:I
    invoke-virtual {p1, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    .line 130
    .local v5, rowOffset:I
    iget-object v10, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    invoke-static {v10, v9}, Ljava/util/Arrays;->fill([II)V

    .line 131
    iget-object v6, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 132
    .local v6, theCounters:[I
    move v4, v5

    .line 133
    .local v4, patternStart:I
    const/4 v2, 0x0

    .line 134
    .local v2, isWhite:Z
    array-length v3, v6

    .line 136
    .local v3, patternLength:I
    const/4 v0, 0x0

    .line 137
    .local v0, counterPosition:I
    move v1, v5

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 138
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v2

    if-eqz v10, :cond_0

    .line 139
    aget v10, v6, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v6, v0

    .line 137
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    add-int/lit8 v10, v3, -0x1

    if-ne v0, v10, :cond_2

    .line 142
    invoke-static {v6}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v10

    sget v11, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    if-ne v10, v11, :cond_1

    .line 143
    new-array v10, v12, [I

    aput v4, v10, v9

    aput v1, v10, v8

    return-object v10

    .line 145
    :cond_1
    aget v10, v6, v9

    aget v11, v6, v8

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 146
    add-int/lit8 v10, v3, -0x2

    invoke-static {v6, v12, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    add-int/lit8 v10, v3, -0x2

    aput v9, v6, v10

    .line 148
    add-int/lit8 v10, v3, -0x1

    aput v9, v6, v10

    .line 149
    add-int/lit8 v0, v0, -0x1

    .line 153
    :goto_2
    aput v8, v6, v0

    .line 154
    if-nez v2, :cond_3

    move v2, v8

    :goto_3
    goto :goto_1

    .line 151
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v9

    .line 154
    goto :goto_3

    .line 157
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method private static patternToChar(I)C
    .locals 2
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 189
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 190
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static toPattern([I)I
    .locals 13
    .parameter "counters"

    .prologue
    .line 161
    array-length v6, p0

    .line 162
    .local v6, max:I
    const/4 v10, 0x0

    .line 163
    .local v10, sum:I
    move-object v0, p0

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget v1, v0, v3

    .line 164
    .local v1, counter:I
    add-int/2addr v10, v1

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v1           #counter:I
    :cond_0
    const/4 v7, 0x0

    .line 167
    .local v7, pattern:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_3

    .line 168
    aget v11, p0, v2

    shl-int/lit8 v11, v11, 0x8

    mul-int/lit8 v11, v11, 0x9

    div-int v8, v11, v10

    .line 169
    .local v8, scaledShifted:I
    shr-int/lit8 v9, v8, 0x8

    .line 170
    .local v9, scaledUnshifted:I
    and-int/lit16 v11, v8, 0xff

    const/16 v12, 0x7f

    if-le v11, v12, :cond_1

    .line 171
    add-int/lit8 v9, v9, 0x1

    .line 173
    :cond_1
    const/4 v11, 0x1

    if-lt v9, v11, :cond_2

    const/4 v11, 0x4

    if-le v9, v11, :cond_4

    .line 174
    :cond_2
    const/4 v7, -0x1

    .line 184
    .end local v7           #pattern:I
    .end local v8           #scaledShifted:I
    .end local v9           #scaledUnshifted:I
    :cond_3
    return v7

    .line 176
    .restart local v7       #pattern:I
    .restart local v8       #scaledShifted:I
    .restart local v9       #scaledUnshifted:I
    :cond_4
    and-int/lit8 v11, v2, 0x1

    if-nez v11, :cond_5

    .line 177
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v9, :cond_6

    .line 178
    shl-int/lit8 v11, v7, 0x1

    or-int/lit8 v7, v11, 0x1

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 181
    .end local v4           #j:I
    :cond_5
    shl-int/2addr v7, v9

    .line 167
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 25
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
    .line 69
    .local p3, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v17

    .line 71
    .local v17, start:[I
    const/16 v19, 0x1

    aget v19, v17, v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v12

    .line 72
    .local v12, nextStart:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 74
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    move-object/from16 v18, v0

    .line 75
    .local v18, theCounters:[I
    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 76
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 77
    .local v14, result:Ljava/lang/StringBuilder;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 83
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v13

    .line 84
    .local v13, pattern:I
    if-gez v13, :cond_1

    .line 85
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v19

    throw v19

    .line 87
    :cond_1
    invoke-static {v13}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v6

    .line 88
    .local v6, decodedChar:C
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    move v9, v12

    .line 90
    .local v9, lastStart:I
    move-object/from16 v4, v18

    .local v4, arr$:[I
    array-length v11, v4

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v11, :cond_2

    aget v5, v4, v8

    .line 91
    .local v5, counter:I
    add-int/2addr v12, v5

    .line 90
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 94
    .end local v5           #counter:I
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v12

    .line 95
    const/16 v19, 0x2a

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    .line 96
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 99
    if-eq v12, v7, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v19

    if-nez v19, :cond_4

    .line 100
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v19

    throw v19

    .line 103
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 105
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v19

    throw v19

    .line 108
    :cond_5
    invoke-static {v14}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 112
    invoke-static {v14}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 114
    .local v15, resultString:Ljava/lang/String;
    const/16 v19, 0x1

    aget v19, v17, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v10, v19, v20

    .line 115
    .local v10, left:F
    add-int v19, v12, v9

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v16, v19, v20

    .line 116
    .local v16, right:F
    new-instance v19, Lcom/google/zxing/Result;

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v10, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v23, v21, v22

    const/16 v22, 0x1

    new-instance v23, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v23, v21, v22

    sget-object v22, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v19
.end method
