.class public Lcom/google/glass/barcode/BarhopperRecognizer;
.super Ljava/lang/Object;
.source "BarhopperRecognizer.java"

# interfaces
.implements Lcom/google/glass/barcode/BarcodeRecognizer;


# static fields
.field private static final barcodeYData:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/glass/barcode/BarhopperRecognizer;->barcodeYData:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recognize([BII)Lcom/google/android/libraries/barhopper/Barcode;
    .locals 10
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 19
    mul-int v3, p2, p3

    .line 22
    .local v3, size:I
    sget-object v8, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v8}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v8

    if-eqz v8, :cond_2

    array-length v8, p1

    shl-int/lit8 v9, v3, 0x2

    if-ne v8, v9, :cond_2

    .line 25
    const/4 v6, 0x0

    .line 26
    .local v6, yIndex:I
    const/4 v2, 0x0

    .line 28
    .local v2, rgbaIndex:I
    sget-object v8, Lcom/google/glass/barcode/BarhopperRecognizer;->barcodeYData:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 30
    .local v5, yData:[B
    if-eqz v5, :cond_0

    array-length v8, v5

    if-eq v8, v3, :cond_1

    .line 31
    :cond_0
    new-array v5, v3, [B

    .line 32
    sget-object v8, Lcom/google/glass/barcode/BarhopperRecognizer;->barcodeYData:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 35
    :cond_1
    const/4 v4, 0x0

    .local v4, x:I
    move v7, v6

    .end local v6           #yIndex:I
    .local v7, yIndex:I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 36
    add-int/lit8 v6, v7, 0x1

    .end local v7           #yIndex:I
    .restart local v6       #yIndex:I
    aget-byte v8, p1, v2

    mul-int/lit8 v8, v8, 0x36

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, p1, v9

    mul-int/lit16 v9, v9, 0xb7

    add-int/2addr v8, v9

    add-int/lit8 v9, v2, 0x2

    aget-byte v9, p1, v9

    mul-int/lit8 v9, v9, 0x13

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 39
    add-int/lit8 v2, v2, 0x4

    .line 35
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #yIndex:I
    .restart local v7       #yIndex:I
    goto :goto_0

    .line 43
    .end local v2           #rgbaIndex:I
    .end local v4           #x:I
    .end local v5           #yData:[B
    .end local v7           #yIndex:I
    :cond_2
    move-object v5, p1

    .line 46
    .restart local v5       #yData:[B
    :cond_3
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode;

    invoke-direct {v0}, Lcom/google/android/libraries/barhopper/Barcode;-><init>()V

    .line 47
    .local v0, barcode:Lcom/google/android/libraries/barhopper/Barcode;
    invoke-static {p2, p3, v5, v0}, Lcom/google/android/libraries/barhopper/Barhopper;->recognize2D(II[BLcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v1

    .line 49
    .local v1, recognized:Z
    if-nez v1, :cond_4

    .line 50
    const/4 v0, 0x0

    .line 53
    .end local v0           #barcode:Lcom/google/android/libraries/barhopper/Barcode;
    :cond_4
    return-object v0
.end method
