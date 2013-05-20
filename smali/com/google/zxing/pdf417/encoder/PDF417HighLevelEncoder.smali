.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final BYTE_COMPACTION:I = 0x1

.field private static final LATCH_TO_BYTE:I = 0x39c

.field private static final LATCH_TO_BYTE_PADDED:I = 0x385

.field private static final LATCH_TO_NUMERIC:I = 0x386

.field private static final LATCH_TO_TEXT:I = 0x384

.field private static final MIXED:[B = null

.field private static final NUMERIC_COMPACTION:I = 0x2

.field private static final PUNCTUATION:[B = null

.field private static final SHIFT_TO_BYTE:I = 0x391

.field private static final SUBMODE_ALPHA:I = 0x0

.field private static final SUBMODE_LOWER:I = 0x1

.field private static final SUBMODE_MIXED:I = 0x2

.field private static final SUBMODE_PUNCTUATION:I = 0x3

.field private static final TEXT_COMPACTION:I

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0x1e

    const/4 v3, -0x1

    .line 97
    new-array v2, v4, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 104
    new-array v2, v4, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    .line 108
    new-array v2, v5, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 109
    new-array v2, v5, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 116
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 117
    const/4 v1, 0x0

    .local v1, i:B
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 118
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    aget-byte v0, v2, v1

    .line 119
    .local v0, b:B
    if-lez v0, :cond_0

    .line 120
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aput-byte v1, v2, v0

    .line 117
    :cond_0
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_0

    .line 123
    .end local v0           #b:B
    :cond_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 124
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 125
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    aget-byte v0, v2, v1

    .line 126
    .restart local v0       #b:B
    if-lez v0, :cond_2

    .line 127
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aput-byte v1, v2, v0

    .line 124
    :cond_2
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_1

    .line 130
    .end local v0           #b:B
    :cond_3
    return-void

    .line 97
    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 104
    nop

    :array_1
    .array-data 0x1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method private static determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I
    .locals 10
    .parameter "msg"
    .parameter "bytes"
    .parameter "startpos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3f

    const/16 v8, 0xd

    const/4 v7, 0x5

    .line 517
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 518
    .local v3, len:I
    move v2, p2

    .line 519
    .local v2, idx:I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 520
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 521
    .local v0, ch:C
    const/4 v4, 0x0

    .line 523
    .local v4, numericCount:I
    :goto_1
    if-ge v4, v8, :cond_0

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 524
    add-int/lit8 v4, v4, 0x1

    .line 526
    add-int v1, v2, v4

    .line 527
    .local v1, i:I
    if-lt v1, v3, :cond_1

    .line 532
    .end local v1           #i:I
    :cond_0
    if-lt v4, v8, :cond_2

    .line 533
    sub-int v6, v2, p2

    .line 557
    .end local v0           #ch:C
    .end local v4           #numericCount:I
    :goto_2
    return v6

    .line 530
    .restart local v0       #ch:C
    .restart local v1       #i:I
    .restart local v4       #numericCount:I
    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 531
    goto :goto_1

    .line 535
    .end local v1           #i:I
    :cond_2
    const/4 v5, 0x0

    .line 536
    .local v5, textCount:I
    :goto_3
    if-ge v5, v7, :cond_3

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 537
    add-int/lit8 v5, v5, 0x1

    .line 538
    add-int v1, v2, v5

    .line 539
    .restart local v1       #i:I
    if-lt v1, v3, :cond_4

    .line 544
    .end local v1           #i:I
    :cond_3
    if-lt v5, v7, :cond_5

    .line 545
    sub-int v6, v2, p2

    goto :goto_2

    .line 542
    .restart local v1       #i:I
    :cond_4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 543
    goto :goto_3

    .line 547
    .end local v1           #i:I
    :cond_5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 552
    aget-byte v6, p1, v2

    if-ne v6, v9, :cond_6

    if-eq v0, v9, :cond_6

    .line 553
    new-instance v6, Lcom/google/zxing/WriterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-encodable character detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (Unicode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 555
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 556
    goto :goto_0

    .line 557
    .end local v0           #ch:C
    .end local v4           #numericCount:I
    .end local v5           #textCount:I
    :cond_7
    sub-int v6, v2, p2

    goto :goto_2
.end method

.method private static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 5
    .parameter "msg"
    .parameter "startpos"

    .prologue
    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, count:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 455
    .local v3, len:I
    move v2, p1

    .line 456
    .local v2, idx:I
    if-ge v2, v3, :cond_1

    .line 457
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 458
    .local v0, ch:C
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v2, v3, :cond_1

    .line 459
    add-int/lit8 v1, v1, 0x1

    .line 460
    add-int/lit8 v2, v2, 0x1

    .line 461
    if-ge v2, v3, :cond_0

    .line 462
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 466
    .end local v0           #ch:C
    :cond_1
    return v1
.end method

.method private static determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I
    .locals 6
    .parameter "msg"
    .parameter "startpos"

    .prologue
    const/16 v5, 0xd

    .line 477
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 478
    .local v2, len:I
    move v1, p1

    .line 479
    .local v1, idx:I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_4

    .line 480
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 481
    .local v0, ch:C
    const/4 v3, 0x0

    .line 482
    .local v3, numericCount:I
    :cond_1
    :goto_1
    if-ge v3, v5, :cond_2

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ge v1, v2, :cond_2

    .line 483
    add-int/lit8 v3, v3, 0x1

    .line 484
    add-int/lit8 v1, v1, 0x1

    .line 485
    if-ge v1, v2, :cond_1

    .line 486
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 489
    :cond_2
    if-lt v3, v5, :cond_3

    .line 490
    sub-int v4, v1, p1

    sub-int/2addr v4, v3

    .line 504
    .end local v0           #ch:C
    .end local v3           #numericCount:I
    :goto_2
    return v4

    .line 492
    .restart local v0       #ch:C
    .restart local v3       #numericCount:I
    :cond_3
    if-gtz v3, :cond_0

    .line 496
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 499
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v4

    if-nez v4, :cond_5

    .line 504
    .end local v0           #ch:C
    .end local v3           #numericCount:I
    :cond_4
    sub-int v4, v1, p1

    goto :goto_2

    .line 502
    .restart local v0       #ch:C
    .restart local v3       #numericCount:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 503
    goto :goto_0
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .locals 8
    .parameter "bytes"
    .parameter "startpos"
    .parameter "count"
    .parameter "startmode"
    .parameter "sb"

    .prologue
    .line 361
    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    if-nez p3, :cond_0

    .line 362
    const/16 v6, 0x391

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    :cond_0
    move v3, p1

    .line 367
    .local v3, idx:I
    const/4 v6, 0x6

    if-lt p2, v6, :cond_4

    .line 368
    const/16 v6, 0x39c

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    const/4 v6, 0x5

    new-array v1, v6, [C

    .line 370
    .local v1, chars:[C
    :goto_0
    add-int v6, p1, p2

    sub-int/2addr v6, v3

    const/4 v7, 0x6

    if-lt v6, v7, :cond_4

    .line 371
    const-wide/16 v4, 0x0

    .line 372
    .local v4, t:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v6, 0x6

    if-ge v2, v6, :cond_1

    .line 373
    const/16 v6, 0x8

    shl-long/2addr v4, v6

    .line 374
    add-int v6, v3, v2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 376
    :cond_1
    const/4 v2, 0x0

    :goto_2
    const/4 v6, 0x5

    if-ge v2, v6, :cond_2

    .line 377
    const-wide/16 v6, 0x384

    rem-long v6, v4, v6

    long-to-int v6, v6

    int-to-char v6, v6

    aput-char v6, v1, v2

    .line 378
    const-wide/16 v6, 0x384

    div-long/2addr v4, v6

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 380
    :cond_2
    array-length v6, v1

    add-int/lit8 v2, v6, -0x1

    :goto_3
    if-ltz v2, :cond_3

    .line 381
    aget-char v6, v1, v2

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 383
    :cond_3
    add-int/lit8 v3, v3, 0x6

    .line 384
    goto :goto_0

    .line 387
    .end local v1           #chars:[C
    .end local v2           #i:I
    .end local v4           #t:J
    :cond_4
    add-int v6, p1, p2

    if-ge v3, v6, :cond_5

    .line 388
    const/16 v6, 0x385

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :cond_5
    move v2, v3

    .restart local v2       #i:I
    :goto_4
    add-int v6, p1, p2

    if-ge v2, v6, :cond_6

    .line 391
    aget-byte v6, p0, v2

    and-int/lit16 v0, v6, 0xff

    .line 392
    .local v0, ch:I
    int-to-char v6, v0

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 394
    .end local v0           #ch:I
    :cond_6
    return-void
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;)Ljava/lang/String;
    .locals 12
    .parameter "msg"
    .parameter "compaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x386

    const/4 v10, 0x1

    .line 152
    const/4 v1, 0x0

    .line 155
    .local v1, bytes:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 158
    .local v3, len:I
    const/4 v5, 0x0

    .line 159
    .local v5, p:I
    const/4 v8, 0x0

    .line 162
    .local v8, textSubMode:I
    sget-object v9, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v9, :cond_1

    .line 163
    invoke-static {p0, v5, v3, v6, v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 216
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 165
    :cond_1
    sget-object v9, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v9, :cond_2

    .line 166
    invoke-static {p0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->getBytesForMessage(Ljava/lang/String;)[B

    move-result-object v1

    .line 167
    array-length v9, v1

    invoke-static {v1, v5, v9, v10, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 169
    :cond_2
    sget-object v9, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne p1, v9, :cond_3

    .line 170
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {p0, v5, v3, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 174
    :cond_3
    const/4 v2, 0x0

    .line 175
    .local v2, encodingMode:I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 176
    invoke-static {p0, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 177
    .local v4, n:I
    const/16 v9, 0xd

    if-lt v4, v9, :cond_4

    .line 178
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    const/4 v2, 0x2

    .line 180
    const/4 v8, 0x0

    .line 181
    invoke-static {p0, v5, v4, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 182
    add-int/2addr v5, v4

    goto :goto_1

    .line 184
    :cond_4
    invoke-static {p0, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 185
    .local v7, t:I
    const/4 v9, 0x5

    if-ge v7, v9, :cond_5

    if-ne v4, v3, :cond_7

    .line 186
    :cond_5
    if-eqz v2, :cond_6

    .line 187
    const/16 v9, 0x384

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    const/4 v2, 0x0

    .line 189
    const/4 v8, 0x0

    .line 191
    :cond_6
    invoke-static {p0, v5, v7, v6, v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v8

    .line 192
    add-int/2addr v5, v7

    goto :goto_1

    .line 194
    :cond_7
    if-nez v1, :cond_8

    .line 195
    invoke-static {p0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->getBytesForMessage(Ljava/lang/String;)[B

    move-result-object v1

    .line 197
    :cond_8
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I

    move-result v0

    .line 198
    .local v0, b:I
    if-nez v0, :cond_9

    .line 199
    const/4 v0, 0x1

    .line 201
    :cond_9
    if-ne v0, v10, :cond_a

    if-nez v2, :cond_a

    .line 203
    const/4 v9, 0x0

    invoke-static {v1, v5, v10, v9, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 210
    :goto_2
    add-int/2addr v5, v0

    goto :goto_1

    .line 206
    :cond_a
    invoke-static {v1, v5, v0, v2, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 207
    const/4 v2, 0x1

    .line 208
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private static encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 12
    .parameter "msg"
    .parameter "startpos"
    .parameter "count"
    .parameter "sb"

    .prologue
    .line 397
    const/4 v3, 0x0

    .line 398
    .local v3, idx:I
    new-instance v8, Ljava/lang/StringBuilder;

    div-int/lit8 v9, p2, 0x3

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 399
    .local v8, tmp:Ljava/lang/StringBuilder;
    const-wide/16 v9, 0x384

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 400
    .local v6, num900:Ljava/math/BigInteger;
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 401
    .local v5, num0:Ljava/math/BigInteger;
    :goto_0
    add-int/lit8 v9, p2, -0x1

    if-ge v3, v9, :cond_2

    .line 402
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 403
    const/16 v9, 0x2c

    sub-int v10, p2, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 404
    .local v4, len:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x31

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int v10, p1, v3

    add-int v11, p1, v3

    add-int/2addr v11, v4

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, part:Ljava/lang/String;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, bigint:Ljava/math/BigInteger;
    :cond_0
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 408
    .local v1, c:Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 410
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 413
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 414
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 416
    :cond_1
    add-int/2addr v3, v4

    .line 417
    goto :goto_0

    .line 418
    .end local v0           #bigint:Ljava/math/BigInteger;
    .end local v1           #c:Ljava/math/BigInteger;
    .end local v2           #i:I
    .end local v4           #len:I
    .end local v7           #part:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .locals 11
    .parameter "msg"
    .parameter "startpos"
    .parameter "count"
    .parameter "sb"
    .parameter "initialSubmode"

    .prologue
    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 236
    .local v8, tmp:Ljava/lang/StringBuilder;
    move v7, p4

    .line 237
    .local v7, submode:I
    const/4 v3, 0x0

    .line 239
    .local v3, idx:I
    :cond_0
    :goto_0
    add-int v9, p1, v3

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 240
    .local v0, ch:C
    packed-switch v7, :pswitch_data_0

    .line 315
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 316
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 324
    if-lt v3, p2, :cond_0

    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, h:C
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 330
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_10

    .line 331
    rem-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_e

    const/4 v6, 0x1

    .line 332
    .local v6, odd:Z
    :goto_3
    if-eqz v6, :cond_f

    .line 333
    mul-int/lit8 v9, v1, 0x1e

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    add-int/2addr v9, v10

    int-to-char v1, v9

    .line 334
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 242
    .end local v1           #h:C
    .end local v2           #i:I
    .end local v4           #len:I
    .end local v6           #odd:Z
    :pswitch_0
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 243
    const/16 v9, 0x20

    if-ne v0, v9, :cond_1

    .line 244
    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 246
    :cond_1
    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 249
    :cond_2
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 250
    const/4 v7, 0x1

    .line 251
    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 253
    :cond_3
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 254
    const/4 v7, 0x2

    .line 255
    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 258
    :cond_4
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 265
    :pswitch_1
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 266
    const/16 v9, 0x20

    if-ne v0, v9, :cond_5

    .line 267
    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 269
    :cond_5
    add-int/lit8 v9, v0, -0x61

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 272
    :cond_6
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 273
    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 277
    :cond_7
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 278
    const/4 v7, 0x2

    .line 279
    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 282
    :cond_8
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 289
    :pswitch_2
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 290
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 292
    :cond_9
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 293
    const/4 v7, 0x0

    .line 294
    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 296
    :cond_a
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 297
    const/4 v7, 0x1

    .line 298
    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 301
    :cond_b
    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    if-ge v9, p2, :cond_c

    .line 302
    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 303
    .local v5, next:C
    invoke-static {v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 304
    const/4 v7, 0x3

    .line 305
    const/16 v9, 0x19

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 309
    .end local v5           #next:C
    :cond_c
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 318
    :cond_d
    const/4 v7, 0x0

    .line 319
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 331
    .restart local v1       #h:C
    .restart local v2       #i:I
    .restart local v4       #len:I
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 336
    .restart local v6       #odd:Z
    :cond_f
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    goto/16 :goto_4

    .line 339
    .end local v6           #odd:Z
    :cond_10
    rem-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_11

    .line 340
    mul-int/lit8 v9, v1, 0x1e

    add-int/lit8 v9, v9, 0x1d

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_11
    return v7

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getBytesForMessage(Ljava/lang/String;)[B
    .locals 1
    .parameter "msg"

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static isAlphaLower(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 430
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAlphaUpper(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 426
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 422
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

.method private static isMixed(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    .line 434
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPunctuation(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    .line 438
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isText(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 442
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
