.class public Lcom/google/android/libraries/barhopper/Barcode;
.super Ljava/lang/Object;
.source "Barcode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/barhopper/Barcode$WiFi;
    }
.end annotation


# static fields
.field public static final CODABAR:I = 0x4

.field public static final CODE_128:I = 0x1

.field public static final CODE_39:I = 0x2

.field public static final CODE_93:I = 0x3

.field public static final CONTACT_INFO:I = 0x1

.field public static final DATA_MATRIX:I = 0x5

.field public static final EAN_13:I = 0x6

.field public static final EAN_8:I = 0x7

.field public static final EMAIL:I = 0x2

.field public static final ISBN:I = 0x3

.field public static final ITF:I = 0x8

.field public static final PHONE:I = 0x4

.field public static final PRODUCT:I = 0x5

.field public static final QR_CODE:I = 0x9

.field public static final SMS:I = 0x6

.field public static final TEXT:I = 0x7

.field public static final UPC_A:I = 0xa

.field public static final UPC_E:I = 0xb

.field public static final URL:I = 0x8

.field public static final WIFI:I = 0x9


# instance fields
.field public cornerPoints:[Landroid/graphics/Point;

.field public displayValue:Ljava/lang/String;

.field public format:I

.field public rawValue:Ljava/lang/String;

.field public valueFormat:I

.field public wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 98
    const v2, 0x7fffffff

    .line 99
    .local v2, left:I
    const/high16 v4, -0x8000

    .line 100
    .local v4, right:I
    const v5, 0x7fffffff

    .line 101
    .local v5, top:I
    const/high16 v0, -0x8000

    .line 103
    .local v0, bottom:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 104
    iget-object v6, p0, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    aget-object v3, v6, v1

    .line 105
    .local v3, point:Landroid/graphics/Point;
    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 106
    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 107
    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 108
    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v3           #point:Landroid/graphics/Point;
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method
