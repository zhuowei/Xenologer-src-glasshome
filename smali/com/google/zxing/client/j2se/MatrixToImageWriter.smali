.class public final Lcom/google/zxing/client/j2se/MatrixToImageWriter;
.super Ljava/lang/Object;
.source "MatrixToImageWriter.java"


# static fields
.field private static final DEFAULT_CONFIG:Lcom/google/zxing/client/j2se/MatrixToImageConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/zxing/client/j2se/MatrixToImageConfig;

    invoke-direct {v0}, Lcom/google/zxing/client/j2se/MatrixToImageConfig;-><init>()V

    sput-object v0, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->DEFAULT_CONFIG:Lcom/google/zxing/client/j2se/MatrixToImageConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toBufferedImage(Lcom/google/zxing/common/BitMatrix;)Ljava/awt/image/BufferedImage;
    .locals 1
    .parameter "matrix"

    .prologue
    .line 45
    sget-object v0, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->DEFAULT_CONFIG:Lcom/google/zxing/client/j2se/MatrixToImageConfig;

    invoke-static {p0, v0}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->toBufferedImage(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static toBufferedImage(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)Ljava/awt/image/BufferedImage;
    .locals 8
    .parameter "matrix"
    .parameter "config"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    .line 53
    .local v4, width:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 54
    .local v0, height:I
    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->getBufferedImageColorModel()I

    move-result v7

    invoke-direct {v1, v4, v0, v7}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 55
    .local v1, image:Ljava/awt/image/BufferedImage;
    invoke-virtual {p1}, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->getPixelOnColor()I

    move-result v3

    .line 56
    .local v3, onColor:I
    invoke-virtual {p1}, Lcom/google/zxing/client/j2se/MatrixToImageConfig;->getPixelOffColor()I

    move-result v2

    .line 57
    .local v2, offColor:I
    const/4 v5, 0x0

    .local v5, x:I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 58
    const/4 v6, 0x0

    .local v6, y:I
    :goto_1
    if-ge v6, v0, :cond_1

    .line 59
    invoke-virtual {p0, v5, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v3

    :goto_2
    invoke-virtual {v1, v5, v6, v7}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 58
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v7, v2

    .line 59
    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    .end local v6           #y:I
    :cond_2
    return-object v1
.end method

.method public static writeToFile(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .parameter "matrix"
    .parameter "format"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->DEFAULT_CONFIG:Lcom/google/zxing/client/j2se/MatrixToImageConfig;

    invoke-static {p0, p1, p2, v0}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->writeToFile(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/File;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)V

    .line 72
    return-void
.end method

.method public static writeToFile(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/File;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)V
    .locals 4
    .parameter "matrix"
    .parameter "format"
    .parameter "file"
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p0, p3}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->toBufferedImage(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 80
    .local v0, image:Ljava/awt/image/BufferedImage;
    invoke-static {v0, p1, p2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write an image of format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    return-void
.end method

.method public static writeToStream(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "matrix"
    .parameter "format"
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->DEFAULT_CONFIG:Lcom/google/zxing/client/j2se/MatrixToImageConfig;

    invoke-static {p0, p1, p2, v0}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->writeToStream(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/OutputStream;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)V

    .line 92
    return-void
.end method

.method public static writeToStream(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/OutputStream;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)V
    .locals 4
    .parameter "matrix"
    .parameter "format"
    .parameter "stream"
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p0, p3}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->toBufferedImage(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/client/j2se/MatrixToImageConfig;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 100
    .local v0, image:Ljava/awt/image/BufferedImage;
    invoke-static {v0, p1, p2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write an image of format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    return-void
.end method
