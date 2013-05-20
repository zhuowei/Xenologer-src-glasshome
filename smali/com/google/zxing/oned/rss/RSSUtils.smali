.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combins(II)I
    .locals 6
    .parameter "n"
    .parameter "r"

    .prologue
    .line 104
    sub-int v5, p0, p1

    if-le v5, p1, :cond_1

    .line 105
    move v3, p1

    .line 106
    .local v3, minDenom:I
    sub-int v2, p0, p1

    .line 111
    .local v2, maxDenom:I
    :goto_0
    const/4 v4, 0x1

    .line 112
    .local v4, val:I
    const/4 v1, 0x1

    .line 113
    .local v1, j:I
    move v0, p0

    .local v0, i:I
    :goto_1
    if-le v0, v2, :cond_2

    .line 114
    mul-int/2addr v4, v0

    .line 115
    if-gt v1, v3, :cond_0

    .line 116
    div-int/2addr v4, v1

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 113
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 108
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #maxDenom:I
    .end local v3           #minDenom:I
    .end local v4           #val:I
    :cond_1
    sub-int v3, p0, p1

    .line 109
    .restart local v3       #minDenom:I
    move v2, p1

    .restart local v2       #maxDenom:I
    goto :goto_0

    .line 120
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v4       #val:I
    :cond_2
    :goto_2
    if-gt v1, v3, :cond_3

    .line 121
    div-int/2addr v4, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    :cond_3
    return v4
.end method

