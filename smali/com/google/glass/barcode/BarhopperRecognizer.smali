.class public Lcom/google/glass/barcode/BarhopperRecognizer;
.super Ljava/lang/Object;
.source "BarhopperRecognizer.java"

# interfaces
.implements Lcom/google/glass/barcode/BarcodeRecognizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recognize([BII)Lcom/google/android/libraries/barhopper/Barcode;
    .locals 2
    .parameter "yuvData"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode;

    invoke-direct {v0}, Lcom/google/android/libraries/barhopper/Barcode;-><init>()V

    .line 14
    .local v0, barcode:Lcom/google/android/libraries/barhopper/Barcode;
    invoke-static {p2, p3, p1, v0}, Lcom/google/android/libraries/barhopper/Barhopper;->recognize2D(II[BLcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v1

    .line 15
    .local v1, recognized:Z
    if-nez v1, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 19
    .end local v0           #barcode:Lcom/google/android/libraries/barhopper/Barcode;
    :cond_0
    return-object v0
.end method
