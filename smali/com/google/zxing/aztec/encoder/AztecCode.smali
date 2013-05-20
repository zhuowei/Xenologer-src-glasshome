.class public final Lcom/google/zxing/aztec/encoder/AztecCode;
.super Ljava/lang/Object;
.source "AztecCode.java"


# instance fields
.field private codeWords:I

.field private compact:Z

.field private layers:I

.field private matrix:Lcom/google/zxing/common/BitMatrix;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeWords()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->codeWords:I

    return v0
.end method

.method public getLayers()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->layers:I

    return v0
.end method

.method public getMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->size:I

    return v0
.end method

.method public isCompact()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->compact:Z

    return v0
.end method

.method public setCodeWords(I)V
    .locals 0
    .parameter "codeWords"

    .prologue
    .line 75
    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->codeWords:I

    .line 76
    return-void
.end method

.method public setCompact(Z)V
    .locals 0
    .parameter "compact"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->compact:Z

    .line 43
    return-void
.end method

.method public setLayers(I)V
    .locals 0
    .parameter "layers"

    .prologue
    .line 64
    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->layers:I

    .line 65
    return-void
.end method

.method public setMatrix(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .parameter "matrix"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 87
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 53
    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->size:I

    .line 54
    return-void
.end method
