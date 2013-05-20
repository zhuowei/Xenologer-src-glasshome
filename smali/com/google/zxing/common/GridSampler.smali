.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .locals 10
    .parameter "image"
    .parameter "points"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 102
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 103
    .local v3, width:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 105
    .local v0, height:I
    const/4 v1, 0x1

    .line 106
    .local v1, nudged:Z
    const/4 v2, 0x0

    .local v2, offset:I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_6

    if-eqz v1, :cond_6

    .line 107
    aget v6, p1, v2

    float-to-int v4, v6

    .line 108
    .local v4, x:I
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    .line 109
    .local v5, y:I
    if-lt v4, v8, :cond_0

    if-gt v4, v3, :cond_0

    if-lt v5, v8, :cond_0

    if-le v5, v0, :cond_1

    .line 110
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 112
    :cond_1
    const/4 v1, 0x0

    .line 113
    if-ne v4, v8, :cond_4

    .line 114
    aput v9, p1, v2

    .line 115
    const/4 v1, 0x1

    .line 120
    :cond_2
    :goto_1
    if-ne v5, v8, :cond_5

    .line 121
    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    .line 122
    const/4 v1, 0x1

    .line 106
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 116
    :cond_4
    if-ne v4, v3, :cond_2

    .line 117
    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    .line 118
    const/4 v1, 0x1

    goto :goto_1

    .line 123
    :cond_5
    if-ne v5, v0, :cond_3

    .line 124
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    .line 125
    const/4 v1, 0x1

    goto :goto_2

    .line 129
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_6
    const/4 v1, 0x1

    .line 130
    array-length v6, p1

    add-int/lit8 v2, v6, -0x2

    :goto_3
    if-ltz v2, :cond_d

    if-eqz v1, :cond_d

    .line 131
    aget v6, p1, v2

    float-to-int v4, v6

    .line 132
    .restart local v4       #x:I
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    .line 133
    .restart local v5       #y:I
    if-lt v4, v8, :cond_7

    if-gt v4, v3, :cond_7

    if-lt v5, v8, :cond_7

    if-le v5, v0, :cond_8

    .line 134
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 136
    :cond_8
    const/4 v1, 0x0

    .line 137
    if-ne v4, v8, :cond_b

    .line 138
    aput v9, p1, v2

    .line 139
    const/4 v1, 0x1

    .line 144
    :cond_9
    :goto_4
    if-ne v5, v8, :cond_c

    .line 145
    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    .line 146
    const/4 v1, 0x1

    .line 130
    :cond_a
    :goto_5
    add-int/lit8 v2, v2, -0x2

    goto :goto_3

    .line 140
    :cond_b
    if-ne v4, v3, :cond_9

    .line 141
    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    .line 142
    const/4 v1, 0x1

    goto :goto_4

    .line 147
    :cond_c
    if-ne v5, v0, :cond_a

    .line 148
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    .line 149
    const/4 v1, 0x1

    goto :goto_5

    .line 152
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .locals 0
    .parameter "newGridSampler"

    .prologue
    .line 48
    sput-object p0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
