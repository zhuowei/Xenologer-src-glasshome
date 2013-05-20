.class public Lcom/google/glass/barcode/BarcodeScanner$Builder;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/barcode/BarcodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final cameraFrameModulus:I

.field private final scanTimeoutNanos:J


# direct methods
.method constructor <init>(IJ)V
    .locals 0
    .parameter "cameraFrameModulus"
    .parameter "scanTimeoutNanos"

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput p1, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->cameraFrameModulus:I

    .line 268
    iput-wide p2, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->scanTimeoutNanos:J

    .line 269
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;)Lcom/google/glass/barcode/BarcodeScanner;
    .locals 6
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 280
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner;

    iget v2, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->cameraFrameModulus:I

    iget-wide v3, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->scanTimeoutNanos:J

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/barcode/BarcodeScanner;-><init>(Landroid/content/Context;IJLcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;)V

    return-object v0
.end method

.method public withCameraFrameModulus(I)Lcom/google/glass/barcode/BarcodeScanner$Builder;
    .locals 3
    .parameter "cameraFrameModulus"

    .prologue
    .line 272
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$Builder;

    iget-wide v1, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->scanTimeoutNanos:J

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/barcode/BarcodeScanner$Builder;-><init>(IJ)V

    return-object v0
.end method

.method public withScanTimeoutNanos(J)Lcom/google/glass/barcode/BarcodeScanner$Builder;
    .locals 2
    .parameter "scanTimeoutNanos"

    .prologue
    .line 276
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$Builder;

    iget v1, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->cameraFrameModulus:I

    invoke-direct {v0, v1, p1, p2}, Lcom/google/glass/barcode/BarcodeScanner$Builder;-><init>(IJ)V

    return-object v0
.end method
