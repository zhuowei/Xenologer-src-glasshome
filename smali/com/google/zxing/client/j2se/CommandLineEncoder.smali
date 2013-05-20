.class public final Lcom/google/zxing/client/j2se/CommandLineEncoder;
.super Ljava/lang/Object;
.source "CommandLineEncoder.java"


# static fields
.field private static final DEFAULT_BARCODE_FORMAT:Lcom/google/zxing/BarcodeFormat; = null

.field private static final DEFAULT_HEIGHT:I = 0x12c

.field private static final DEFAULT_IMAGE_FORMAT:Ljava/lang/String; = "PNG"

.field private static final DEFAULT_OUTPUT_FILE:Ljava/lang/String; = "out"

.field private static final DEFAULT_WIDTH:I = 0x12c


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    sput-object v0, Lcom/google/zxing/client/j2se/CommandLineEncoder;->DEFAULT_BARCODE_FORMAT:Lcom/google/zxing/BarcodeFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 43
    array-length v12, p0

    if-nez v12, :cond_0

    .line 44
    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineEncoder;->printUsage()V

    .line 87
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-object v2, Lcom/google/zxing/client/j2se/CommandLineEncoder;->DEFAULT_BARCODE_FORMAT:Lcom/google/zxing/BarcodeFormat;

    .line 49
    .local v2, barcodeFormat:Lcom/google/zxing/BarcodeFormat;
    const-string v7, "PNG"

    .line 50
    .local v7, imageFormat:Ljava/lang/String;
    const-string v10, "out"

    .line 51
    .local v10, outFileString:Ljava/lang/String;
    const/16 v11, 0x12c

    .line 52
    .local v11, width:I
    const/16 v5, 0x12c

    .line 53
    .local v5, height:I
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v8, :cond_6

    aget-object v0, v1, v6

    .line 54
    .local v0, arg:Ljava/lang/String;
    const-string v12, "--barcode_format"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 55
    const-string v12, "="

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v13

    invoke-static {v12}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v2

    .line 53
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 56
    :cond_2
    const-string v12, "--image_format"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 57
    const-string v12, "="

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v7, v12, v13

    goto :goto_2

    .line 58
    :cond_3
    const-string v12, "--output"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 59
    const-string v12, "="

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v10, v12, v13

    goto :goto_2

    .line 60
    :cond_4
    const-string v12, "--width"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 61
    const-string v12, "="

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_2

    .line 62
    :cond_5
    const-string v12, "--height"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 63
    const-string v12, "="

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 67
    .end local v0           #arg:Ljava/lang/String;
    :cond_6
    const-string v12, "out"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 68
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 71
    :cond_7
    const/4 v4, 0x0

    .line 72
    .local v4, contents:Ljava/lang/String;
    move-object v1, p0

    array-length v8, v1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_8

    aget-object v0, v1, v6

    .line 73
    .restart local v0       #arg:Ljava/lang/String;
    const-string v12, "--"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 74
    move-object v4, v0

    .line 79
    .end local v0           #arg:Ljava/lang/String;
    :cond_8
    if-nez v4, :cond_a

    .line 80
    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineEncoder;->printUsage()V

    goto/16 :goto_0

    .line 72
    .restart local v0       #arg:Ljava/lang/String;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 84
    .end local v0           #arg:Ljava/lang/String;
    :cond_a
    new-instance v3, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v3}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 85
    .local v3, barcodeWriter:Lcom/google/zxing/MultiFormatWriter;
    invoke-virtual {v3, v4, v2, v11, v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    .line 86
    .local v9, matrix:Lcom/google/zxing/common/BitMatrix;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v7, v12}, Lcom/google/zxing/client/j2se/MatrixToImageWriter;->writeToFile(Lcom/google/zxing/common/BitMatrix;Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_0
.end method

.method private static printUsage()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Encodes barcode images using the ZXing library\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: CommandLineEncoder [ options ] content_to_encode"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  --barcode_format=format: Format to encode, from BarcodeFormat class. Not all formats are supported. Defaults to QR_CODE."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  --image_format=format: image output format, such as PNG, JPG, GIF. Defaults to PNG"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  --output=filename: File to write to. Defaults to out.png"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  --width=pixels: Image width. Defaults to 300"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  --height=pixels: Image height. Defaults to 300"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    return-void
.end method
