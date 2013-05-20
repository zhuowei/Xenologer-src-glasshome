.class public final Lcom/google/zxing/qrcode/detector/FinderPattern;
.super Lcom/google/zxing/ResultPoint;
.source "FinderPattern.java"


# instance fields
.field private count:I

.field private final estimatedModuleSize:F


# direct methods
.method constructor <init>(FFF)V
    .locals 1
    .parameter "posX"
    .parameter "posY"
    .parameter "estimatedModuleSize"

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    .line 35
    return-void
.end method

.method private constructor <init>(FFFI)V
    .locals 0
    .parameter "posX"
    .parameter "posY"
    .parameter "estimatedModuleSize"
    .parameter "count"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 39
    iput p3, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    .line 40
    iput p4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    .line 41
    return-void
.end method


# virtual methods
.method aboutEquals(FFF)Z
    .locals 3
    .parameter "moduleSize"
    .parameter "i"
    .parameter "j"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v2

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v2

    sub-float v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_1

    .line 61
    iget v2, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 62
    .local v0, moduleSizeDiff:F
    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 64
    .end local v0           #moduleSizeDiff:F
    :cond_1
    return v1
.end method

.method combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 6
    .parameter "i"
    .parameter "j"
    .parameter "newModuleSize"

    .prologue
    .line 73
    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    add-int/lit8 v0, v4, 0x1

    .line 74
    .local v0, combinedCount:I
    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, p2

    int-to-float v5, v0

    div-float v2, v4, v5

    .line 75
    .local v2, combinedX:F
    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, p1

    int-to-float v5, v0

    div-float v3, v4, v5

    .line 76
    .local v3, combinedY:F
    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    mul-float/2addr v4, v5

    add-float/2addr v4, p3

    int-to-float v5, v0

    div-float v1, v4, v5

    .line 77
    .local v1, combinedModuleSize:F
    new-instance v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    return-object v4
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    return v0
.end method

.method public getEstimatedModuleSize()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    return v0
.end method

.method incrementCount()V
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    .line 53
    return-void
.end method
