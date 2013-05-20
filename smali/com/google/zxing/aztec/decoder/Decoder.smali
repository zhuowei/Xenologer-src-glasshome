.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$1;,
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final NB_BITS:[I

.field private static final NB_BITS_COMPACT:[I

.field private static final NB_DATABLOCK:[I

.field private static final NB_DATABLOCK_COMPACT:[I

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private codewordSize:I

.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

.field private invertedBitCount:I

.field private numCodewords:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 44
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    .line 48
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    .line 53
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    .line 57
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "A"

    aput-object v1, v0, v6

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "C"

    aput-object v2, v0, v1

    const-string v1, "D"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "a"

    aput-object v1, v0, v6

    const-string v1, "b"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "c"

    aput-object v2, v0, v1

    const-string v1, "d"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_ML"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 72
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "\u0001"

    aput-object v1, v0, v6

    const-string v1, "\u0002"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0003"

    aput-object v2, v0, v1

    const-string v1, "\u0004"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "\u0005"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0006"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0007"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0008"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u000b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u000c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\r"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u001b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u001c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u001d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u001e"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u001f"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "`"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u007f"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CTRL_LL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CTRL_PL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_BS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 78
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\r\n"

    aput-object v1, v0, v6

    const-string v1, ". "

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, ", "

    aput-object v2, v0, v1

    const-string v1, ": "

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CTRL_PS"

    aput-object v1, v0, v4

    const-string v1, " "

    aput-object v1, v0, v5

    const-string v1, "0"

    aput-object v1, v0, v6

    const-string v1, "1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "2"

    aput-object v2, v0, v1

    const-string v1, "3"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CTRL_UL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CTRL_US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void

    .line 44
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0x98t 0x1t 0x0t 0x0t
        0x60t 0x2t 0x0t 0x0t
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0xc0t 0x2t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
        0xe0t 0x4t 0x0t 0x0t
        0x20t 0x6t 0x0t 0x0t
        0x80t 0x7t 0x0t 0x0t
        0x0t 0x9t 0x0t 0x0t
        0xa0t 0xat 0x0t 0x0t
        0x60t 0xct 0x0t 0x0t
        0x40t 0xet 0x0t 0x0t
        0x40t 0x10t 0x0t 0x0t
        0x60t 0x12t 0x0t 0x0t
        0xa0t 0x14t 0x0t 0x0t
        0x0t 0x17t 0x0t 0x0t
        0x80t 0x19t 0x0t 0x0t
        0x20t 0x1ct 0x0t 0x0t
        0xe0t 0x1et 0x0t 0x0t
        0xc0t 0x21t 0x0t 0x0t
        0xc0t 0x24t 0x0t 0x0t
        0xe0t 0x27t 0x0t 0x0t
        0x20t 0x2bt 0x0t 0x0t
        0x80t 0x2et 0x0t 0x0t
        0x0t 0x32t 0x0t 0x0t
        0xa0t 0x35t 0x0t 0x0t
        0x60t 0x39t 0x0t 0x0t
        0x40t 0x3dt 0x0t 0x0t
        0x40t 0x41t 0x0t 0x0t
        0x60t 0x45t 0x0t 0x0t
        0xa0t 0x49t 0x0t 0x0t
        0x0t 0x4et 0x0t 0x0t
    .end array-data

    .line 53
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
    .end array-data

    .line 57
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0x10t 0x1t 0x0t 0x0t
        0x3ct 0x1t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0xa0t 0x1t 0x0t 0x0t
        0xd6t 0x1t 0x0t 0x0t
        0x10t 0x2t 0x0t 0x0t
        0x4ct 0x2t 0x0t 0x0t
        0x8ct 0x2t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0x16t 0x3t 0x0t 0x0t
        0x60t 0x3t 0x0t 0x0t
        0xact 0x3t 0x0t 0x0t
        0xfct 0x3t 0x0t 0x0t
        0x98t 0x3t 0x0t 0x0t
        0xe0t 0x3t 0x0t 0x0t
        0x2at 0x4t 0x0t 0x0t
        0x78t 0x4t 0x0t 0x0t
        0xc8t 0x4t 0x0t 0x0t
        0x1at 0x5t 0x0t 0x0t
        0x70t 0x5t 0x0t 0x0t
        0xc8t 0x5t 0x0t 0x0t
        0x22t 0x6t 0x0t 0x0t
        0x80t 0x6t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private correctBits([Z)[Z
    .locals 18
    .parameter "rawbits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-gt v15, v0, :cond_1

    .line 276
    const/4 v15, 0x6

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 277
    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 289
    .local v5, gf:Lcom/google/zxing/common/reedsolomon/GenericGF;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v9

    .line 293
    .local v9, numDataCodewords:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 294
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v16

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    sub-int v11, v15, v16

    .line 295
    .local v11, offset:I
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v16

    aget v15, v15, v16

    sub-int v10, v15, v9

    .line 301
    .local v10, numECCodewords:I
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    new-array v3, v15, [I

    .line 302
    .local v3, dataWords:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    if-ge v6, v15, :cond_6

    .line 303
    const/4 v4, 0x1

    .line 304
    .local v4, flag:I
    const/4 v8, 0x1

    .local v8, j:I
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    if-gt v8, v15, :cond_5

    .line 305
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v16, v0

    add-int v15, v15, v16

    sub-int/2addr v15, v8

    add-int/2addr v15, v11

    aget-boolean v15, p1, v15

    if-eqz v15, :cond_0

    .line 306
    aget v15, v3, v6

    add-int/2addr v15, v4

    aput v15, v3, v6

    .line 308
    :cond_0
    shl-int/lit8 v4, v4, 0x1

    .line 304
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 278
    .end local v3           #dataWords:[I
    .end local v4           #flag:I
    .end local v5           #gf:Lcom/google/zxing/common/reedsolomon/GenericGF;
    .end local v6           #i:I
    .end local v8           #j:I
    .end local v9           #numDataCodewords:I
    .end local v10           #numECCodewords:I
    .end local v11           #offset:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-gt v15, v0, :cond_2

    .line 279
    const/16 v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 280
    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v5       #gf:Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto/16 :goto_0

    .line 281
    .end local v5           #gf:Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v15

    const/16 v16, 0x16

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    .line 282
    const/16 v15, 0xa

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 283
    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v5       #gf:Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto/16 :goto_0

    .line 285
    .end local v5           #gf:Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_3
    const/16 v15, 0xc

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 286
    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .restart local v5       #gf:Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto/16 :goto_0

    .line 297
    .restart local v9       #numDataCodewords:I
    :cond_4
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v16

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    sub-int v11, v15, v16

    .line 298
    .restart local v11       #offset:I
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v16

    aget v15, v15, v16

    sub-int v10, v15, v9

    .restart local v10       #numECCodewords:I
    goto/16 :goto_1

    .line 302
    .restart local v3       #dataWords:[I
    .restart local v4       #flag:I
    .restart local v6       #i:I
    .restart local v8       #j:I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 317
    .end local v4           #flag:I
    .end local v8           #j:I
    :cond_6
    :try_start_0
    new-instance v12, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v12, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 318
    .local v12, rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    invoke-virtual {v12, v3, v10}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    const/4 v11, 0x0

    .line 324
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    .line 326
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int/2addr v15, v9

    new-array v2, v15, [Z

    .line 327
    .local v2, correctedBits:[Z
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v9, :cond_c

    .line 329
    const/4 v13, 0x0

    .line 330
    .local v13, seriesColor:Z
    const/4 v14, 0x0

    .line 331
    .local v14, seriesCount:I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    shl-int v4, v15, v16

    .line 333
    .restart local v4       #flag:I
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    if-ge v8, v15, :cond_b

    .line 335
    aget v15, v3, v6

    and-int/2addr v15, v4

    if-ne v15, v4, :cond_7

    const/4 v1, 0x1

    .line 337
    .local v1, color:Z
    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    add-int/lit8 v15, v15, -0x1

    if-ne v14, v15, :cond_9

    .line 339
    if-ne v1, v13, :cond_8

    .line 341
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v15

    throw v15

    .line 319
    .end local v1           #color:Z
    .end local v2           #correctedBits:[Z
    .end local v4           #flag:I
    .end local v8           #j:I
    .end local v12           #rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    .end local v13           #seriesColor:Z
    .end local v14           #seriesCount:I
    :catch_0
    move-exception v7

    .line 320
    .local v7, ignored:Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v15

    throw v15

    .line 335
    .end local v7           #ignored:Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    .restart local v2       #correctedBits:[Z
    .restart local v4       #flag:I
    .restart local v8       #j:I
    .restart local v12       #rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    .restart local v13       #seriesColor:Z
    .restart local v14       #seriesCount:I
    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    .line 344
    .restart local v1       #color:Z
    :cond_8
    const/4 v13, 0x0

    .line 345
    const/4 v14, 0x0

    .line 346
    add-int/lit8 v11, v11, 0x1

    .line 347
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    .line 361
    :goto_7
    ushr-int/lit8 v4, v4, 0x1

    .line 333
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 350
    :cond_9
    if-ne v13, v1, :cond_a

    .line 351
    add-int/lit8 v14, v14, 0x1

    .line 357
    :goto_8
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    mul-int/2addr v15, v6

    add-int/2addr v15, v8

    sub-int/2addr v15, v11

    aput-boolean v1, v2, v15

    goto :goto_7

    .line 353
    :cond_a
    const/4 v14, 0x1

    .line 354
    move v13, v1

    goto :goto_8

    .line 327
    .end local v1           #color:Z
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 365
    .end local v4           #flag:I
    .end local v8           #j:I
    .end local v13           #seriesColor:Z
    .end local v14           #seriesCount:I
    :cond_c
    return-object v2
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 10
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v7}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 378
    iget-object v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v7}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v7

    sget-object v8, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    array-length v8, v8

    if-le v7, v8, :cond_0

    .line 379
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 381
    :cond_0
    sget-object v7, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    iget-object v8, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v8}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v8

    aget v7, v7, v8

    new-array v4, v7, [Z

    .line 382
    .local v4, rawbits:[Z
    sget-object v7, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    iget-object v8, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v8}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v8

    aget v7, v7, v8

    iput v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    .line 391
    :goto_0
    iget-object v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v7}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v2

    .line 392
    .local v2, layer:I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 393
    .local v6, size:I
    const/4 v5, 0x0

    .line 394
    .local v5, rawbitsOffset:I
    const/4 v3, 0x0

    .line 396
    .local v3, matrixOffset:I
    :goto_1
    if-eqz v2, :cond_5

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, flip:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    mul-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, -0x4

    if-ge v1, v7, :cond_3

    .line 400
    add-int v7, v5, v1

    add-int v8, v3, v0

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v3

    invoke-virtual {p1, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    aput-boolean v8, v4, v7

    .line 401
    mul-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x4

    add-int/2addr v7, v1

    div-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v3

    add-int v9, v3, v6

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v0

    invoke-virtual {p1, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    aput-boolean v8, v4, v7

    .line 402
    add-int/lit8 v7, v0, 0x1

    rem-int/lit8 v0, v7, 0x2

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 384
    .end local v0           #flip:I
    .end local v1           #i:I
    .end local v2           #layer:I
    .end local v3           #matrixOffset:I
    .end local v4           #rawbits:[Z
    .end local v5           #rawbitsOffset:I
    .end local v6           #size:I
    :cond_1
    iget-object v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v7}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v7

    sget-object v8, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    array-length v8, v8

    if-le v7, v8, :cond_2

    .line 385
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 387
    :cond_2
    sget-object v7, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    iget-object v8, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v8}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v8

    aget v7, v7, v8

    new-array v4, v7, [Z

    .line 388
    .restart local v4       #rawbits:[Z
    sget-object v7, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    iget-object v8, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v8}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v8

    aget v7, v7, v8

    iput v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    goto :goto_0

    .line 405
    .restart local v0       #flip:I
    .restart local v1       #i:I
    .restart local v2       #layer:I
    .restart local v3       #matrixOffset:I
    .restart local v5       #rawbitsOffset:I
    .restart local v6       #size:I
    :cond_3
    const/4 v0, 0x0

    .line 406
    mul-int/lit8 v7, v6, 0x2

    add-int/lit8 v1, v7, 0x1

    :goto_3
    const/4 v7, 0x5

    if-le v1, v7, :cond_4

    .line 407
    mul-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x8

    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v8, v1

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int v8, v3, v6

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v0

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    aput-boolean v8, v4, v7

    .line 409
    mul-int/lit8 v7, v6, 0x6

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, -0xc

    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v8, v1

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    div-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    add-int v9, v3, v0

    invoke-virtual {p1, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    aput-boolean v8, v4, v7

    .line 411
    add-int/lit8 v7, v0, 0x1

    rem-int/lit8 v0, v7, 0x2

    .line 406
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 414
    :cond_4
    add-int/lit8 v3, v3, 0x2

    .line 415
    mul-int/lit8 v7, v6, 0x8

    add-int/lit8 v7, v7, -0x10

    add-int/2addr v5, v7

    .line 416
    add-int/lit8 v2, v2, -0x1

    .line 417
    add-int/lit8 v6, v6, -0x4

    .line 418
    goto/16 :goto_1

    .line 420
    .end local v0           #flip:I
    .end local v1           #i:I
    :cond_5
    return-object v4
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 2
    .parameter "table"
    .parameter "code"

    .prologue
    .line 250
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 262
    const-string v0, ""

    :goto_0
    return-object v0

    .line 252
    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 254
    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 256
    :pswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 258
    :pswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 260
    :pswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getEncodedData([Z)Ljava/lang/String;
    .locals 17
    .parameter "correctedBits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v16

    mul-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    move/from16 v16, v0

    sub-int v5, v15, v16

    .line 118
    .local v5, endIndex:I
    move-object/from16 v0, p1

    array-length v15, v0

    if-le v5, v15, :cond_0

    .line 119
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v15

    throw v15

    .line 122
    :cond_0
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 123
    .local v6, lastTable:Lcom/google/zxing/aztec/decoder/Decoder$Table;
    sget-object v14, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 124
    .local v14, table:Lcom/google/zxing/aztec/decoder/Decoder$Table;
    const/4 v11, 0x0

    .line 125
    .local v11, startIndex:I
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v15, 0x14

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .local v8, result:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 127
    .local v4, end:Z
    const/4 v9, 0x0

    .line 128
    .local v9, shift:Z
    const/4 v13, 0x0

    .line 129
    .local v13, switchShift:Z
    const/4 v1, 0x0

    .line 131
    .local v1, binaryShift:Z
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 133
    if-eqz v9, :cond_3

    .line 135
    const/4 v13, 0x1

    .line 142
    :goto_1
    if-eqz v1, :cond_9

    .line 143
    sub-int v15, v5, v11

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 218
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 138
    :cond_3
    move-object v6, v14

    goto :goto_1

    .line 147
    :cond_4
    const/4 v15, 0x5

    move-object/from16 v0, p1

    invoke-static {v0, v11, v15}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    .line 148
    .local v7, length:I
    add-int/lit8 v11, v11, 0x5

    .line 149
    if-nez v7, :cond_5

    .line 150
    sub-int v15, v5, v11

    const/16 v16, 0xb

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    .line 154
    const/16 v15, 0xb

    move-object/from16 v0, p1

    invoke-static {v0, v11, v15}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v15

    add-int/lit8 v7, v15, 0x1f

    .line 155
    add-int/lit8 v11, v11, 0xb

    .line 157
    :cond_5
    const/4 v2, 0x0

    .local v2, charCount:I
    :goto_2
    if-ge v2, v7, :cond_6

    .line 158
    sub-int v15, v5, v11

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 159
    const/4 v4, 0x1

    .line 167
    :cond_6
    const/4 v1, 0x0

    .line 211
    .end local v2           #charCount:I
    .end local v7           #length:I
    :cond_7
    :goto_3
    if-eqz v13, :cond_1

    .line 212
    move-object v14, v6

    .line 213
    const/4 v9, 0x0

    .line 214
    const/4 v13, 0x0

    goto :goto_0

    .line 163
    .restart local v2       #charCount:I
    .restart local v7       #length:I
    :cond_8
    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v11, v15}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v3

    .line 164
    .local v3, code:I
    int-to-char v15, v3

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    add-int/lit8 v11, v11, 0x8

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 169
    .end local v2           #charCount:I
    .end local v3           #code:I
    .end local v7           #length:I
    :cond_9
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v14, v15, :cond_a

    .line 170
    sub-int v15, v5, v11

    const/16 v16, 0x8

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    .line 173
    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v11, v15}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v3

    .line 174
    .restart local v3       #code:I
    add-int/lit8 v11, v11, 0x8

    .line 176
    int-to-char v15, v3

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 179
    .end local v3           #code:I
    :cond_a
    const/4 v10, 0x5

    .line 181
    .local v10, size:I
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v14, v15, :cond_b

    .line 182
    const/4 v10, 0x4

    .line 185
    :cond_b
    sub-int v15, v5, v11

    if-lt v15, v10, :cond_2

    .line 189
    move-object/from16 v0, p1

    invoke-static {v0, v11, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v3

    .line 190
    .restart local v3       #code:I
    add-int/2addr v11, v10

    .line 192
    invoke-static {v14, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, str:Ljava/lang/String;
    const-string v15, "CTRL_"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 195
    const/4 v15, 0x5

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v14

    .line 197
    const/4 v15, 0x6

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x53

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 198
    const/4 v9, 0x1

    .line 199
    const/4 v15, 0x5

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x42

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 200
    const/4 v1, 0x1

    goto :goto_3

    .line 204
    :cond_c
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1
    .parameter "t"

    .prologue
    .line 226
    sparse-switch p0, :sswitch_data_0

    .line 239
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    :goto_0
    return-object v0

    .line 228
    :sswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 230
    :sswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 232
    :sswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 234
    :sswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 236
    :sswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_0

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x44 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private static readCode([ZII)I
    .locals 3
    .parameter "rawbits"
    .parameter "startIndex"
    .parameter "length"

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 462
    .local v1, res:I
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    .line 463
    shl-int/lit8 v1, v1, 0x1

    .line 464
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_0

    .line 465
    add-int/lit8 v1, v1, 0x1

    .line 462
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_1
    return v1
.end method

.method private static removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 8
    .parameter "matrix"

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x10

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v0, v6, 0x1

    .line 428
    .local v0, nbDashed:I
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-direct {v1, v6, v7}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 430
    .local v1, newMatrix:Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .line 432
    .local v2, nx:I
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 434
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_0

    .line 432
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    :cond_0
    const/4 v3, 0x0

    .line 439
    .local v3, ny:I
    const/4 v5, 0x0

    .local v5, y:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 441
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v5

    rem-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_1

    .line 439
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 445
    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 446
    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 448
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 450
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 453
    .end local v3           #ny:I
    .end local v5           #y:I
    :cond_4
    return-object v1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .parameter "detectorResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 93
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 94
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 96
    .local v1, matrix:Lcom/google/zxing/common/BitMatrix;
    iget-object v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/aztec/decoder/Decoder;->removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 100
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v2

    .line 102
    .local v2, rawbits:[Z
    invoke-direct {p0, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object v0

    .line 104
    .local v0, correctedBits:[Z
    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, result:Ljava/lang/String;
    new-instance v4, Lcom/google/zxing/common/DecoderResult;

    invoke-direct {v4, v5, v3, v5, v5}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v4
.end method
