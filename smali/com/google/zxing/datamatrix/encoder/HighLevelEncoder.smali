.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field static final ASCII_ENCODATION:I = 0x0

.field static final BASE256_ENCODATION:I = 0x5

.field static final C40_ENCODATION:I = 0x1

.field static final C40_UNLATCH:C = '\u00fe'

.field static final EDIFACT_ENCODATION:I = 0x4

.field static final LATCH_TO_ANSIX12:C = '\u00ee'

.field static final LATCH_TO_BASE256:C = '\u00e7'

.field static final LATCH_TO_C40:C = '\u00e6'

.field static final LATCH_TO_EDIFACT:C = '\u00f0'

.field static final LATCH_TO_TEXT:C = '\u00ef'

.field private static final MACRO_05:C = '\u00ec'

.field private static final MACRO_05_HEADER:Ljava/lang/String; = "[)>\u001e05\u001d"

.field private static final MACRO_06:C = '\u00ed'

.field private static final MACRO_06_HEADER:Ljava/lang/String; = "[)>\u001e06\u001d"

.field private static final MACRO_TRAILER:Ljava/lang/String; = "\u001e\u0004"

.field private static final PAD:C = '\u0081'

.field static final TEXT_ENCODATION:I = 0x2

.field static final UPPER_SHIFT:C = '\u00eb'

.field static final X12_ENCODATION:I = 0x3

