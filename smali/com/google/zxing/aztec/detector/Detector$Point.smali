.class final Lcom/google/zxing/aztec/detector/Detector$Point;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/aztec/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Point"
.end annotation


# instance fields
.field final x:I

.field final y:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput p1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 621
    iput p2, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 622
    return-void
.end method


# virtual methods
.method toResultPoint()Lcom/google/zxing/ResultPoint;
    .locals 3

    .prologue
    .line 616
    new-instance v0, Lcom/google/zxing/ResultPoint;

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0
.end method