.method static elements([III)[I
    .locals 9
    .parameter "eDist"
    .parameter "N"
    .parameter "K"

    .prologue
    const/4 v8, 0x1

    .line 128
    array-length v5, p0

    add-int/lit8 v5, v5, 0x2

    new-array v4, v5, [I

    .line 129
    .local v4, widths:[I
    shl-int/lit8 v3, p2, 0x1

    .line 130
    .local v3, twoK:I
    const/4 v5, 0x0

    aput v8, v4, v5

    .line 132
    const/16 v2, 0xa

    .line 133
    .local v2, minEven:I
    const/4 v0, 0x1

    .line 134
    .local v0, barSum:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    add-int/lit8 v5, v3, -0x2

    if-ge v1, v5, :cond_1

    .line 135
    add-int/lit8 v5, v1, -0x1

    aget v5, p0, v5

    add-int/lit8 v6, v1, -0x1

    aget v6, v4, v6

    sub-int/2addr v5, v6

    aput v5, v4, v1

    .line 136
    add-int/lit8 v5, v1, 0x1

    aget v6, p0, v1

    aget v7, v4, v1

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 137
    aget v5, v4, v1

    add-int/lit8 v6, v1, 0x1

    aget v6, v4, v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 138
    aget v5, v4, v1

    if-ge v5, v2, :cond_0

    .line 139
    aget v2, v4, v1

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 142
    :cond_1
    add-int/lit8 v5, v3, -0x1

    sub-int v6, p1, v0

    aput v6, v4, v5

    .line 143
    add-int/lit8 v5, v3, -0x1

    aget v5, v4, v5

    if-ge v5, v2, :cond_2

    .line 144
    add-int/lit8 v5, v3, -0x1

    aget v2, v4, v5

    .line 146
    :cond_2
    if-le v2, v8, :cond_3

    .line 147
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 148
    aget v5, v4, v1

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v5, v6

    aput v5, v4, v1

    .line 149
    add-int/lit8 v5, v1, 0x1

    aget v6, v4, v5

    add-int/lit8 v7, v2, -0x1

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 147
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 152
    :cond_3
    return-object v4
.end method

.method public static getRSSvalue([IIZ)I
    .locals 16
    .parameter "widths"
    .parameter "maxWidth"
    .parameter "noNarrow"

    .prologue
    .line 65
    move-object/from16 v0, p0

    array-length v3, v0

    .line 66
    .local v3, elements:I
    const/4 v9, 0x0

    .line 67
    .local v9, n:I
    move-object/from16 v1, p0

    .local v1, arr$:[I
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget v13, v1, v5

    .line 68
    .local v13, width:I
    add-int/2addr v9, v13

    .line 67
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    .end local v13           #width:I
    :cond_0
    const/4 v12, 0x0

    .line 71
    .local v12, val:I
    const/4 v10, 0x0

    .line 72
    .local v10, narrowMask:I
    const/4 v2, 0x0

    .local v2, bar:I
    :goto_1
    add-int/lit8 v14, v3, -0x1

    if-ge v2, v14, :cond_6

    .line 74
    const/4 v4, 0x1

    .local v4, elmWidth:I
    const/4 v14, 0x1

    shl-int/2addr v14, v2

    or-int/2addr v10, v14

    .line 75
    :goto_2
    aget v14, p0, v2

    if-ge v4, v14, :cond_5

    .line 77
    sub-int v14, v9, v4

    add-int/lit8 v14, v14, -0x1

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x2

    invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v11

    .line 78
    .local v11, subVal:I
    if-eqz p2, :cond_1

    if-nez v10, :cond_1

    sub-int v14, v9, v4

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v14, v15

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x1

    if-lt v14, v15, :cond_1

    .line 80
    sub-int v14, v9, v4

    sub-int v15, v3, v2

    sub-int/2addr v14, v15

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x2

    invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v14

    sub-int/2addr v11, v14

    .line 83
    :cond_1
    sub-int v14, v3, v2

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    .line 84
    const/4 v7, 0x0

    .line 85
    .local v7, lessVal:I
    sub-int v14, v9, v4

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x2

    sub-int v8, v14, v15

    .line 86
    .local v8, mxwElement:I
    :goto_3
    move/from16 v0, p1

    if-le v8, v0, :cond_2

    .line 87
    sub-int v14, v9, v4

    sub-int/2addr v14, v8

    add-int/lit8 v14, v14, -0x1

    sub-int v15, v3, v2

    add-int/lit8 v15, v15, -0x3

    invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v14

    add-int/2addr v7, v14

    .line 86
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 90
    :cond_2
    add-int/lit8 v14, v3, -0x1

    sub-int/2addr v14, v2

    mul-int/2addr v14, v7

    sub-int/2addr v11, v14

    .line 94
    .end local v7           #lessVal:I
    .end local v8           #mxwElement:I
    :cond_3
    :goto_4
    add-int/2addr v12, v11

    .line 76
    add-int/lit8 v4, v4, 0x1

    const/4 v14, 0x1

    shl-int/2addr v14, v2

    xor-int/lit8 v14, v14, -0x1

    and-int/2addr v10, v14

    goto :goto_2

    .line 91
    :cond_4
    sub-int v14, v9, v4

    move/from16 v0, p1

    if-le v14, v0, :cond_3

    .line 92
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 96
    .end local v11           #subVal:I
    :cond_5
    sub-int/2addr v9, v4

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    .end local v4           #elmWidth:I
    :cond_6
    return v12
.end method

.method static getRSSwidths(IIIIZ)[I
    .locals 10
    .parameter "val"
    .parameter "n"
    .parameter "elements"
    .parameter "maxWidth"
    .parameter "noNarrow"

    .prologue
    const/4 v9, 0x1

    .line 25
    new-array v6, p2, [I

    .line 27
    .local v6, widths:[I
    const/4 v4, 0x0

    .line 28
    .local v4, narrowMask:I
    const/4 v0, 0x0

    .local v0, bar:I
    :goto_0
    add-int/lit8 v7, p2, -0x1

    if-ge v0, v7, :cond_5

    .line 29
    shl-int v7, v9, v0

    or-int/2addr v4, v7

    .line 30
    const/4 v1, 0x1

    .line 33
    .local v1, elmWidth:I
    :goto_1
    sub-int v7, p1, v1

    add-int/lit8 v7, v7, -0x1

    sub-int v8, p2, v0

    add-int/lit8 v8, v8, -0x2

    invoke-static {v7, v8}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v5

    .line 34
    .local v5, subVal:I
    if-eqz p4, :cond_0

    if-nez v4, :cond_0

    sub-int v7, p1, v1

    sub-int v8, p2, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v7, v8

    sub-int v8, p2, v0

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_0

    .line 36
    sub-int v7, p1, v1

    sub-int v8, p2, v0

    sub-int/2addr v7, v8

    sub-int v8, p2, v0

    add-int/lit8 v8, v8, -0x2

    invoke-static {v7, v8}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v7

    sub-int/2addr v5, v7

    .line 38
    :cond_0
    sub-int v7, p2, v0

    add-int/lit8 v7, v7, -0x1

    if-le v7, v9, :cond_3

    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, lessVal:I
    sub-int v7, p1, v1

    sub-int v8, p2, v0

    add-int/lit8 v8, v8, -0x2

    sub-int v3, v7, v8

    .line 41
    .local v3, mxwElement:I
    :goto_2
    if-le v3, p3, :cond_1

    .line 43
    sub-int v7, p1, v1

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    sub-int v8, p2, v0

    add-int/lit8 v8, v8, -0x3

    invoke-static {v7, v8}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v7

    add-int/2addr v2, v7

    .line 42
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 45
    :cond_1
    add-int/lit8 v7, p2, -0x1

    sub-int/2addr v7, v0

    mul-int/2addr v7, v2

    sub-int/2addr v5, v7

    .line 49
    .end local v2           #lessVal:I
    .end local v3           #mxwElement:I
    :cond_2
    :goto_3
    sub-int/2addr p0, v5

    .line 50
    if-gez p0, :cond_4

    .line 56
    add-int/2addr p0, v5

    .line 57
    sub-int/2addr p1, v1

    .line 58
    aput v1, v6, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_3
    sub-int v7, p1, v1

    if-le v7, p3, :cond_2

    .line 47
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 53
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 54
    shl-int v7, v9, v0

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v4, v7

    goto :goto_1

    .line 60
    .end local v1           #elmWidth:I
    .end local v5           #subVal:I
    :cond_5
    aput p1, v6, v0

    .line 61
    return-object v6
.end method
