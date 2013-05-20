.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/encoder/Encoder$1;
    }
.end annotation


# static fields
.field private static final ALPHANUMERIC_TABLE:[I = null

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x24t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 7
    .parameter "content"
    .parameter "bits"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 541
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 545
    .local v2, bytes:[B
    move-object v0, v2

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 546
    .local v1, b:B
    const/16 v6, 0x8

    invoke-virtual {p1, v1, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 542
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #bytes:[B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_0
    move-exception v5

    .line 543
    .local v5, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v6, Lcom/google/zxing/WriterException;

    invoke-direct {v6, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 548
    .end local v5           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #arr$:[B
    .restart local v2       #bytes:[B
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    return-void
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .parameter "content"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 514
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 515
    .local v3, length:I
    const/4 v2, 0x0

    .line 516
    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 517
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v0

    .line 518
    .local v0, code1:I
    if-ne v0, v6, :cond_0

    .line 519
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 521
    :cond_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_2

    .line 522
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v1

    .line 523
    .local v1, code2:I
    if-ne v1, v6, :cond_1

    .line 524
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 527
    :cond_1
    mul-int/lit8 v4, v0, 0x2d

    add-int/2addr v4, v1

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 528
    add-int/lit8 v2, v2, 0x2

    .line 529
    goto :goto_0

    .line 531
    .end local v1           #code2:I
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    .end local v0           #code1:I
    :cond_3
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 3
    .parameter "content"
    .parameter "mode"
    .parameter "bits"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 471
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 485
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :pswitch_0
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 487
    :goto_0
    return-void

    .line 476
    :pswitch_1
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 479
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :pswitch_3
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .parameter "eci"
    .parameter "bits"

    .prologue
    .line 577
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 579
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 580
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .locals 12
    .parameter "content"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v11, 0x8140

    .line 553
    :try_start_0
    const-string v9, "Shift_JIS"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 557
    .local v2, bytes:[B
    array-length v6, v2

    .line 558
    .local v6, length:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 559
    aget-byte v9, v2, v5

    and-int/lit16 v0, v9, 0xff

    .line 560
    .local v0, byte1:I
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v1, v9, 0xff

    .line 561
    .local v1, byte2:I
    shl-int/lit8 v9, v0, 0x8

    or-int v3, v9, v1

    .line 562
    .local v3, code:I
    const/4 v7, -0x1

    .line 563
    .local v7, subtracted:I
    if-lt v3, v11, :cond_1

    const v9, 0x9ffc

    if-gt v3, v9, :cond_1

    .line 564
    sub-int v7, v3, v11

    .line 568
    :cond_0
    :goto_1
    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    .line 569
    new-instance v9, Lcom/google/zxing/WriterException;

    const-string v10, "Invalid byte sequence"

    invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 554
    .end local v0           #byte1:I
    .end local v1           #byte2:I
    .end local v2           #bytes:[B
    .end local v3           #code:I
    .end local v5           #i:I
    .end local v6           #length:I
    .end local v7           #subtracted:I
    :catch_0
    move-exception v8

    .line 555
    .local v8, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v9, Lcom/google/zxing/WriterException;

    invoke-direct {v9, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 565
    .end local v8           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #byte1:I
    .restart local v1       #byte2:I
    .restart local v2       #bytes:[B
    .restart local v3       #code:I
    .restart local v5       #i:I
    .restart local v6       #length:I
    .restart local v7       #subtracted:I
    :cond_1
    const v9, 0xe040

    if-lt v3, v9, :cond_0

    const v9, 0xebbf

    if-gt v3, v9, :cond_0

    .line 566
    const v9, 0xc140

    sub-int v7, v3, v9

    goto :goto_1

    .line 571
    :cond_2
    shr-int/lit8 v9, v7, 0x8

    mul-int/lit16 v9, v9, 0xc0

    and-int/lit16 v10, v7, 0xff

    add-int v4, v9, v10

    .line 572
    .local v4, encoded:I
    const/16 v9, 0xd

    invoke-virtual {p1, v4, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 558
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 574
    .end local v0           #byte1:I
    .end local v1           #byte2:I
    .end local v3           #code:I
    .end local v4           #encoded:I
    .end local v7           #subtracted:I
    :cond_3
    return-void
.end method

.method static appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 5
    .parameter "numLetters"
    .parameter "version"
    .parameter "mode"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 457
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 458
    .local v0, numBits:I
    shl-int v1, v4, v0

    if-lt p0, v1, :cond_0

    .line 459
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is bigger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int v3, v4, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_0
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 462
    return-void
.end method

.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .parameter "mode"
    .parameter "bits"

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 450
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .parameter "content"
    .parameter "bits"

    .prologue
    .line 490
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 491
    .local v1, length:I
    const/4 v0, 0x0

    .line 492
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 493
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v5, -0x30

    .line 494
    .local v2, num1:I
    add-int/lit8 v5, v0, 0x2

    if-ge v5, v1, :cond_0

    .line 496
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 497
    .local v3, num2:I
    add-int/lit8 v5, v0, 0x2

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v4, v5, -0x30

    .line 498
    .local v4, num3:I
    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 499
    add-int/lit8 v0, v0, 0x3

    .line 500
    goto :goto_0

    .end local v3           #num2:I
    .end local v4           #num3:I
    :cond_0
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v1, :cond_1

    .line 502
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 503
    .restart local v3       #num2:I
    mul-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v3

    const/4 v6, 0x7

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 504
    add-int/lit8 v0, v0, 0x2

    .line 505
    goto :goto_0

    .line 507
    .end local v3           #num2:I
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1, v2, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    .end local v2           #num1:I
    :cond_2
    return-void
.end method

.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2
    .parameter "matrix"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 5
    .parameter "bits"
    .parameter "ecLevel"
    .parameter "version"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 238
    const v2, 0x7fffffff

    .line 239
    .local v2, minPenalty:I
    const/4 v0, -0x1

    .line 241
    .local v0, bestMaskPattern:I
    const/4 v1, 0x0

    .local v1, maskPattern:I
    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 242
    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 243
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v3

    .line 244
    .local v3, penalty:I
    if-ge v3, v2, :cond_0

    .line 245
    move v2, v3

    .line 246
    move v0, v1

    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v3           #penalty:I
    :cond_1
    return v0
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1
    .parameter "content"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    return-object v0
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 6
    .parameter "content"
    .parameter "encoding"

    .prologue
    .line 188
    const-string v4, "Shift_JIS"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 210
    :goto_0
    return-object v4

    .line 190
    :cond_0
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 192
    :cond_1
    const/4 v2, 0x0

    .line 193
    .local v2, hasNumeric:Z
    const/4 v1, 0x0

    .line 194
    .local v1, hasAlphanumeric:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 195
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 196
    .local v0, c:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-gt v0, v4, :cond_2

    .line 197
    const/4 v2, 0x1

    .line 194
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    :cond_2
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 199
    const/4 v1, 0x1

    goto :goto_2

    .line 201
    :cond_3
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 204
    .end local v0           #c:C
    :cond_4
    if-eqz v1, :cond_5

    .line 205
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 207
    :cond_5
    if-eqz v2, :cond_6

    .line 208
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 210
    :cond_6
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0
.end method

.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 9
    .parameter "numInputBits"
    .parameter "ecLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v6, 0x1

    .local v6, versionNum:I
    :goto_0
    const/16 v7, 0x28

    if-gt v6, v7, :cond_1

    .line 255
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 257
    .local v5, version:Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    .line 259
    .local v1, numBytes:I
    invoke-virtual {v5, p1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v0

    .line 260
    .local v0, ecBlocks:Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v3

    .line 262
    .local v3, numEcBytes:I
    sub-int v2, v1, v3

    .line 263
    .local v2, numDataBytes:I
    add-int/lit8 v7, p0, 0x7

    div-int/lit8 v4, v7, 0x8

    .line 264
    .local v4, totalInputBytes:I
    if-lt v2, v4, :cond_0

    .line 265
    return-object v5

    .line 254
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 268
    .end local v0           #ecBlocks:Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v1           #numBytes:I
    .end local v2           #numDataBytes:I
    .end local v3           #numEcBytes:I
    .end local v4           #totalInputBytes:I
    .end local v5           #version:Lcom/google/zxing/qrcode/decoder/Version;
    :cond_1
    new-instance v7, Lcom/google/zxing/WriterException;

    const-string v8, "Data too big"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 1
    .parameter "content"
    .parameter "ecLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 22
    .parameter "content"
    .parameter "ecLevel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 84
    .local p2, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    if-nez p2, :cond_2

    const/4 v7, 0x0

    .line 85
    .local v7, encoding:Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_0

    .line 86
    const-string v7, "ISO-8859-1"

    .line 91
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v13

    .line 95
    .local v13, mode:Lcom/google/zxing/qrcode/decoder/Mode;
    new-instance v10, Lcom/google/zxing/common/BitArray;

    invoke-direct {v10}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 98
    .local v10, headerBits:Lcom/google/zxing/common/BitArray;
    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_1

    const-string v20, "ISO-8859-1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 99
    invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v6

    .line 100
    .local v6, eci:Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v6, :cond_1

    .line 101
    invoke-static {v6, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    .line 106
    .end local v6           #eci:Lcom/google/zxing/common/CharacterSetECI;
    :cond_1
    invoke-static {v13, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 110
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 111
    .local v3, dataBits:Lcom/google/zxing/common/BitArray;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v3, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v21

    add-int v16, v20, v21

    .line 120
    .local v16, provisionalBitsNeeded:I
    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v17

    .line 124
    .local v17, provisionalVersion:Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v20

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v21

    add-int v2, v20, v21

    .line 127
    .local v2, bitsNeeded:I
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v19

    .line 129
    .local v19, version:Lcom/google/zxing/qrcode/decoder/Version;
    new-instance v9, Lcom/google/zxing/common/BitArray;

    invoke-direct {v9}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 130
    .local v9, headerAndDataBits:Lcom/google/zxing/common/BitArray;
    invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 132
    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_3

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v15

    .line 133
    .local v15, numLetters:I
    :goto_1
    move-object/from16 v0, v19

    invoke-static {v15, v0, v13, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 135
    invoke-virtual {v9, v3}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 137
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v5

    .line 138
    .local v5, ecBlocks:Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v20

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v21

    sub-int v14, v20, v21

    .line 141
    .local v14, numDataBytes:I
    invoke-static {v14, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V

    .line 144
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v20

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v14, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object v8

    .line 149
    .local v8, finalBits:Lcom/google/zxing/common/BitArray;
    new-instance v18, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct/range {v18 .. v18}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 151
    .local v18, qrCode:Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 152
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 153
    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    .line 156
    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v4

    .line 157
    .local v4, dimension:I
    new-instance v12, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v12, v4, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 158
    .local v12, matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v12}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v11

    .line 159
    .local v11, maskPattern:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v11, v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 163
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 165
    return-object v18

    .line 84
    .end local v2           #bitsNeeded:I
    .end local v3           #dataBits:Lcom/google/zxing/common/BitArray;
    .end local v4           #dimension:I
    .end local v5           #ecBlocks:Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v7           #encoding:Ljava/lang/String;
    .end local v8           #finalBits:Lcom/google/zxing/common/BitArray;
    .end local v9           #headerAndDataBits:Lcom/google/zxing/common/BitArray;
    .end local v10           #headerBits:Lcom/google/zxing/common/BitArray;
    .end local v11           #maskPattern:I
    .end local v12           #matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .end local v13           #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v14           #numDataBytes:I
    .end local v15           #numLetters:I
    .end local v16           #provisionalBitsNeeded:I
    .end local v17           #provisionalVersion:Lcom/google/zxing/qrcode/decoder/Version;
    .end local v18           #qrCode:Lcom/google/zxing/qrcode/encoder/QRCode;
    .end local v19           #version:Lcom/google/zxing/qrcode/decoder/Version;
    :cond_2
    sget-object v20, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v7, v20

    goto/16 :goto_0

    .line 132
    .restart local v2       #bitsNeeded:I
    .restart local v3       #dataBits:Lcom/google/zxing/common/BitArray;
    .restart local v7       #encoding:Ljava/lang/String;
    .restart local v9       #headerAndDataBits:Lcom/google/zxing/common/BitArray;
    .restart local v10       #headerBits:Lcom/google/zxing/common/BitArray;
    .restart local v13       #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v16       #provisionalBitsNeeded:I
    .restart local v17       #provisionalVersion:Lcom/google/zxing/qrcode/decoder/Version;
    .restart local v19       #version:Lcom/google/zxing/qrcode/decoder/Version;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_1
.end method

.method static generateECBytes([BI)[B
    .locals 6
    .parameter "dataBytes"
    .parameter "numEcBytesInBlock"

    .prologue
    .line 431
    array-length v2, p0

    .line 432
    .local v2, numDataBytes:I
    add-int v4, v2, p1

    new-array v3, v4, [I

    .line 433
    .local v3, toEncode:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 434
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    :cond_0
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v4, v3, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 438
    new-array v0, p1, [B

    .line 439
    .local v0, ecBytes:[B
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 440
    add-int v4, v2, v1

    aget v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 442
    :cond_1
    return-object v0
.end method

.method static getAlphanumericCode(I)I
    .locals 1
    .parameter "code"

    .prologue
    .line 173
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 174
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 10
    .parameter "numTotalBytes"
    .parameter "numDataBytes"
    .parameter "numRSBlocks"
    .parameter "blockID"
    .parameter "numDataBytesInBlock"
    .parameter "numECBytesInBlock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 312
    if-lt p3, p2, :cond_0

    .line 313
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Block ID too large"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 316
    :cond_0
    rem-int v5, p0, p2

    .line 318
    .local v5, numRsBlocksInGroup2:I
    sub-int v4, p2, v5

    .line 320
    .local v4, numRsBlocksInGroup1:I
    div-int v6, p0, p2

    .line 322
    .local v6, numTotalBytesInGroup1:I
    add-int/lit8 v7, v6, 0x1

    .line 324
    .local v7, numTotalBytesInGroup2:I
    div-int v0, p1, p2

    .line 326
    .local v0, numDataBytesInGroup1:I
    add-int/lit8 v1, v0, 0x1

    .line 328
    .local v1, numDataBytesInGroup2:I
    sub-int v2, v6, v0

    .line 330
    .local v2, numEcBytesInGroup1:I
    sub-int v3, v7, v1

    .line 333
    .local v3, numEcBytesInGroup2:I
    if-eq v2, v3, :cond_1

    .line 334
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 337
    :cond_1
    add-int v8, v4, v5

    if-eq p2, v8, :cond_2

    .line 338
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 341
    :cond_2
    add-int v8, v0, v2

    mul-int/2addr v8, v4

    add-int v9, v1, v3

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    if-eq p0, v8, :cond_3

    .line 346
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 349
    :cond_3
    if-ge p3, v4, :cond_4

    .line 350
    const/4 v8, 0x0

    aput v0, p4, v8

    .line 351
    const/4 v8, 0x0

    aput v2, p5, v8

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_4
    const/4 v8, 0x0

    aput v1, p4, v8

    .line 354
    const/4 v8, 0x0

    aput v3, p5, v8

    goto :goto_0
.end method

.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .locals 18
    .parameter "bits"
    .parameter "numTotalBytes"
    .parameter "numDataBytes"
    .parameter "numRSBlocks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v2

    move/from16 v0, p2

    if-eq v2, v0, :cond_0

    .line 369
    new-instance v2, Lcom/google/zxing/WriterException;

    const-string v3, "Number of bits and data bytes does not match"

    invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_0
    const/4 v11, 0x0

    .line 375
    .local v11, dataBytesOffset:I
    const/4 v14, 0x0

    .line 376
    .local v14, maxNumDataBytes:I
    const/4 v15, 0x0

    .line 379
    .local v15, maxNumEcBytes:I
    new-instance v9, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    .local v9, blocks:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/zxing/qrcode/encoder/BlockPair;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v5, v0, :cond_1

    .line 382
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 383
    .local v6, numDataBytesInBlock:[I
    const/4 v2, 0x1

    new-array v7, v2, [I

    .local v7, numEcBytesInBlock:[I
    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 384
    invoke-static/range {v2 .. v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 388
    const/4 v2, 0x0

    aget v17, v6, v2

    .line 389
    .local v17, size:I
    move/from16 v0, v17

    new-array v10, v0, [B

    .line 390
    .local v10, dataBytes:[B
    mul-int/lit8 v2, v11, 0x8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v2, v10, v3, v1}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    .line 391
    const/4 v2, 0x0

    aget v2, v7, v2

    invoke-static {v10, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v12

    .line 392
    .local v12, ecBytes:[B
    new-instance v2, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v2, v10, v12}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 394
    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 395
    array-length v2, v12

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 396
    const/4 v2, 0x0

    aget v2, v6, v2

    add-int/2addr v11, v2

    .line 381
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 398
    .end local v6           #numDataBytesInBlock:[I
    .end local v7           #numEcBytesInBlock:[I
    .end local v10           #dataBytes:[B
    .end local v12           #ecBytes:[B
    .end local v17           #size:I
    :cond_1
    move/from16 v0, p2

    if-eq v0, v11, :cond_2

    .line 399
    new-instance v2, Lcom/google/zxing/WriterException;

    const-string v3, "Data bytes does not match offset"

    invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_2
    new-instance v16, Lcom/google/zxing/common/BitArray;

    invoke-direct/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 405
    .local v16, result:Lcom/google/zxing/common/BitArray;
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v14, :cond_5

    .line 406
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 407
    .local v8, block:Lcom/google/zxing/qrcode/encoder/BlockPair;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v10

    .line 408
    .restart local v10       #dataBytes:[B
    array-length v2, v10

    if-ge v5, v2, :cond_3

    .line 409
    aget-byte v2, v10, v5

    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2

    .line 405
    .end local v8           #block:Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v10           #dataBytes:[B
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 414
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v15, :cond_8

    .line 415
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 416
    .restart local v8       #block:Lcom/google/zxing/qrcode/encoder/BlockPair;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v12

    .line 417
    .restart local v12       #ecBytes:[B
    array-length v2, v12

    if-ge v5, v2, :cond_6

    .line 418
    aget-byte v2, v12, v5

    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_4

    .line 414
    .end local v8           #block:Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v12           #ecBytes:[B
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 422
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v2

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    .line 423
    new-instance v2, Lcom/google/zxing/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interleaving error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " differ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    :cond_9
    return-object v16
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 7
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 216
    :try_start_0
    const-string v6, "Shift_JIS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 220
    .local v1, bytes:[B
    array-length v4, v1

    .line 221
    .local v4, length:I
    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_1

    .line 230
    .end local v1           #bytes:[B
    .end local v4           #length:I
    :cond_0
    :goto_0
    return v5

    .line 217
    :catch_0
    move-exception v3

    .line 218
    .local v3, ignored:Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 224
    .end local v3           #ignored:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #bytes:[B
    .restart local v4       #length:I
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 225
    aget-byte v6, v1, v2

    and-int/lit16 v0, v6, 0xff

    .line 226
    .local v0, byte1:I
    const/16 v6, 0x81

    if-lt v0, v6, :cond_2

    const/16 v6, 0x9f

    if-le v0, v6, :cond_3

    :cond_2
    const/16 v6, 0xe0

    if-lt v0, v6, :cond_0

    const/16 v6, 0xeb

    if-gt v0, v6, :cond_0

    .line 224
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 230
    .end local v0           #byte1:I
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
    .locals 7
    .parameter "numDataBytes"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 275
    shl-int/lit8 v0, p0, 0x3

    .line 276
    .local v0, capacity:I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v4, v0, :cond_0

    .line 277
    new-instance v4, Lcom/google/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data bits cannot fit in the QR Code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 280
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v4, v0, :cond_1

    .line 281
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    and-int/lit8 v2, v4, 0x7

    .line 286
    .local v2, numBitsInLastByte:I
    if-lez v2, :cond_2

    .line 287
    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    .line 288
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 292
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    sub-int v3, p0, v4

    .line 293
    .local v3, numPaddingBytes:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    .line 294
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_3

    const/16 v4, 0xec

    :goto_3
    invoke-virtual {p1, v4, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 294
    :cond_3
    const/16 v4, 0x11

    goto :goto_3

    .line 296
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-eq v4, v0, :cond_5

    .line 297
    new-instance v4, Lcom/google/zxing/WriterException;

    const-string v5, "Bits size does not equal capacity"

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 299
    :cond_5
    return-void
.end method
