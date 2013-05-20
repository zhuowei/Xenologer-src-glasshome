.class public final Lcom/google/zxing/common/detector/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static distance(FFFF)F
    .locals 4
    .parameter "aX"
    .parameter "aY"
    .parameter "bX"
    .parameter "bY"

    .prologue
    .line 33
    sub-float v0, p0, p2

    .line 34
    .local v0, xDiff:F
    sub-float v1, p1, p3

    .line 35
    .local v1, yDiff:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static distance(IIII)F
    .locals 4
    .parameter "aX"
    .parameter "aY"
    .parameter "bX"
    .parameter "bY"

    .prologue
    .line 39
    sub-int v0, p0, p2

    .line 40
    .local v0, xDiff:I
    sub-int v1, p1, p3

    .line 41
    .local v1, yDiff:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static round(F)I
    .locals 1
    .parameter "d"

    .prologue
    .line 29
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method
