.class public final Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "BufferedImageLuminanceSource.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final EXPLICIT_LUMINANCE_CONVERSION:Z = false

.field private static final MINUS_45_IN_RADIANS:D = -0.7853981633974483


# instance fields
.field private final image:Ljava/awt/image/BufferedImage;

.field private final left:I

.field private final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v1, "explicitLuminanceConversion"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, property:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 45
    const-string v1, "EXPLICIT_LUMINANCE_CONVERSION"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->EXPLICIT_LUMINANCE_CONVERSION:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 6
    .parameter "image"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;IIII)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;IIII)V
    .locals 15
    .parameter "image"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 55
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 57
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 58
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    .line 119
    :cond_0
    :goto_0
    move/from16 v0, p2

    iput v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->left:I

    .line 120
    move/from16 v0, p3

    iput v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->top:I

    .line 121
    return-void

    .line 60
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    .line 61
    .local v9, sourceWidth:I
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v13

    .line 62
    .local v13, sourceHeight:I
    add-int v2, p2, p4

    if-gt v2, v9, :cond_2

    add-int v2, p3, p5

    if-le v2, v13, :cond_3

    .line 63
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Crop rectangle does not fit within image data."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_3
    new-instance v2, Ljava/awt/image/BufferedImage;

    const/16 v3, 0xa

    invoke-direct {v2, v9, v13, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    iput-object v2, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    .line 68
    sget-boolean v2, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->EXPLICIT_LUMINANCE_CONVERSION:Z

    if-eqz v2, :cond_6

    .line 70
    iget-object v2, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v11

    .line 71
    .local v11, raster:Ljava/awt/image/WritableRaster;
    move/from16 v0, p4

    new-array v7, v0, [I

    .line 72
    .local v7, buffer:[I
    move/from16 v4, p3

    .local v4, y:I
    :goto_1
    add-int v2, p3, p5

    if-ge v4, v2, :cond_0

    .line 73
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 74
    const/4 v14, 0x0

    .local v14, x:I
    :goto_2
    move/from16 v0, p4

    if-ge v14, v0, :cond_5

    .line 75
    aget v10, v7, v14

    .line 78
    .local v10, pixel:I
    const/high16 v2, -0x100

    and-int/2addr v2, v10

    if-nez v2, :cond_4

    .line 79
    const/4 v10, -0x1

    .line 83
    :cond_4
    shr-int/lit8 v2, v10, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x132

    shr-int/lit8 v3, v10, 0x8

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v3, v3, 0x259

    add-int/2addr v2, v3

    and-int/lit16 v3, v10, 0xff

    mul-int/lit8 v3, v3, 0x75

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x200

    shr-int/lit8 v2, v2, 0xa

    aput v2, v7, v14

    .line 74
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 89
    .end local v10           #pixel:I
    :cond_5
    const/4 v6, 0x1

    move-object v2, v11

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 97
    .end local v4           #y:I
    .end local v7           #buffer:[I
    .end local v11           #raster:Ljava/awt/image/WritableRaster;
    .end local v14           #x:I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getAlphaRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 98
    move/from16 v0, p4

    new-array v7, v0, [I

    .line 99
    .restart local v7       #buffer:[I
    move/from16 v4, p3

    .restart local v4       #y:I
    :goto_3
    add-int v2, p3, p5

    if-ge v4, v2, :cond_a

    .line 100
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 101
    const/4 v12, 0x0

    .line 102
    .local v12, rowChanged:Z
    const/4 v14, 0x0

    .restart local v14       #x:I
    :goto_4
    move/from16 v0, p4

    if-ge v14, v0, :cond_8

    .line 103
    aget v2, v7, v14

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    .line 104
    const/4 v2, -0x1

    aput v2, v7, v14

    .line 105
    const/4 v12, 0x1

    .line 102
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 108
    :cond_8
    if-eqz v12, :cond_9

    .line 109
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    .line 99
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 115
    .end local v4           #y:I
    .end local v7           #buffer:[I
    .end local v12           #rowChanged:Z
    .end local v14           #x:I
    :cond_a
    iget-object v2, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v5, v6}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 155
    new-instance v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    iget v2, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->left:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->top:I

    add-int/2addr v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;IIII)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 7

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getWidth()I

    move-result v3

    .line 140
    .local v3, width:I
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getHeight()I

    move-result v4

    .line 141
    .local v4, height:I
    mul-int v6, v3, v4

    .line 142
    .local v6, area:I
    new-array v5, v6, [B

    .line 144
    .local v5, matrix:[B
    iget-object v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->left:I

    iget v2, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->top:I

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-object v5
.end method

.method public getRow(I[B)[B
    .locals 6
    .parameter "y"
    .parameter "row"

    .prologue
    .line 125
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getHeight()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested row is outside the image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getWidth()I

    move-result v3

    .line 129
    .local v3, width:I
    if-eqz p2, :cond_2

    array-length v0, p2

    if-ge v0, v3, :cond_3

    .line 130
    :cond_2
    new-array p2, v3, [B

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->left:I

    iget v2, p0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->top:I

    add-int/2addr v2, p1

    const/4 v4, 0x1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-object p2
.end method

.method public isCropSupported()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public isRotateSupported()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
    .locals 17

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v16

    .line 171
    .local v16, sourceWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v15

    .line 174
    .local v15, sourceHeight:I
    new-instance v1, Ljava/awt/geom/AffineTransform;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010

    const-wide/high16 v6, 0x3ff0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move/from16 v0, v16

    int-to-double v12, v0

    invoke-direct/range {v1 .. v13}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    .line 177
    .local v1, transform:Ljava/awt/geom/AffineTransform;
    new-instance v3, Ljava/awt/image/BufferedImage;

    const/16 v2, 0xa

    move/from16 v0, v16

    invoke-direct {v3, v15, v0, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 180
    .local v3, rotatedImage:Ljava/awt/image/BufferedImage;
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v14

    .line 181
    .local v14, g:Ljava/awt/Graphics2D;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v1, v4}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 182
    invoke-virtual {v14}, Ljava/awt/Graphics2D;->dispose()V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getWidth()I

    move-result v7

    .line 186
    .local v7, width:I
    new-instance v2, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->top:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->left:I

    add-int/2addr v5, v7

    sub-int v5, v16, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getHeight()I

    move-result v6

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;IIII)V

    return-object v2
.end method

.method public rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;
    .locals 17

    .prologue
    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getWidth()I

    move-result v16

    .line 192
    .local v16, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->getHeight()I

    move-result v9

    .line 194
    .local v9, height:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->left:I

    div-int/lit8 v5, v16, 0x2

    add-int v12, v1, v5

    .line 195
    .local v12, oldCenterX:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->top:I

    div-int/lit8 v5, v9, 0x2

    add-int v13, v1, v5

    .line 198
    .local v13, oldCenterY:I
    const-wide v1, -0x4016de04abbbd2e8L

    int-to-double v3, v12

    int-to-double v5, v13

    invoke-static/range {v1 .. v6}, Ljava/awt/geom/AffineTransform;->getRotateInstance(DDD)Ljava/awt/geom/AffineTransform;

    move-result-object v15

    .line 200
    .local v15, transform:Ljava/awt/geom/AffineTransform;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 201
    .local v14, sourceDimension:I
    new-instance v2, Ljava/awt/image/BufferedImage;

    const/16 v1, 0xa

    invoke-direct {v2, v14, v14, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 204
    .local v2, rotatedImage:Ljava/awt/image/BufferedImage;
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v7

    .line 205
    .local v7, g:Ljava/awt/Graphics2D;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;->image:Ljava/awt/image/BufferedImage;

    const/4 v5, 0x0

    invoke-virtual {v7, v1, v15, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 206
    invoke-virtual {v7}, Ljava/awt/Graphics2D;->dispose()V

    .line 208
    move/from16 v0, v16

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v8, v1, 0x2

    .line 209
    .local v8, halfDimension:I
    const/4 v1, 0x0

    sub-int v5, v12, v8

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 210
    .local v3, newLeft:I
    const/4 v1, 0x0

    sub-int v5, v13, v8

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 211
    .local v4, newTop:I
    add-int/lit8 v1, v14, -0x1

    add-int v5, v12, v8

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 212
    .local v11, newRight:I
    add-int/lit8 v1, v14, -0x1

    add-int v5, v13, v8

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 214
    .local v10, newBottom:I
    new-instance v1, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    sub-int v5, v11, v3

    sub-int v6, v10, v4

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;IIII)V

    return-object v1
.end method
