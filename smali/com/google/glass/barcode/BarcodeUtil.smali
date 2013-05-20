.class public Lcom/google/glass/barcode/BarcodeUtil;
.super Ljava/lang/Object;
.source "BarcodeUtil.java"


# static fields
.field private static final QUIET_ZONE_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/barcode/BarcodeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/barcode/BarcodeUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 12
    .parameter "bitmap"

    .prologue
    const/4 v9, 0x0

    .line 32
    if-nez p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v9

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode;

    invoke-direct {v0}, Lcom/google/android/libraries/barhopper/Barcode;-><init>()V

    .line 38
    .local v0, barcode:Lcom/google/android/libraries/barhopper/Barcode;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 39
    .local v6, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 41
    .local v2, height:I
    mul-int v10, v6, v2

    new-array v3, v10, [B

    .line 42
    .local v3, lums:[B
    const/4 v7, 0x0

    .local v7, x:I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 43
    const/4 v8, 0x0

    .local v8, y:I
    :goto_2
    if-ge v8, v2, :cond_2

    .line 44
    invoke-virtual {p0, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 45
    .local v4, pixel:I
    mul-int v10, v8, v6

    add-int/2addr v10, v7

    and-int/lit16 v11, v4, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 43
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 42
    .end local v4           #pixel:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 48
    .end local v8           #y:I
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v10, v11, v3, v0}, Lcom/google/android/libraries/barhopper/Barhopper;->recognize2D(II[BLcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v5

    .line 49
    .local v5, result:Z
    if-eqz v5, :cond_0

    .line 50
    iget-object v9, v0, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v2           #height:I
    .end local v3           #lums:[B
    .end local v5           #result:Z
    .end local v6           #width:I
    .end local v7           #x:I
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/Exception;
    sget-object v10, Lcom/google/glass/barcode/BarcodeUtil;->TAG:Ljava/lang/String;

    const-string v11, "Error parsing bitmap"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static str2QrBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "content"
    .parameter "preferredWidth"
    .parameter "preferredHeight"

    .prologue
    .line 62
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const/4 v2, 0x0

    .line 106
    :goto_0
    return-object v2

    .line 66
    :cond_0
    const/4 v10, 0x0

    .line 68
    .local v10, code:Lcom/google/zxing/qrcode/encoder/QRCode;
    :try_start_0
    sget-object v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 74
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object v15

    .line 75
    .local v15, qrMatrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    invoke-virtual {v15}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v16

    .line 76
    .local v16, qrWidth:I
    invoke-virtual {v15}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v14

    .line 77
    .local v14, qrHeight:I
    add-int/lit8 v4, v16, 0x8

    move/from16 v0, p1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 78
    .local v5, resultWidth:I
    add-int/lit8 v4, v14, 0x8

    move/from16 v0, p2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 81
    .local v9, resultHeight:I
    add-int/lit8 v4, v5, -0x8

    div-int v4, v4, v16

    add-int/lit8 v6, v9, -0x8

    div-int/2addr v6, v14

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 84
    .local v19, scale:I
    mul-int v4, v16, v19

    sub-int v4, v5, v4

    div-int/lit8 v17, v4, 0x2

    .line 85
    .local v17, resultLeftPadding:I
    mul-int v4, v14, v19

    sub-int v4, v9, v4

    div-int/lit8 v18, v4, 0x2

    .line 87
    .local v18, resultTopPadding:I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 88
    .local v3, pixels:[I
    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 89
    const/16 v22, 0x0

    .local v22, y:I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v14, :cond_3

    .line 90
    mul-int v4, v22, v19

    add-int v4, v4, v18

    mul-int/2addr v4, v5

    add-int v13, v4, v17

    .line 91
    .local v13, offset:I
    const/16 v21, 0x0

    .local v21, x:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 92
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 95
    mul-int v4, v21, v19

    add-int v20, v13, v4

    .line 96
    .local v20, start:I
    const/4 v12, 0x0

    .local v12, k:I
    :goto_3
    move/from16 v0, v19

    if-ge v12, v0, :cond_1

    .line 97
    add-int v4, v20, v19

    const/high16 v6, -0x100

    move/from16 v0, v20

    invoke-static {v3, v0, v4, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 98
    add-int v20, v20, v5

    .line 96
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 69
    .end local v3           #pixels:[I
    .end local v5           #resultWidth:I
    .end local v9           #resultHeight:I
    .end local v12           #k:I
    .end local v13           #offset:I
    .end local v14           #qrHeight:I
    .end local v15           #qrMatrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .end local v16           #qrWidth:I
    .end local v17           #resultLeftPadding:I
    .end local v18           #resultTopPadding:I
    .end local v19           #scale:I
    .end local v20           #start:I
    .end local v21           #x:I
    .end local v22           #y:I
    :catch_0
    move-exception v11

    .line 70
    .local v11, e:Lcom/google/zxing/WriterException;
    sget-object v4, Lcom/google/glass/barcode/BarcodeUtil;->TAG:Ljava/lang/String;

    const-string v6, "error converting string to qr bitmap"

    invoke-static {v4, v6, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 91
    .end local v11           #e:Lcom/google/zxing/WriterException;
    .restart local v3       #pixels:[I
    .restart local v5       #resultWidth:I
    .restart local v9       #resultHeight:I
    .restart local v13       #offset:I
    .restart local v14       #qrHeight:I
    .restart local v15       #qrMatrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .restart local v16       #qrWidth:I
    .restart local v17       #resultLeftPadding:I
    .restart local v18       #resultTopPadding:I
    .restart local v19       #scale:I
    .restart local v21       #x:I
    .restart local v22       #y:I
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 89
    :cond_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 104
    .end local v13           #offset:I
    .end local v21           #x:I
    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 105
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method
