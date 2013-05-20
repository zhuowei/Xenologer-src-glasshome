.class public final Lcom/google/zxing/client/j2se/MatrixToImageConfig;
.super Ljava/lang/Object;
.source "MatrixToImageConfig.java"


# static fields
.field public static final BLACK:I = -0x1000000

.field public static final WHITE:I = -0x1


# instance fields
.field private final offColor:I

.field private final onColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const/high16 v0, -0x100

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/client/j2se/MatrixToImageConfig;-><init>(II)V

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "onColor"
    .parameter "offColor"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->onColor:I

    .line 46
    iput p2, p0, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->offColor:I

    .line 47
    return-void
.end method


# virtual methods
.method getBufferedImageColorModel()I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->onColor:I

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->offColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPixelOffColor()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->offColor:I

    return v0
.end method

.method public getPixelOnColor()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->onColor:I

    return v0
.end method
