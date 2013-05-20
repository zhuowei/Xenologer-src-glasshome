.class public final Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
.super Ljava/lang/Object;
.source "BarcodeMatrix.java"


# instance fields
.field private currentRow:I

.field private final height:I

.field private final matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

.field private final width:I


# direct methods
.method constructor <init>(II)V
    .locals 5
    .parameter "height"
    .parameter "width"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    add-int/lit8 v2, p1, 0x2

    new-array v2, v2, [Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    iput-object v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    array-length v1, v2

    .local v1, matrixLength:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 39
    iget-object v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    new-instance v3, Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    add-int/lit8 v4, p2, 0x4

    mul-int/lit8 v4, v4, 0x11

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;-><init>(I)V

    aput-object v3, v2, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    mul-int/lit8 v2, p2, 0x11

    iput v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->width:I

    .line 42
    add-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->height:I

    .line 43
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    .line 44
    return-void
.end method


# virtual methods
.method getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    iget v1, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMatrix()[[B
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0, v0}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v0

    return-object v0
.end method

.method public getScaledMatrix(I)[[B
    .locals 1
    .parameter "scale"

    .prologue
    .line 67
    invoke-virtual {p0, p1, p1}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v0

    return-object v0
.end method

.method public getScaledMatrix(II)[[B
    .locals 6
    .parameter "xScale"
    .parameter "yScale"

    .prologue
    .line 71
    iget v3, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->height:I

    mul-int/2addr v3, p2

    iget v4, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->width:I

    mul-int/2addr v4, p1

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 72
    .local v1, matrixOut:[[B
    iget v3, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->height:I

    mul-int v2, v3, p2

    .line 73
    .local v2, yMax:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 74
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    div-int v5, v0, p2

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->getScaledRow(I)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-object v1
.end method

.method set(IIB)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1, p3}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->set(IB)V

    .line 48
    return-void
.end method

.method setMatrix(IIZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "black"

    .prologue
    .line 51
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->set(IIB)V

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startRow()V
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    .line 56
    return-void
.end method
