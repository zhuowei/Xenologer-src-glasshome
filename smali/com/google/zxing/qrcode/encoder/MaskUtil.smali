.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# static fields
.field private static final N1:I = 0x3

.field private static final N2:I = 0x3

.field private static final N3:I = 0x28

.field private static final N4:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2
    .parameter "matrix"

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .locals 11
    .parameter "matrix"
    .parameter "isHorizontal"

    .prologue
    const/4 v10, 0x5

    .line 192
    const/4 v7, 0x0

    .line 193
    .local v7, penalty:I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 194
    .local v3, iLimit:I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    .line 195
    .local v5, jLimit:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 196
    .local v0, array:[[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_7

    .line 197
    const/4 v6, 0x0

    .line 198
    .local v6, numSameBitCells:I
    const/4 v8, -0x1

    .line 199
    .local v8, prevBit:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    if-ge v4, v5, :cond_5

    .line 200
    if-eqz p1, :cond_2

    aget-object v9, v0, v2

    aget-byte v1, v9, v4

    .line 201
    .local v1, bit:I
    :goto_4
    if-ne v1, v8, :cond_3

    .line 202
    add-int/lit8 v6, v6, 0x1

    .line 199
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 193
    .end local v0           #array:[[B
    .end local v1           #bit:I
    .end local v2           #i:I
    .end local v3           #iLimit:I
    .end local v4           #j:I
    .end local v5           #jLimit:I
    .end local v6           #numSameBitCells:I
    .end local v8           #prevBit:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    goto :goto_0

    .line 194
    .restart local v3       #iLimit:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    goto :goto_1

    .line 200
    .restart local v0       #array:[[B
    .restart local v2       #i:I
    .restart local v4       #j:I
    .restart local v5       #jLimit:I
    .restart local v6       #numSameBitCells:I
    .restart local v8       #prevBit:I
    :cond_2
    aget-object v9, v0, v4

    aget-byte v1, v9, v2

    goto :goto_4

    .line 204
    .restart local v1       #bit:I
    :cond_3
    if-lt v6, v10, :cond_4

    .line 205
    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    .line 207
    :cond_4
    const/4 v6, 0x1

    .line 208
    move v8, v1

    goto :goto_5

    .line 211
    .end local v1           #bit:I
    :cond_5
    if-lt v6, v10, :cond_6

    .line 212
    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    .line 196
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 215
    .end local v4           #j:I
    .end local v6           #numSameBitCells:I
    .end local v8           #prevBit:I
    :cond_7
    return v7
.end method

.method static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 9
    .parameter "matrix"

    .prologue
    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, penalty:I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 52
    .local v0, array:[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    .line 53
    .local v4, width:I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    .line 54
    .local v1, height:I
    const/4 v6, 0x0

    .local v6, y:I
    :goto_0
    add-int/lit8 v7, v1, -0x1

    if-ge v6, v7, :cond_2

    .line 55
    const/4 v5, 0x0

    .local v5, x:I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v5, v7, :cond_1

    .line 56
    aget-object v7, v0, v6

    aget-byte v3, v7, v5

    .line 57
    .local v3, value:I
    aget-object v7, v0, v6

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v3, v7, :cond_0

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v3, v7, :cond_0

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    if-ne v3, v7, :cond_0

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 55
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 54
    .end local v3           #value:I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 62
    .end local v5           #x:I
    :cond_2
    mul-int/lit8 v7, v2, 0x3

    return v7
.end method

.method static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 9
    .parameter "matrix"

    .prologue
    const/4 v8, 0x1

    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, penalty:I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 73
    .local v0, array:[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    .line 74
    .local v3, width:I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    .line 75
    .local v1, height:I
    const/4 v5, 0x0

    .local v5, y:I
    :goto_0
    if-ge v5, v1, :cond_7

    .line 76
    const/4 v4, 0x0

    .local v4, x:I
    :goto_1
    if-ge v4, v3, :cond_6

    .line 78
    add-int/lit8 v6, v4, 0x6

    if-ge v6, v3, :cond_2

    aget-object v6, v0, v5

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_2

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    if-nez v6, :cond_2

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x2

    aget-byte v6, v6, v7

    if-ne v6, v8, :cond_2

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x3

    aget-byte v6, v6, v7

    if-ne v6, v8, :cond_2

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x4

    aget-byte v6, v6, v7

    if-ne v6, v8, :cond_2

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x5

    aget-byte v6, v6, v7

    if-nez v6, :cond_2

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x6

    aget-byte v6, v6, v7

    if-ne v6, v8, :cond_2

    add-int/lit8 v6, v4, 0xa

    if-ge v6, v3, :cond_0

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x7

    aget-byte v6, v6, v7

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x8

    aget-byte v6, v6, v7

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0x9

    aget-byte v6, v6, v7

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, 0xa

    aget-byte v6, v6, v7

    if-eqz v6, :cond_1

    :cond_0
    add-int/lit8 v6, v4, -0x4

    if-ltz v6, :cond_2

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, -0x1

    aget-byte v6, v6, v7

    if-nez v6, :cond_2

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, -0x2

    aget-byte v6, v6, v7

    if-nez v6, :cond_2

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, -0x3

    aget-byte v6, v6, v7

    if-nez v6, :cond_2

    aget-object v6, v0, v5

    add-int/lit8 v7, v4, -0x4

    aget-byte v6, v6, v7

    if-nez v6, :cond_2

    .line 96
    :cond_1
    add-int/lit8 v2, v2, 0x28

    .line 98
    :cond_2
    add-int/lit8 v6, v5, 0x6

    if-ge v6, v1, :cond_5

    aget-object v6, v0, v5

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_5

    add-int/lit8 v6, v5, 0x1

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_5

    add-int/lit8 v6, v5, 0x2

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_5

    add-int/lit8 v6, v5, 0x3

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_5

    add-int/lit8 v6, v5, 0x4

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_5

    add-int/lit8 v6, v5, 0x5

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_5

    add-int/lit8 v6, v5, 0x6

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_5

    add-int/lit8 v6, v5, 0xa

    if-ge v6, v1, :cond_3

    add-int/lit8 v6, v5, 0x7

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_3

    add-int/lit8 v6, v5, 0x8

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_3

    add-int/lit8 v6, v5, 0x9

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_3

    add-int/lit8 v6, v5, 0xa

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-eqz v6, :cond_4

    :cond_3
    add-int/lit8 v6, v5, -0x4

    if-ltz v6, :cond_5

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_5

    add-int/lit8 v6, v5, -0x2

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_5

    add-int/lit8 v6, v5, -0x3

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_5

    add-int/lit8 v6, v5, -0x4

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-nez v6, :cond_5

    .line 116
    :cond_4
    add-int/lit8 v2, v2, 0x28

    .line 76
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 75
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 120
    .end local v4           #x:I
    :cond_7
    return v2
.end method

.method static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 15
    .parameter "matrix"

    .prologue
    .line 128
    const/4 v6, 0x0

    .line 129
    .local v6, numDarkCells:I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 130
    .local v0, array:[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v8

    .line 131
    .local v8, width:I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    .line 132
    .local v5, height:I
    const/4 v10, 0x0

    .local v10, y:I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 133
    aget-object v1, v0, v10

    .line 134
    .local v1, arrayY:[B
    const/4 v9, 0x0

    .local v9, x:I
    :goto_1
    if-ge v9, v8, :cond_1

    .line 135
    aget-byte v11, v1, v9

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 136
    add-int/lit8 v6, v6, 0x1

    .line 134
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 132
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 140
    .end local v1           #arrayY:[B
    .end local v9           #x:I
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v12

    mul-int v7, v11, v12

    .line 141
    .local v7, numTotalCells:I
    int-to-double v11, v6

    int-to-double v13, v7

    div-double v2, v11, v13

    .line 142
    .local v2, darkRatio:D
    const-wide/high16 v11, 0x3fe0

    sub-double v11, v2, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4034

    mul-double/2addr v11, v13

    double-to-int v4, v11

    .line 143
    .local v4, fivePercentVariances:I
    mul-int/lit8 v11, v4, 0xa

    return v11
.end method

.method static getDataMaskBit(III)Z
    .locals 5
    .parameter "maskPattern"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 153
    packed-switch p0, :pswitch_data_0

    .line 182
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mask pattern: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :pswitch_0
    add-int v2, p2, p1

    and-int/lit8 v0, v2, 0x1

    .line 184
    .local v0, intermediate:I
    :goto_0
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 158
    .end local v0           #intermediate:I
    :pswitch_1
    and-int/lit8 v0, p2, 0x1

    .line 159
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 161
    .end local v0           #intermediate:I
    :pswitch_2
    rem-int/lit8 v0, p1, 0x3

    .line 162
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 164
    .end local v0           #intermediate:I
    :pswitch_3
    add-int v2, p2, p1

    rem-int/lit8 v0, v2, 0x3

    .line 165
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 167
    .end local v0           #intermediate:I
    :pswitch_4
    ushr-int/lit8 v2, p2, 0x1

    div-int/lit8 v3, p1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 168
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 170
    .end local v0           #intermediate:I
    :pswitch_5
    mul-int v1, p2, p1

    .line 171
    .local v1, temp:I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int v0, v2, v3

    .line 172
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 174
    .end local v0           #intermediate:I
    .end local v1           #temp:I
    :pswitch_6
    mul-int v1, p2, p1

    .line 175
    .restart local v1       #temp:I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 176
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 178
    .end local v0           #intermediate:I
    .end local v1           #temp:I
    :pswitch_7
    mul-int v1, p2, p1

    .line 179
    .restart local v1       #temp:I
    rem-int/lit8 v2, v1, 0x3

    add-int v3, p2, p1

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 180
    .restart local v0       #intermediate:I
    goto :goto_0

    .line 184
    .end local v1           #temp:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