.field static final X12_UNLATCH:C = '\u00fe'


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5
    .parameter "msg"
    .parameter "startpos"

    .prologue
    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, count:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 426
    .local v3, len:I
    move v2, p1

    .line 427
    .local v2, idx:I
    if-ge v2, v3, :cond_1

    .line 428
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 429
    .local v0, ch:C
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v2, v3, :cond_1

    .line 430
    add-int/lit8 v1, v1, 0x1

    .line 431
    add-int/lit8 v2, v2, 0x1

    .line 432
    if-ge v2, v3, :cond_0

    .line 433
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 437
    .end local v0           #ch:C
    :cond_1
    return v1
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 140
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    invoke-static {p0, v0, v1, v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .locals 11
    .parameter "msg"
    .parameter "shape"
    .parameter "minSize"
    .parameter "maxSize"

    .prologue
    const/16 v10, 0x81

    const/4 v9, 0x5

    const/4 v8, 0x2

    .line 159
    const/4 v6, 0x6

    new-array v3, v6, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    aput-object v7, v3, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    aput-object v7, v3, v6

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    aput-object v6, v3, v8

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    aput-object v7, v3, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v7}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    aput-object v7, v3, v6

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    aput-object v6, v3, v9

    .line 164
    .local v3, encoders:[Lcom/google/zxing/datamatrix/encoder/Encoder;
    new-instance v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v2, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, context:Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    invoke-virtual {v2, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    .line 166
    invoke-virtual {v2, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    .line 168
    const-string v6, "[)>\u001e05\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    const/16 v6, 0xec

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 170
    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 171
    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string v7, "[)>\u001e05\u001d"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 178
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 179
    .local v4, encodingMode:I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 180
    aget-object v6, v3, v4

    invoke-interface {v6, v2}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    .line 181
    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    if-ltz v6, :cond_1

    .line 182
    iget v4, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 183
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_1

    .line 172
    .end local v4           #encodingMode:I
    :cond_2
    const-string v6, "[)>\u001e06\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    const/16 v6, 0xed

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 174
    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 175
    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string v7, "[)>\u001e06\u001d"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    .line 186
    .restart local v4       #encodingMode:I
    :cond_3
    iget-object v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 187
    .local v5, len:I
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 188
    iget-object v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    iget v0, v6, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 189
    .local v0, capacity:I
    if-ge v5, v0, :cond_4

    .line 190
    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_4

    .line 191
    const/16 v6, 0xfe

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 195
    :cond_4
    iget-object v1, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    .line 196
    .local v1, codewords:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, v0, :cond_5

    .line 197
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, v0, :cond_6

    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v10, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->randomize253State(CI)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 203
    :cond_6
    iget-object v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static findMinimums([F[II[B)I
    .locals 5
    .parameter "charCounts"
    .parameter "intCharCounts"
    .parameter "min"
    .parameter "mins"

    .prologue
    const/4 v4, 0x0

    .line 358
    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 359
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 360
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    .line 361
    aget v0, p1, v1

    .line 362
    .local v0, current:I
    if-le p2, v0, :cond_0

    .line 363
    move p2, v0

    .line 364
    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 366
    :cond_0
    if-ne p2, v0, :cond_1

    .line 367
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 359
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v0           #current:I
    :cond_2
    return p2
.end method

.method public static getBytesForMessage(Ljava/lang/String;)[B
    .locals 1
    .parameter "msg"

    .prologue
    .line 123
    const-string v0, "cp437"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getMinimumCount([B)I
    .locals 3
    .parameter "mins"

    .prologue
    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, minCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 377
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return v1
.end method

.method static illegalCharacter(C)V
    .locals 5
    .parameter "c"

    .prologue
    .line 441
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, hex:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 383
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isExtendedASCII(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 387
    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNativeC40(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 391
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNativeEDIFACT(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 409
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNativeText(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 395
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNativeX12(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 399
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSpecialB256(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method private static isX12TermSep(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 403
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .locals 14
    .parameter "msg"
    .parameter "startpos"
    .parameter "currentMode"

    .prologue
    .line 207
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt p1, v9, :cond_0

    .line 350
    .end local p2
    :goto_0
    return p2

    .line 212
    .restart local p2
    :cond_0
    if-nez p2, :cond_2

    .line 213
    const/4 v9, 0x6

    new-array v1, v9, [F

    fill-array-data v1, :array_0

    .line 219
    .local v1, charCounts:[F
    :goto_1
    const/4 v2, 0x0

    .line 222
    .local v2, charsProcessed:I
    :cond_1
    add-int v9, p1, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_8

    .line 223
    const v4, 0x7fffffff

    .line 224
    .local v4, min:I
    const/4 v9, 0x6

    new-array v6, v9, [B

    .line 225
    .local v6, mins:[B
    const/4 v9, 0x6

    new-array v3, v9, [I

    .line 226
    .local v3, intCharCounts:[I
    invoke-static {v1, v3, v4, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v4

    .line 227
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    .line 229
    .local v5, minCount:I
    const/4 v9, 0x0

    aget v9, v3, v9

    if-ne v9, v4, :cond_3

    .line 230
    const/16 p2, 0x0

    goto :goto_0

    .line 215
    .end local v1           #charCounts:[F
    .end local v2           #charsProcessed:I
    .end local v3           #intCharCounts:[I
    .end local v4           #min:I
    .end local v5           #minCount:I
    .end local v6           #mins:[B
    :cond_2
    const/4 v9, 0x6

    new-array v1, v9, [F

    fill-array-data v1, :array_1

    .line 216
    .restart local v1       #charCounts:[F
    const/4 v9, 0x0

    aput v9, v1, p2

    goto :goto_1

    .line 232
    .restart local v2       #charsProcessed:I
    .restart local v3       #intCharCounts:[I
    .restart local v4       #min:I
    .restart local v5       #minCount:I
    .restart local v6       #mins:[B
    :cond_3
    const/4 v9, 0x1

    if-ne v5, v9, :cond_4

    const/4 v9, 0x5

    aget-byte v9, v6, v9

    if-lez v9, :cond_4

    .line 233
    const/16 p2, 0x5

    goto :goto_0

    .line 235
    :cond_4
    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_5

    .line 236
    const/16 p2, 0x4

    goto :goto_0

    .line 238
    :cond_5
    const/4 v9, 0x1

    if-ne v5, v9, :cond_6

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_6

    .line 239
    const/16 p2, 0x2

    goto :goto_0

    .line 241
    :cond_6
    const/4 v9, 0x1

    if-ne v5, v9, :cond_7

    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_7

    .line 242
    const/16 p2, 0x3

    goto :goto_0

    .line 244
    :cond_7
    const/16 p2, 0x1

    goto :goto_0

    .line 247
    .end local v3           #intCharCounts:[I
    .end local v4           #min:I
    .end local v5           #minCount:I
    .end local v6           #mins:[B
    :cond_8
    add-int v9, p1, v2

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 248
    .local v0, c:C
    add-int/lit8 v2, v2, 0x1

    .line 251
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 252
    const/4 v9, 0x0

    aget v10, v1, v9

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe0

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v1, v9

    .line 262
    :goto_2
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 263
    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 271
    :goto_3
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 272
    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 280
    :goto_4
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 281
    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x3f2aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 289
    :goto_5
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 290
    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x3f40

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 298
    :goto_6
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 299
    const/4 v9, 0x5

    aget v10, v1, v9

    const/high16 v11, 0x4080

    add-float/2addr v10, v11

    aput v10, v1, v9

    .line 305
    :goto_7
    const/4 v9, 0x4

    if-lt v2, v9, :cond_1

    .line 306
    const/4 v9, 0x6

    new-array v3, v9, [I

    .line 307
    .restart local v3       #intCharCounts:[I
    const/4 v9, 0x6

    new-array v6, v9, [B

    .line 308
    .restart local v6       #mins:[B
    const v9, 0x7fffffff

    invoke-static {v1, v3, v9, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    .line 309
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    .line 311
    .restart local v5       #minCount:I
    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x5

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_14

    .line 316
    const/16 p2, 0x0

    goto/16 :goto_0

    .line 253
    .end local v3           #intCharCounts:[I
    .end local v5           #minCount:I
    .end local v6           #mins:[B
    :cond_9
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 254
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v10, v10

    aput v10, v1, v9

    .line 255
    const/4 v9, 0x0

    aget v10, v1, v9

    const/high16 v11, 0x4000

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_2

    .line 257
    :cond_a
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v10, v10

    aput v10, v1, v9

    .line 258
    const/4 v9, 0x0

    aget v10, v1, v9

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_2

    .line 264
    :cond_b
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 265
    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x402aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_3

    .line 267
    :cond_c
    const/4 v9, 0x1

    aget v10, v1, v9

    const v11, 0x3faaaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_3

    .line 273
    :cond_d
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 274
    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x402aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_4

    .line 276
    :cond_e
    const/4 v9, 0x2

    aget v10, v1, v9

    const v11, 0x3faaaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_4

    .line 282
    :cond_f
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 283
    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x408aaaab

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_5

    .line 285
    :cond_10
    const/4 v9, 0x3

    aget v10, v1, v9

    const v11, 0x40555555

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_5

    .line 291
    :cond_11
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 292
    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x4088

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_6

    .line 294
    :cond_12
    const/4 v9, 0x4

    aget v10, v1, v9

    const/high16 v11, 0x4050

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_6

    .line 301
    :cond_13
    const/4 v9, 0x5

    aget v10, v1, v9

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    aput v10, v1, v9

    goto/16 :goto_7

    .line 318
    .restart local v3       #intCharCounts:[I
    .restart local v5       #minCount:I
    .restart local v6       #mins:[B
    :cond_14
    const/4 v9, 0x5

    aget v9, v3, v9

    const/4 v10, 0x0

    aget v10, v3, v10

    if-lt v9, v10, :cond_15

    const/4 v9, 0x1

    aget-byte v9, v6, v9

    const/4 v10, 0x2

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x3

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x4

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    if-nez v9, :cond_16

    .line 320
    :cond_15
    const/16 p2, 0x5

    goto/16 :goto_0

    .line 322
    :cond_16
    const/4 v9, 0x1

    if-ne v5, v9, :cond_17

    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_17

    .line 323
    const/16 p2, 0x4

    goto/16 :goto_0

    .line 325
    :cond_17
    const/4 v9, 0x1

    if-ne v5, v9, :cond_18

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_18

    .line 326
    const/16 p2, 0x2

    goto/16 :goto_0

    .line 328
    :cond_18
    const/4 v9, 0x1

    if-ne v5, v9, :cond_19

    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_19

    .line 329
    const/16 p2, 0x3

    goto/16 :goto_0

    .line 331
    :cond_19
    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_1

    .line 335
    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ge v9, v10, :cond_1a

    .line 336
    const/16 p2, 0x1

    goto/16 :goto_0

    .line 338
    :cond_1a
    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ne v9, v10, :cond_1

    .line 339
    add-int v9, p1, v2

    add-int/lit8 v7, v9, 0x1

    .line 340
    .local v7, p:I
    :goto_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v7, v9, :cond_1c

    .line 341
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 342
    .local v8, tc:C
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 343
    const/16 p2, 0x3

    goto/16 :goto_0

    .line 345
    :cond_1b
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 350
    .end local v8           #tc:C
    :cond_1c
    const/16 p2, 0x1

    goto/16 :goto_0

    .line 348
    .restart local v8       #tc:C
    :cond_1d
    add-int/lit8 v7, v7, 0x1

    .line 349
    goto :goto_8

    .line 213
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0xa0t 0x3ft
    .end array-data

    .line 215
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x10t 0x40t
    .end array-data
.end method

.method private static randomize253State(CI)C
    .locals 3
    .parameter "ch"
    .parameter "codewordPosition"

    .prologue
    .line 127
    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xfd

    add-int/lit8 v0, v2, 0x1

    .line 128
    .local v0, pseudoRandom:I
    add-int v1, p0, v0

    .line 129
    .local v1, tempVariable:I
    const/16 v2, 0xfe

    if-gt v1, v2, :cond_0

    int-to-char v2, v1

    :goto_0
    return v2

    :cond_0
    add-int/lit16 v2, v1, -0xfe

    int-to-char v2, v2

    goto :goto_0
.end method
