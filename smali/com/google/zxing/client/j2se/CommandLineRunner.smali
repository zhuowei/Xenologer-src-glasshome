.class public final Lcom/google/zxing/client/j2se/CommandLineRunner;
.super Ljava/lang/Object;
.source "CommandLineRunner.java"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern; = null

.field private static final POSSIBLE_FORMATS_ARG:Ljava/lang/String; = "--possibleFormats="


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/j2se/CommandLineRunner;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static addArgumentToInputs(Ljava/lang/String;Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V
    .locals 8
    .parameter "argument"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/client/j2se/Config;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    .local p2, inputs:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, inputFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 131
    .local v5, singleFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, filename:Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 130
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/google/zxing/client/j2se/Config;->isRecursive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/google/zxing/client/j2se/CommandLineRunner;->addArgumentToInputs(Ljava/lang/String;Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V

    goto :goto_1

    .line 144
    :cond_2
    const-string v6, ".txt"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ".mono.png"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 147
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #singleFile:Ljava/io/File;
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_4
    :goto_2
    return-void

    .line 153
    :cond_5
    invoke-interface {p2, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static buildHints(Lcom/google/zxing/client/j2se/Config;)Ljava/util/Map;
    .locals 9
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/j2se/Config;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v5, possibleFormats:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/Config;->getPossibleFormats()[Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, possibleFormatsNames:[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 162
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 163
    .local v1, format:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #format:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/Config;->isProductsOnly()Z

    move-result v7

    if-nez v7, :cond_1

    .line 173
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    new-instance v2, Ljava/util/EnumMap;

    const-class v7, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v2, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 186
    .local v2, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    sget-object v7, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/Config;->isTryHarder()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 188
    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/client/j2se/Config;->isPureBarcode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 191
    sget-object v7, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_3
    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 20
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 54
    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineRunner;->printUsage()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v3, Lcom/google/zxing/client/j2se/Config;

    invoke-direct {v3}, Lcom/google/zxing/client/j2se/Config;-><init>()V

    .line 60
    .local v3, config:Lcom/google/zxing/client/j2se/Config;
    move-object/from16 v2, p0

    .local v2, arr$:[Ljava/lang/String;
    array-length v11, v2

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v11, :cond_e

    aget-object v1, v2, v9

    .line 61
    .local v1, arg:Ljava/lang/String;
    const-string v17, "--try_harder"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 62
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/zxing/client/j2se/Config;->setTryHarder(Z)V

    .line 60
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 63
    :cond_3
    const-string v17, "--pure_barcode"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 64
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/zxing/client/j2se/Config;->setPureBarcode(Z)V

    goto :goto_2

    .line 65
    :cond_4
    const-string v17, "--products_only"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 66
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/zxing/client/j2se/Config;->setProductsOnly(Z)V

    goto :goto_2

    .line 67
    :cond_5
    const-string v17, "--dump_results"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 68
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/zxing/client/j2se/Config;->setDumpResults(Z)V

    goto :goto_2

    .line 69
    :cond_6
    const-string v17, "--dump_black_point"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 70
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/zxing/client/j2se/Config;->setDumpBlackPoint(Z)V

    goto :goto_2

    .line 71
    :cond_7
    const-string v17, "--multi"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 72
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/zxing/client/j2se/Config;->setMulti(Z)V

    goto :goto_2

    .line 73
    :cond_8
    const-string v17, "--brief"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 74
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/zxing/client/j2se/Config;->setBrief(Z)V

    goto :goto_2

    .line 75
    :cond_9
    const-string v17, "--recursive"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 76
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/zxing/client/j2se/Config;->setRecursive(Z)V

    goto :goto_2

    .line 77
    :cond_a
    const-string v17, "--crop"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 78
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v4, v0, [I

    .line 79
    .local v4, crop:[I
    sget-object v17, Lcom/google/zxing/client/j2se/CommandLineRunner;->COMMA:Ljava/util/regex/Pattern;

    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v14

    .line 80
    .local v14, tokens:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_b

    .line 81
    aget-object v17, v14, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    aput v17, v4, v8

    .line 80
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 83
    :cond_b
    invoke-virtual {v3, v4}, Lcom/google/zxing/client/j2se/Config;->setCrop([I)V

    goto/16 :goto_2

    .line 84
    .end local v4           #crop:[I
    .end local v8           #i:I
    .end local v14           #tokens:[Ljava/lang/String;
    :cond_c
    const-string v17, "--possibleFormats="

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 85
    sget-object v17, Lcom/google/zxing/client/j2se/CommandLineRunner;->COMMA:Ljava/util/regex/Pattern;

    const-string v18, "--possibleFormats="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/zxing/client/j2se/Config;->setPossibleFormats([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 86
    :cond_d
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 87
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown command line option "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/google/zxing/client/j2se/CommandLineRunner;->printUsage()V

    goto/16 :goto_0

    .line 92
    .end local v1           #arg:Ljava/lang/String;
    :cond_e
    invoke-static {v3}, Lcom/google/zxing/client/j2se/CommandLineRunner;->buildHints(Lcom/google/zxing/client/j2se/Config;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/zxing/client/j2se/Config;->setHints(Ljava/util/Map;)V

    .line 94
    new-instance v10, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 95
    .local v10, inputs:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/String;>;"
    move-object/from16 v2, p0

    array-length v11, v2

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v11, :cond_10

    aget-object v1, v2, v9

    .line 96
    .restart local v1       #arg:Ljava/lang/String;
    const-string v17, "--"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 97
    invoke-static {v1, v3, v10}, Lcom/google/zxing/client/j2se/CommandLineRunner;->addArgumentToInputs(Ljava/lang/String;Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V

    .line 95
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 101
    .end local v1           #arg:Ljava/lang/String;
    :cond_10
    invoke-interface {v10}, Ljava/util/Queue;->size()I

    move-result v17

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 102
    .local v12, numThreads:I
    const/4 v13, 0x0

    .line 103
    .local v13, successful:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v12, v0, :cond_12

    .line 104
    invoke-static {v12}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 105
    .local v5, executor:Ljava/util/concurrent/ExecutorService;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v7, futures:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    const/16 v16, 0x0

    .local v16, x:I
    :goto_5
    move/from16 v0, v16

    if-ge v0, v12, :cond_11

    .line 107
    new-instance v17, Lcom/google/zxing/client/j2se/DecodeWorker;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v10}, Lcom/google/zxing/client/j2se/DecodeWorker;-><init>(Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 109
    :cond_11
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 110
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    .line 111
    .local v6, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v13, v13, v17

    goto :goto_6

    .line 114
    .end local v5           #executor:Ljava/util/concurrent/ExecutorService;
    .end local v6           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    .end local v7           #futures:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    .end local v16           #x:I
    .local v9, i$:I
    :cond_12
    new-instance v17, Lcom/google/zxing/client/j2se/DecodeWorker;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v10}, Lcom/google/zxing/client/j2se/DecodeWorker;-><init>(Lcom/google/zxing/client/j2se/Config;Ljava/util/Queue;)V

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/client/j2se/DecodeWorker;->call()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v13, v13, v17

    .line 117
    .end local v9           #i$:I
    :cond_13
    invoke-interface {v10}, Ljava/util/Queue;->size()I

    move-result v15

    .line 118
    .local v15, total:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_0

    .line 119
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\nDecoded "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " files out of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " successfully ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    mul-int/lit8 v19, v13, 0x64

    div-int v19, v19, v15

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%)\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static printUsage()V
    .locals 7

    .prologue
    .line 197
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Decode barcode images using the ZXing library"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 199
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "usage: CommandLineRunner { file | dir | url } [ options ]"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --try_harder: Use the TRY_HARDER hint, default is normal (mobile) mode"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --pure_barcode: Input image is a pure monochrome barcode image, not a photo"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --products_only: Only decode the UPC and EAN families of barcodes"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --dump_results: Write the decoded contents to input.txt"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --dump_black_point: Compare black point algorithms as input.mono.png"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --multi: Scans image for multiple barcodes"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --brief: Only output one line per file, omitting the contents"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --recursive: Descend into subdirectories"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "  --crop=left,top,width,height: Only examine cropped region of input image(s)"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "  --possibleFormats=barcodeFormat[,barcodeFormat2...] where barcodeFormat is any of: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/zxing/BarcodeFormat;->values()[Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .local v0, arr$:[Lcom/google/zxing/BarcodeFormat;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 212
    .local v2, format:Lcom/google/zxing/BarcodeFormat;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .end local v2           #format:Lcom/google/zxing/BarcodeFormat;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 215
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 216
    return-void
.end method
