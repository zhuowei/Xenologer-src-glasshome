.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# instance fields
.field private bits:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 36
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 37
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x5

    if-le p1, v1, :cond_0

    .line 49
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    .line 50
    .local v0, newBits:[I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 53
    .end local v0           #newBits:[I
    :cond_0
    return-void
.end method

.method private static makeArray(I)[I
    .locals 1
    .parameter "size"

    .prologue
    .line 306
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public appendBit(Z)V
    .locals 5
    .parameter "bit"

    .prologue
    .line 221
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    shr-int/lit8 v1, v1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 225
    :cond_0
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 226
    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .locals 3
    .parameter "other"

    .prologue
    .line 244
    iget v1, p1, Lcom/google/zxing/common/BitArray;->size:I

    .line 245
    .local v1, otherSize:I
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 246
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 247
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 3
    .parameter "value"
    .parameter "numBits"

    .prologue
    const/4 v2, 0x1

    .line 234
    if-ltz p2, :cond_0

    const/16 v1, 0x20

    if-le p2, v1, :cond_1

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Num bits must be between 0 and 32"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_1
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 238
    move v0, p2

    .local v0, numBitsLeft:I
    :goto_0
    if-lez v0, :cond_3

    .line 239
    add-int/lit8 v1, v0, -0x1

    shr-int v1, p1, v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 238
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 239
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 241
    :cond_3
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 173
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v2

    .line 174
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public flip(I)V
    .locals 5
    .parameter "i"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 79
    return-void
.end method

.method public get(I)Z
    .locals 3
    .parameter "i"

    .prologue
    const/4 v0, 0x1

    .line 60
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitArray()[I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getNextSet(I)I
    .locals 5
    .parameter "from"

    .prologue
    .line 88
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v3, :cond_1

    .line 89
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 102
    :cond_0
    :goto_0
    return v2

    .line 91
    :cond_1
    shr-int/lit8 v0, p1, 0x5

    .line 92
    .local v0, bitsOffset:I
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v3, v0

    .line 94
    .local v1, currentBits:I
    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 95
    :goto_1
    if-nez v1, :cond_3

    .line 96
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-ne v0, v3, :cond_2

    .line 97
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_0

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v3, v0

    goto :goto_1

    .line 101
    :cond_3
    shl-int/lit8 v3, v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int v2, v3, v4

    .line 102
    .local v2, result:I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_0
.end method

.method public getNextUnset(I)I
    .locals 5
    .parameter "from"

    .prologue
    .line 109
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v3, :cond_1

    .line 110
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 123
    :cond_0
    :goto_0
    return v2

    .line 112
    :cond_1
    shr-int/lit8 v0, p1, 0x5

    .line 113
    .local v0, bitsOffset:I
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/lit8 v1, v3, -0x1

    .line 115
    .local v1, currentBits:I
    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 116
    :goto_1
    if-nez v1, :cond_3

    .line 117
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-ne v0, v3, :cond_2

    .line 118
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_0

    .line 120
    :cond_2
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/lit8 v1, v3, -0x1

    goto :goto_1

    .line 122
    :cond_3
    shl-int/lit8 v3, v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int v2, v3, v4

    .line 123
    .local v2, result:I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 11
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    const/16 v9, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 189
    if-ge p2, p1, :cond_0

    .line 190
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 192
    :cond_0
    if-ne p2, p1, :cond_2

    .line 217
    :cond_1
    :goto_0
    return v7

    .line 195
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 196
    shr-int/lit8 v1, p1, 0x5

    .line 197
    .local v1, firstInt:I
    shr-int/lit8 v5, p2, 0x5

    .line 198
    .local v5, lastInt:I
    move v2, v1

    .local v2, i:I
    :goto_1
    if-gt v2, v5, :cond_1

    .line 199
    if-le v2, v1, :cond_4

    move v0, v8

    .line 200
    .local v0, firstBit:I
    :goto_2
    if-ge v2, v5, :cond_5

    move v4, v9

    .line 202
    .local v4, lastBit:I
    :goto_3
    if-nez v0, :cond_6

    if-ne v4, v9, :cond_6

    .line 203
    const/4 v6, -0x1

    .line 213
    .local v6, mask:I
    :cond_3
    iget-object v10, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v10, v10, v2

    and-int/2addr v10, v6

    if-eqz p3, :cond_7

    .end local v6           #mask:I
    :goto_4
    if-eq v10, v6, :cond_8

    move v7, v8

    .line 214
    goto :goto_0

    .line 199
    .end local v0           #firstBit:I
    .end local v4           #lastBit:I
    :cond_4
    and-int/lit8 v0, p1, 0x1f

    goto :goto_2

    .line 200
    .restart local v0       #firstBit:I
    :cond_5
    and-int/lit8 v4, p2, 0x1f

    goto :goto_3

    .line 205
    .restart local v4       #lastBit:I
    :cond_6
    const/4 v6, 0x0

    .line 206
    .restart local v6       #mask:I
    move v3, v0

    .local v3, j:I
    :goto_5
    if-gt v3, v4, :cond_3

    .line 207
    shl-int v10, v7, v3

    or-int/2addr v6, v10

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .end local v3           #j:I
    :cond_7
    move v6, v8

    .line 213
    goto :goto_4

    .line 198
    .end local v6           #mask:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 295
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    new-array v1, v3, [I

    .line 296
    .local v1, newBits:[I
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 297
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 298
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    shr-int/lit8 v3, v0, 0x5

    aget v4, v1, v3

    const/4 v5, 0x1

    and-int/lit8 v6, v0, 0x1f

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v1, v3

    .line 297
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    iput-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 303
    return-void
.end method

.method public set(I)V
    .locals 5
    .parameter "i"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 70
    return-void
.end method

.method public setBulk(II)V
    .locals 2
    .parameter "i"
    .parameter "newBits"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aput p2, v0, v1

    .line 135
    return-void
.end method

.method public setRange(II)V
    .locals 10
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x1f

    .line 144
    if-ge p2, p1, :cond_0

    .line 145
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 147
    :cond_0
    if-ne p2, p1, :cond_2

    .line 167
    :cond_1
    return-void

    .line 150
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 151
    shr-int/lit8 v1, p1, 0x5

    .line 152
    .local v1, firstInt:I
    shr-int/lit8 v5, p2, 0x5

    .line 153
    .local v5, lastInt:I
    move v2, v1

    .local v2, i:I
    :goto_0
    if-gt v2, v5, :cond_1

    .line 154
    if-le v2, v1, :cond_4

    const/4 v0, 0x0

    .line 155
    .local v0, firstBit:I
    :goto_1
    if-ge v2, v5, :cond_5

    move v4, v7

    .line 157
    .local v4, lastBit:I
    :goto_2
    if-nez v0, :cond_6

    if-ne v4, v7, :cond_6

    .line 158
    const/4 v6, -0x1

    .line 165
    .local v6, mask:I
    :cond_3
    iget-object v8, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v9, v8, v2

    or-int/2addr v9, v6

    aput v9, v8, v2

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v0           #firstBit:I
    .end local v4           #lastBit:I
    .end local v6           #mask:I
    :cond_4
    and-int/lit8 v0, p1, 0x1f

    goto :goto_1

    .line 155
    .restart local v0       #firstBit:I
    :cond_5
    and-int/lit8 v4, p2, 0x1f

    goto :goto_2

    .line 160
    .restart local v4       #lastBit:I
    :cond_6
    const/4 v6, 0x0

    .line 161
    .restart local v6       #mask:I
    move v3, v0

    .local v3, j:I
    :goto_3
    if-gt v3, v4, :cond_3

    .line 162
    const/4 v8, 0x1

    shl-int/2addr v8, v3

    or-int/2addr v6, v8

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public toBytes(I[BII)V
    .locals 5
    .parameter "bitOffset"
    .parameter "array"
    .parameter "offset"
    .parameter "numBytes"

    .prologue
    .line 271
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, theByte:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 274
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const/4 v3, 0x1

    rsub-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 277
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 279
    :cond_1
    add-int v3, p3, v0

    int-to-byte v4, v2

    aput-byte v4, p2, v3

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .end local v1           #j:I
    .end local v2           #theByte:I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v0, v2, :cond_2

    .line 313
    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    .line 314
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const/16 v2, 0x2e

    goto :goto_1

    .line 318
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .locals 4
    .parameter "other"

    .prologue
    .line 252
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    iget-object v2, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 253
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Sizes don\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    return-void
.end method
