.class final Lcom/google/zxing/client/j2se/DecodeWorker;
.super Ljava/lang/Object;
.source "DecodeWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final config:Lcom/google/zxing/client/j2se/Config;

.field private final inputs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V
    .locals 0
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/j2se/Config;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, inputs:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    .line 60
    iput-object p2, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->inputs:Ljava/util/Queue;

    .line 61
    return-void
.end method

.method private decode(Ljava/net/URI;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 13
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    .local p2, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Ljavax/imageio/ImageIO;->read(Ljava/net/URL;)Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    .local v1, image:Ljava/awt/image/BufferedImage;
    if-nez v1, :cond_1

    .line 147
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Could not load image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    const/4 v11, 0x0

    .line 181
    :cond_0
    :goto_0
    return-object v11

    .line 143
    .end local v1           #image:Ljava/awt/image/BufferedImage;
    :catch_0
    move-exception v9

    .line 144
    .local v9, ignored:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    .end local v9           #ignored:Ljava/lang/IllegalArgumentException;
    .restart local v1       #image:Ljava/awt/image/BufferedImage;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v2}, Lcom/google/zxing/client/j2se/Config;->getCrop()[I

    move-result-object v2

    if-nez v2, :cond_3

    .line 153
    new-instance v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    invoke-direct {v0, v1}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;)V

    .line 158
    .local v0, source:Lcom/google/zxing/LuminanceSource;
    :goto_1
    new-instance v6, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v6, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 159
    .local v6, bitmap:Lcom/google/zxing/BinaryBitmap;
    iget-object v2, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v2}, Lcom/google/zxing/client/j2se/Config;->isDumpBlackPoint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-static {p1, v1, v6}, Lcom/google/zxing/client/j2se/DecodeWorker;->dumpBlackPoint(Ljava/net/URI;Ljava/awt/image/BufferedImage;Lcom/google/zxing/BinaryBitmap;)V

    .line 162
    :cond_2
    new-instance v2, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    invoke-virtual {v2, v6, p2}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v11

    .line 163
    .local v11, result:Lcom/google/zxing/Result;
    iget-object v2, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v2}, Lcom/google/zxing/client/j2se/Config;->isBrief()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 179
    .end local v0           #source:Lcom/google/zxing/LuminanceSource;
    .end local v6           #bitmap:Lcom/google/zxing/BinaryBitmap;
    .end local v11           #result:Lcom/google/zxing/Result;
    :catch_1
    move-exception v9

    .line 180
    .local v9, ignored:Lcom/google/zxing/NotFoundException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": No barcode found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 155
    .end local v9           #ignored:Lcom/google/zxing/NotFoundException;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v2}, Lcom/google/zxing/client/j2se/Config;->getCrop()[I

    move-result-object v7

    .line 156
    .local v7, crop:[I
    new-instance v0, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v3, 0x1

    aget v3, v7, v3

    const/4 v4, 0x2

    aget v4, v7, v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;IIII)V

    .restart local v0       #source:Lcom/google/zxing/LuminanceSource;
    goto :goto_1

    .line 166
    .end local v7           #crop:[I
    .restart local v6       #bitmap:Lcom/google/zxing/BinaryBitmap;
    .restart local v11       #result:Lcom/google/zxing/Result;
    :cond_4
    invoke-static {v11}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v10

    .line 167
    .local v10, parsedResult:Lcom/google/zxing/client/result/ParsedResult;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):\nRaw result:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nParsed result:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result points."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    array-length v2, v2

    if-ge v8, v2, :cond_0

    .line 173
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    aget-object v12, v2, v8

    .line 174
    .local v12, rp:Lcom/google/zxing/ResultPoint;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Point "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 172
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private decodeMulti(Ljava/net/URI;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 21
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    .local p2, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-static {v4}, Ljavax/imageio/ImageIO;->read(Ljava/net/URL;)Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 192
    .local v3, image:Ljava/awt/image/BufferedImage;
    if-nez v3, :cond_1

    .line 193
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Could not load image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    const/16 v19, 0x0

    .line 234
    :cond_0
    :goto_0
    return-object v19

    .line 189
    .end local v3           #image:Ljava/awt/image/BufferedImage;
    :catch_0
    move-exception v13

    .line 190
    .local v13, ignored:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    .end local v13           #ignored:Ljava/lang/IllegalArgumentException;
    .restart local v3       #image:Ljava/awt/image/BufferedImage;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v4}, Lcom/google/zxing/client/j2se/Config;->getCrop()[I

    move-result-object v4

    if-nez v4, :cond_3

    .line 199
    new-instance v2, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    invoke-direct {v2, v3}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;)V

    .line 204
    .local v2, source:Lcom/google/zxing/LuminanceSource;
    :goto_1
    new-instance v9, Lcom/google/zxing/BinaryBitmap;

    new-instance v4, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v4, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v9, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 205
    .local v9, bitmap:Lcom/google/zxing/BinaryBitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v4}, Lcom/google/zxing/client/j2se/Config;->isDumpBlackPoint()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    move-object/from16 v0, p1

    invoke-static {v0, v3, v9}, Lcom/google/zxing/client/j2se/DecodeWorker;->dumpBlackPoint(Ljava/net/URI;Ljava/awt/image/BufferedImage;Lcom/google/zxing/BinaryBitmap;)V

    .line 209
    :cond_2
    new-instance v15, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v15}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 210
    .local v15, multiFormatReader:Lcom/google/zxing/MultiFormatReader;
    new-instance v17, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;-><init>(Lcom/google/zxing/Reader;)V

    .line 212
    .local v17, reader:Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v1}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v19

    .line 214
    .local v19, results:[Lcom/google/zxing/Result;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v4}, Lcom/google/zxing/client/j2se/Config;->isBrief()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 215
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Success"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 232
    .end local v2           #source:Lcom/google/zxing/LuminanceSource;
    .end local v9           #bitmap:Lcom/google/zxing/BinaryBitmap;
    .end local v15           #multiFormatReader:Lcom/google/zxing/MultiFormatReader;
    .end local v17           #reader:Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
    .end local v19           #results:[Lcom/google/zxing/Result;
    :catch_1
    move-exception v13

    .line 233
    .local v13, ignored:Lcom/google/zxing/NotFoundException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": No barcode found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 201
    .end local v13           #ignored:Lcom/google/zxing/NotFoundException;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v4}, Lcom/google/zxing/client/j2se/Config;->getCrop()[I

    move-result-object v10

    .line 202
    .local v10, crop:[I
    new-instance v2, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    const/4 v6, 0x2

    aget v6, v10, v6

    const/4 v7, 0x3

    aget v7, v10, v7

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;IIII)V

    .restart local v2       #source:Lcom/google/zxing/LuminanceSource;
    goto/16 :goto_1

    .line 217
    .end local v10           #crop:[I
    .restart local v9       #bitmap:Lcom/google/zxing/BinaryBitmap;
    .restart local v15       #multiFormatReader:Lcom/google/zxing/MultiFormatReader;
    .restart local v17       #reader:Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
    .restart local v19       #results:[Lcom/google/zxing/Result;
    :cond_4
    move-object/from16 v8, v19

    .local v8, arr$:[Lcom/google/zxing/Result;
    array-length v14, v8

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_2
    if-ge v12, v14, :cond_0

    aget-object v18, v8, v12

    .line 218
    .local v18, result:Lcom/google/zxing/Result;
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v16

    .line 219
    .local v16, parsedResult:Lcom/google/zxing/client/result/ParsedResult;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):\nRaw result:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nParsed result:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result points."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    array-length v4, v4

    if-ge v11, v4, :cond_5

    .line 226
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    aget-object v20, v4, v11

    .line 227
    .local v20, rp:Lcom/google/zxing/ResultPoint;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Point "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 225
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 217
    .end local v20           #rp:Lcom/google/zxing/ResultPoint;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2
