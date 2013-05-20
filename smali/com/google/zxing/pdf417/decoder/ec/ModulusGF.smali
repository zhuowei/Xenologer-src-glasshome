.class public final Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
.super Ljava/lang/Object;
.source "ModulusGF.java"


# static fields
.field public static final PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# instance fields
.field private final expTable:[I

.field private final logTable:[I

.field private final modulus:I

.field private final one:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

.field private final zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    const/16 v1, 0x3a1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .parameter "modulus"
    .parameter "generator"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    .line 37
    new-array v2, p1, [I

    iput-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    .line 38
    new-array v2, p1, [I

    iput-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    .line 39
    const/4 v1, 0x1

    .line 40
    .local v1, x:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 41
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    aput v1, v2, v0

    .line 42
    mul-int v2, v1, p2

    rem-int v1, v2, p1

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    aget v3, v3, v0

    aput v0, v2, v3

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_1
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    new-array v3, v5, [I

    aput v4, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    iput-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .line 49
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    iput-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->one:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .line 50
    return-void
.end method


# virtual methods
.method add(II)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 74
    add-int v0, p1, p2

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    rem-int/2addr v0, v1

    return v0
.end method

.method buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 2
    .parameter "degree"
    .parameter "coefficient"

    .prologue
    .line 62
    if-gez p1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 66
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .line 70
    :goto_0
    return-object v1

    .line 68
    :cond_1
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [I

    .line 69
    .local v0, coefficients:[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 70
    new-instance v1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    goto :goto_0
.end method

.method exp(I)I
    .locals 1
    .parameter "a"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    aget v0, v0, p1

    return v0
.end method

.method getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->one:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    return-object v0
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    return v0
.end method

.method getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    return-object v0
.end method

.method inverse(I)I
    .locals 3
    .parameter "a"

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method log(I)I
    .locals 1
    .parameter "a"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    aget v0, v0, p1

    return v0
.end method

.method multiply(II)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    add-int/lit8 v2, v2, -0x1

    rem-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_0
.end method

.method subtract(II)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 78
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    rem-int/2addr v0, v1

    return v0
.end method
