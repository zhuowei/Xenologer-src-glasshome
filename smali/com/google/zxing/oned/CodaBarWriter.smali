.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final END_CHARS:[C

.field private static final START_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 28
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_CHARS:[C

    .line 29
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->END_CHARS:[C

    return-void

    .line 28
    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
    .end array-data

    .line 29
    :array_1
    .array-data 0x2
        0x54t 0x0t
        0x4et 0x0t
        0x2at 0x0t
        0x45t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 14
    .parameter "contents"

    .prologue
    .line 35
    sget-object v11, Lcom/google/zxing/oned/CodaBarWriter;->START_CHARS:[C

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    invoke-static {v11, v12}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v11

    if-nez v11, :cond_0

    .line 36
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Codabar should start with one of the following: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/google/zxing/oned/CodaBarWriter;->START_CHARS:[C

    invoke-static {v13}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 39
    :cond_0
    sget-object v11, Lcom/google/zxing/oned/CodaBarWriter;->END_CHARS:[C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    invoke-static {v11, v12}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v11

    if-nez v11, :cond_1

    .line 40
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Codabar should end with one of the following: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/google/zxing/oned/CodaBarWriter;->END_CHARS:[C

    invoke-static {v13}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 44
    :cond_1
    const/16 v10, 0x14

    .line 45
    .local v10, resultLength:I
    const/4 v11, 0x4

    new-array v2, v11, [C

    fill-array-data v2, :array_0

    .line 46
    .local v2, charsWhichAreTenLengthEachAfterDecoded:[C
    const/4 v6, 0x1

    .local v6, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_5

    .line 47
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x24

    if-ne v11, v12, :cond_3

    .line 49
    :cond_2
    add-int/lit8 v10, v10, 0x9

    .line 46
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v2, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 52
    add-int/lit8 v10, v10, 0xa

    goto :goto_1

    .line 54
    :cond_4
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot encode : \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 58
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    add-int/2addr v10, v11

    .line 60
    new-array v9, v10, [Z

    .line 61
    .local v9, result:[Z
    const/4 v8, 0x0

    .line 62
    .local v8, position:I
    const/4 v7, 0x0

    .local v7, index:I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_e

    .line 63
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 64
    .local v1, c:C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v7, v11, :cond_6

    .line 66
    sparse-switch v1, :sswitch_data_0

    .line 81
    :cond_6
    :goto_3
    const/4 v3, 0x0

    .line 82
    .local v3, code:I
    const/4 v6, 0x0

    :goto_4
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v11, v11

    if-ge v6, v11, :cond_7

    .line 84
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v11, v11, v6

    if-ne v1, v11, :cond_9

    .line 85
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v3, v11, v6

    .line 89
    :cond_7
    const/4 v4, 0x1

    .line 90
    .local v4, color:Z
    const/4 v5, 0x0

    .line 91
    .local v5, counter:I
    const/4 v0, 0x0

    .line 92
    .local v0, bit:I
    :goto_5
    const/4 v11, 0x7

    if-ge v0, v11, :cond_c

    .line 93
    aput-boolean v4, v9, v8

    .line 94
    add-int/lit8 v8, v8, 0x1

    .line 95
    rsub-int/lit8 v11, v0, 0x6

    shr-int v11, v3, v11

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    if-ne v5, v11, :cond_b

    .line 96
    :cond_8
    if-nez v4, :cond_a

    const/4 v4, 0x1

    .line 97
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 98
    const/4 v5, 0x0

    goto :goto_5

    .line 68
    .end local v0           #bit:I
    .end local v3           #code:I
    .end local v4           #color:Z
    .end local v5           #counter:I
    :sswitch_0
    const/16 v1, 0x41

    .line 69
    goto :goto_3

    .line 71
    :sswitch_1
    const/16 v1, 0x42

    .line 72
    goto :goto_3

    .line 74
    :sswitch_2
    const/16 v1, 0x43

    .line 75
    goto :goto_3

    .line 77
    :sswitch_3
    const/16 v1, 0x44

    goto :goto_3

    .line 82
    .restart local v3       #code:I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 96
    .restart local v0       #bit:I
    .restart local v4       #color:Z
    .restart local v5       #counter:I
    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    .line 100
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 103
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v7, v11, :cond_d

    .line 104
    const/4 v11, 0x0

    aput-boolean v11, v9, v8

    .line 105
    add-int/lit8 v8, v8, 0x1

    .line 62
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 108
    .end local v0           #bit:I
    .end local v1           #c:C
    .end local v3           #code:I
    .end local v4           #color:Z
    .end local v5           #counter:I
    :cond_e
    return-object v9

    .line 45
    nop

    :array_0
    .array-data 0x2
        0x2ft 0x0t
        0x3at 0x0t
        0x2bt 0x0t
        0x2et 0x0t
    .end array-data

    .line 66
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_2
        0x45 -> :sswitch_3
        0x4e -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