.end method

.method private static dumpBlackPoint(Ljava/net/URI;Ljava/awt/image/BufferedImage;Lcom/google/zxing/BinaryBitmap;)V
    .locals 21
    .parameter "uri"
    .parameter "image"
    .parameter "bitmap"

    .prologue
    .line 245
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 246
    .local v12, inputName:Ljava/lang/String;
    const-string v2, ".mono.png"

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v5

    .line 251
    .local v5, width:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v14

    .line 252
    .local v14, height:I
    mul-int/lit8 v19, v5, 0x3

    .line 253
    .local v19, stride:I
    mul-int v2, v19, v14

    new-array v10, v2, [I

    .line 256
    .local v10, pixels:[I
    new-array v7, v5, [I

    .line 257
    .local v7, argb:[I
    const/4 v4, 0x0

    .local v4, y:I
    :goto_1
    if-ge v4, v14, :cond_1

    .line 258
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move v9, v5

    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 259
    const/4 v2, 0x0

    mul-int v3, v4, v19

    invoke-static {v7, v2, v10, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 263
    :cond_1
    new-instance v18, Lcom/google/zxing/common/BitArray;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 264
    .local v18, row:Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_4

    .line 266
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 276
    mul-int v2, v4, v19

    add-int v17, v2, v5

    .line 277
    .local v17, offset:I
    const/16 v20, 0x0

    .local v20, x:I
    :goto_3
    move/from16 v0, v20

    if-ge v0, v5, :cond_3

    .line 278
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    add-int v2, v17, v20

    const/high16 v3, -0x100

    aput v3, v10, v2

    .line 277
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 267
    .end local v17           #offset:I
    .end local v20           #x:I
    :catch_0
    move-exception v16

    .line 269
    .local v16, nfe:Lcom/google/zxing/NotFoundException;
    mul-int v2, v4, v19

    add-int v17, v2, v5

    .line 270
    .restart local v17       #offset:I
    const/16 v20, 0x0

    .restart local v20       #x:I
    :goto_5
    move/from16 v0, v20

    if-ge v0, v5, :cond_3

    .line 271
    add-int v2, v17, v20

    const/high16 v3, -0x1

    aput v3, v10, v2

    .line 270
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 281
    .end local v16           #nfe:Lcom/google/zxing/NotFoundException;
    :cond_2
    add-int v2, v17, v20

    const/4 v3, -0x1

    aput v3, v10, v2

    goto :goto_4

    .line 264
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 288
    .end local v17           #offset:I
    .end local v20           #x:I
    :cond_4
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v14, :cond_6

    .line 289
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v15

    .line 290
    .local v15, matrix:Lcom/google/zxing/common/BitMatrix;
    mul-int v2, v4, v19

    mul-int/lit8 v3, v5, 0x2

    add-int v17, v2, v3

    .line 291
    .restart local v17       #offset:I
    const/16 v20, 0x0

    .restart local v20       #x:I
    :goto_7
    move/from16 v0, v20

    if-ge v0, v5, :cond_7

    .line 292
    move/from16 v0, v20

    invoke-virtual {v15, v0, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 293
    add-int v2, v17, v20

    const/high16 v3, -0x100

    aput v3, v10, v2

    .line 291
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 295
    :cond_5
    add-int v2, v17, v20

    const/4 v3, -0x1

    aput v3, v10, v2
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 299
    .end local v15           #matrix:Lcom/google/zxing/common/BitMatrix;
    .end local v17           #offset:I
    .end local v20           #x:I
    :catch_1
    move-exception v2

    .line 303
    :cond_6
    const-string v13, ".mono.png"

    move/from16 v8, v19

    move v9, v14

    move-object/from16 v11, p0

    invoke-static/range {v8 .. v13}, Lcom/google/zxing/client/j2se/DecodeWorker;->writeResultImage(II[ILjava/net/URI;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    .restart local v15       #matrix:Lcom/google/zxing/common/BitMatrix;
    .restart local v17       #offset:I
    .restart local v20       #x:I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method

.method private static dumpResult(Ljava/io/File;Lcom/google/zxing/Result;)V
    .locals 5
    .parameter "input"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, name:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 100
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 101
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, dump:Ljava/io/File;
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/zxing/client/j2se/DecodeWorker;->writeStringToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 105
    return-void
.end method

.method private static dumpResultMulti(Ljava/io/File;[Lcom/google/zxing/Result;)V
    .locals 5
    .parameter "input"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, name:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 110
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 111
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 113
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, dump:Ljava/io/File;
    invoke-static {p1, v0}, Lcom/google/zxing/client/j2se/DecodeWorker;->writeResultsToFile([Lcom/google/zxing/Result;Ljava/io/File;)V

    .line 115
    return-void
.end method

.method private static writeResultImage(II[ILjava/net/URI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "stride"
    .parameter "height"
    .parameter "pixels"
    .parameter "uri"
    .parameter "inputName"
    .parameter "suffix"

    .prologue
    .line 313
    new-instance v1, Ljava/awt/image/BufferedImage;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 314
    .local v1, result:Ljava/awt/image/BufferedImage;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move v4, p0

    move v5, p1

    move-object/from16 v6, p2

    move v8, p0

    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    .line 317
    move-object/from16 v13, p4

    .line 318
    .local v13, resultName:Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual/range {p3 .. p3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const/16 v2, 0x2f

    invoke-virtual {v13, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 320
    .local v12, pos:I
    if-lez v12, :cond_0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 324
    .end local v12           #pos:I
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v13, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 325
    .restart local v12       #pos:I
    if-lez v12, :cond_1

    .line 326
    const/4 v2, 0x0

    invoke-virtual {v13, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 328
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 329
    const/4 v10, 0x0

    .line 331
    .local v10, outStream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 332
    .end local v10           #outStream:Ljava/io/OutputStream;
    .local v11, outStream:Ljava/io/OutputStream;
    :try_start_1
    const-string v2, "png"

    invoke-static {v1, v2, v11}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 333
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not encode an image to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 341
    :cond_2
    if-eqz v11, :cond_3

    .line 342
    :try_start_2
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v10, v11

    .line 348
    .end local v11           #outStream:Ljava/io/OutputStream;
    .restart local v10       #outStream:Ljava/io/OutputStream;
    :cond_4
    :goto_0
    return-void

    .line 344
    .end local v10           #outStream:Ljava/io/OutputStream;
    .restart local v11       #outStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    move-object v10, v11

    .line 347
    .end local v11           #outStream:Ljava/io/OutputStream;
    .restart local v10       #outStream:Ljava/io/OutputStream;
    goto :goto_0

    .line 335
    :catch_1
    move-exception v9

    .line 336
    .local v9, ignored:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    if-eqz v10, :cond_4

    .line 342
    :try_start_4
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 344
    :catch_2
    move-exception v2

    goto :goto_0

    .line 337
    .end local v9           #ignored:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v9

    .line 338
    .local v9, ignored:Ljava/io/IOException;
    :goto_2
    :try_start_5
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not write to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 341
    if-eqz v10, :cond_4

    .line 342
    :try_start_6
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 344
    :catch_4
    move-exception v2

    goto :goto_0

    .line 340
    .end local v9           #ignored:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 341
    :goto_3
    if-eqz v10, :cond_5

    .line 342
    :try_start_7
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 346
    :cond_5
    :goto_4
    throw v2

    .line 344
    :catch_5
    move-exception v3

    goto :goto_4

    .line 340
    .end local v10           #outStream:Ljava/io/OutputStream;
    .restart local v11       #outStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v10, v11

    .end local v11           #outStream:Ljava/io/OutputStream;
    .restart local v10       #outStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 337
    .end local v10           #outStream:Ljava/io/OutputStream;
    .restart local v11       #outStream:Ljava/io/OutputStream;
    :catch_6
    move-exception v9

    move-object v10, v11

    .end local v11           #outStream:Ljava/io/OutputStream;
    .restart local v10       #outStream:Ljava/io/OutputStream;
    goto :goto_2

    .line 335
    .end local v10           #outStream:Ljava/io/OutputStream;
    .restart local v11       #outStream:Ljava/io/OutputStream;
    :catch_7
    move-exception v9

    move-object v10, v11

    .end local v11           #outStream:Ljava/io/OutputStream;
    .restart local v10       #outStream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private static writeResultsToFile([Lcom/google/zxing/Result;Ljava/io/File;)V
    .locals 8
    .parameter "results"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, newline:Ljava/lang/String;
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v7, "UTF8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 130
    .local v4, out:Ljava/io/Writer;
    move-object v0, p0

    .local v0, arr$:[Lcom/google/zxing/Result;
    :try_start_0
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 131
    .local v5, result:Lcom/google/zxing/Result;
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v5           #result:Lcom/google/zxing/Result;
    :cond_0
    invoke-virtual {v4}, Ljava/io/Writer;->close()V

    .line 137
    return-void

    .line 135
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/io/Writer;->close()V

    throw v6
.end method

.method private static writeStringToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .parameter "value"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "UTF8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 120
    .local v0, out:Ljava/io/Writer;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v4, 0x0

    .line 67
    .local v4, successful:I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->inputs:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, input:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, inputFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    iget-object v5, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v5}, Lcom/google/zxing/client/j2se/Config;->isMulti()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v6}, Lcom/google/zxing/client/j2se/Config;->getHints()Ljava/util/Map;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/zxing/client/j2se/DecodeWorker;->decodeMulti(Ljava/net/URI;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v3

    .line 72
    .local v3, results:[Lcom/google/zxing/Result;
    if-eqz v3, :cond_0

    .line 73
    add-int/lit8 v4, v4, 0x1

    .line 74
    iget-object v5, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v5}, Lcom/google/zxing/client/j2se/Config;->isDumpResults()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    invoke-static {v1, v3}, Lcom/google/zxing/client/j2se/DecodeWorker;->dumpResultMulti(Ljava/io/File;[Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 79
    .end local v3           #results:[Lcom/google/zxing/Result;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v6}, Lcom/google/zxing/client/j2se/Config;->getHints()Ljava/util/Map;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/zxing/client/j2se/DecodeWorker;->decode(Ljava/net/URI;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2

    .line 80
    .local v2, result:Lcom/google/zxing/Result;
    if-eqz v2, :cond_0

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    iget-object v5, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v5}, Lcom/google/zxing/client/j2se/Config;->isDumpResults()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-static {v1, v2}, Lcom/google/zxing/client/j2se/DecodeWorker;->dumpResult(Ljava/io/File;Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 88
    .end local v2           #result:Lcom/google/zxing/Result;
    :cond_2
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/client/j2se/DecodeWorker;->config:Lcom/google/zxing/client/j2se/Config;

    invoke-virtual {v6}, Lcom/google/zxing/client/j2se/Config;->getHints()Ljava/util/Map;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/zxing/client/j2se/DecodeWorker;->decode(Ljava/net/URI;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    .end local v1           #inputFile:Ljava/io/File;
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/DecodeWorker;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
