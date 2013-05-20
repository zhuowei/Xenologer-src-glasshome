.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "dimension"

    .prologue
    .line 43
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 44
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 51
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 52
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 53
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 54
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 94
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v1, v2

    .line 95
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 271
    instance-of v3, p1, Lcom/google/zxing/common/BitMatrix;

    if-nez v3, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 274
    check-cast v1, Lcom/google/zxing/common/BitMatrix;

    .line 275
    .local v1, other:Lcom/google/zxing/common/BitMatrix;
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v4, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v4, v1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v3, v3

    iget-object v4, v1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 279
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 280
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v3, v3, v0

    iget-object v4, v1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public flip(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 86
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 87
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 88
    return-void
.end method

.method public get(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 64
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 65
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBottomRightOnBit()[I
    .locals 7

    .prologue
    .line 234
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .line 235
    .local v1, bitsOffset:I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v5, v5, v1

    if-nez v5, :cond_0

    .line 236
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 238
    :cond_0
    if-gez v1, :cond_1

    .line 239
    const/4 v5, 0x0

    .line 252
    :goto_1
    return-object v5

    .line 242
    :cond_1
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v4, v1, v5

    .line 243
    .local v4, y:I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v5, v1, v5

    shl-int/lit8 v3, v5, 0x5

    .line 245
    .local v3, x:I
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v5, v1

    .line 246
    .local v2, theBits:I
    const/16 v0, 0x1f

    .line 247
    .local v0, bit:I
    :goto_2
    ushr-int v5, v2, v0

    if-nez v5, :cond_2

    .line 248
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 250
    :cond_2
    add-int/2addr v3, v0

    .line 252
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    goto :goto_1
.end method

.method public getEnclosingRectangle()[I
    .locals 12

    .prologue
    .line 161
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 162
    .local v3, left:I
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 163
    .local v6, top:I
    const/4 v4, -0x1

    .line 164
    .local v4, right:I
    const/4 v1, -0x1

    .line 166
    .local v1, bottom:I
    const/4 v9, 0x0

    .local v9, y:I
    :goto_0
    iget v10, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v9, v10, :cond_7

    .line 167
    const/4 v8, 0x0

    .local v8, x32:I
    :goto_1
    iget v10, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v8, v10, :cond_6

    .line 168
    iget-object v10, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v11, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    aget v5, v10, v11

    .line 169
    .local v5, theBits:I
    if-eqz v5, :cond_5

    .line 170
    if-ge v9, v6, :cond_0

    .line 171
    move v6, v9

    .line 173
    :cond_0
    if-le v9, v1, :cond_1

    .line 174
    move v1, v9

    .line 176
    :cond_1
    mul-int/lit8 v10, v8, 0x20

    if-ge v10, v3, :cond_3

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, bit:I
    :goto_2
    rsub-int/lit8 v10, v0, 0x1f

    shl-int v10, v5, v10

    if-nez v10, :cond_2

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 181
    :cond_2
    mul-int/lit8 v10, v8, 0x20

    add-int/2addr v10, v0

    if-ge v10, v3, :cond_3

    .line 182
    mul-int/lit8 v10, v8, 0x20

    add-int v3, v10, v0

    .line 185
    .end local v0           #bit:I
    :cond_3
    mul-int/lit8 v10, v8, 0x20

    add-int/lit8 v10, v10, 0x1f

    if-le v10, v4, :cond_5

    .line 186
    const/16 v0, 0x1f

    .line 187
    .restart local v0       #bit:I
    :goto_3
    ushr-int v10, v5, v0

    if-nez v10, :cond_4

    .line 188
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 190
    :cond_4
    mul-int/lit8 v10, v8, 0x20

    add-int/2addr v10, v0

    if-le v10, v4, :cond_5

    .line 191
    mul-int/lit8 v10, v8, 0x20

    add-int v4, v10, v0

    .line 167
    .end local v0           #bit:I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 166
    .end local v5           #theBits:I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 198
    .end local v8           #x32:I
    :cond_7
    sub-int v7, v4, v3

    .line 199
    .local v7, width:I
    sub-int v2, v1, v6

    .line 201
    .local v2, height:I
    if-ltz v7, :cond_8

    if-gez v2, :cond_9

    .line 202
    :cond_8
    const/4 v10, 0x0

    .line 205
    :goto_4
    return-object v10

    :cond_9
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v3, v10, v11

    const/4 v11, 0x1

    aput v6, v10, v11

    const/4 v11, 0x2

    aput v7, v10, v11

    const/4 v11, 0x3

    aput v2, v10, v11

    goto :goto_4
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 5
    .parameter "y"
    .parameter "row"

    .prologue
    .line 137
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v2, v3, :cond_1

    .line 138
    :cond_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    .end local p2
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {p2, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 140
    .restart local p2
    :cond_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, p1, v2

    .line 141
    .local v0, offset:I
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v1, v2, :cond_2

    .line 142
    shl-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_2
    return-object p2
.end method

.method public getTopLeftOnBit()[I
    .locals 7

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, bitsOffset:I
    :goto_0
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v5, v5, v1

    if-nez v5, :cond_0

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-ne v1, v5, :cond_1

    .line 219
    const/4 v5, 0x0

    .line 230
    :goto_1
    return-object v5

    .line 221
    :cond_1
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v4, v1, v5

    .line 222
    .local v4, y:I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v5, v1, v5

    shl-int/lit8 v3, v5, 0x5

    .line 224
    .local v3, x:I
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v5, v1

    .line 225
    .local v2, theBits:I
    const/4 v0, 0x0

    .line 226
    .local v0, bit:I
    :goto_2
    rsub-int/lit8 v5, v0, 0x1f

    shl-int v5, v2, v5

    if-nez v5, :cond_2

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 229
    :cond_2
    add-int/2addr v3, v0

    .line 230
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 289
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 290
    .local v2, hash:I
    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int v2, v5, v6

    .line 291
    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int v2, v5, v6

    .line 292
    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int v2, v5, v6

    .line 293
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 294
    .local v1, bit:I
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    .end local v1           #bit:I
    :cond_0
    return v2
.end method

.method public set(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 75
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 76
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 77
    return-void
.end method

.method public setRegion(IIII)V
    .locals 10
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x1

    .line 109
    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 110
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 112
    :cond_1
    if-lt p4, v9, :cond_2

    if-ge p3, v9, :cond_3

    .line 113
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_3
    add-int v2, p1, p3

    .line 116
    .local v2, right:I
    add-int v0, p2, p4

    .line 117
    .local v0, bottom:I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v0, v5, :cond_4

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-le v2, v5, :cond_5

    .line 118
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_5
    move v4, p2

    .local v4, y:I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 121
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    .line 122
    .local v1, offset:I
    move v3, p1

    .local v3, x:I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 123
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    shr-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v1

    aget v7, v5, v6

    and-int/lit8 v8, v3, 0x1f

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v1           #offset:I
    .end local v3           #x:I
    :cond_7
    return-void
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 5
    .parameter "y"
    .parameter "row"

    .prologue
    .line 152
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v3, p1

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 302
    .local v0, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, y:I
    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2

    .line 303
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v1, v3, :cond_1

    .line 304
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "X "

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    :cond_0
    const-string v3, "  "

    goto :goto_2

    .line 306
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v1           #x:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
