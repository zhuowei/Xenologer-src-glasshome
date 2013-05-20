.class final Lcom/google/zxing/client/j2se/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field private brief:Z

.field private crop:[I

.field private dumpBlackPoint:Z

.field private dumpResults:Z

.field private hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private multi:Z

.field private possibleFormats:[Ljava/lang/String;

.field private productsOnly:Z

.field private pureBarcode:Z

.field private recursive:Z

.field private tryHarder:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getCrop()[I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/zxing/client/j2se/Config;->crop:[I

    return-object v0
.end method

.method getHints()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/zxing/client/j2se/Config;->hints:Ljava/util/Map;

    return-object v0
.end method

.method getPossibleFormats()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/zxing/client/j2se/Config;->possibleFormats:[Ljava/lang/String;

    return-object v0
.end method

.method isBrief()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/zxing/client/j2se/Config;->brief:Z

    return v0
.end method

.method isDumpBlackPoint()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/zxing/client/j2se/Config;->dumpBlackPoint:Z

    return v0
.end method

.method isDumpResults()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/zxing/client/j2se/Config;->dumpResults:Z

    return v0
.end method

.method isMulti()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/zxing/client/j2se/Config;->multi:Z

    return v0
.end method

.method isProductsOnly()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/zxing/client/j2se/Config;->productsOnly:Z

    return v0
.end method

.method isPureBarcode()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/zxing/client/j2se/Config;->pureBarcode:Z

    return v0
.end method

.method isRecursive()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/zxing/client/j2se/Config;->recursive:Z

    return v0
.end method

.method isTryHarder()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/zxing/client/j2se/Config;->tryHarder:Z

    return v0
.end method

.method setBrief(Z)V
    .locals 0
    .parameter "brief"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/google/zxing/client/j2se/Config;->brief:Z

    .line 99
    return-void
.end method

.method setCrop([I)V
    .locals 0
    .parameter "crop"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/zxing/client/j2se/Config;->crop:[I

    .line 115
    return-void
.end method

.method setDumpBlackPoint(Z)V
    .locals 0
    .parameter "dumpBlackPoint"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/google/zxing/client/j2se/Config;->dumpBlackPoint:Z

    .line 83
    return-void
.end method

.method setDumpResults(Z)V
    .locals 0
    .parameter "dumpResults"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/google/zxing/client/j2se/Config;->dumpResults:Z

    .line 75
    return-void
.end method

.method setHints(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    iput-object p1, p0, Lcom/google/zxing/client/j2se/Config;->hints:Ljava/util/Map;

    .line 43
    return-void
.end method

.method setMulti(Z)V
    .locals 0
    .parameter "multi"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/zxing/client/j2se/Config;->multi:Z

    .line 91
    return-void
.end method

.method setPossibleFormats([Ljava/lang/String;)V
    .locals 0
    .parameter "possibleFormats"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/zxing/client/j2se/Config;->possibleFormats:[Ljava/lang/String;

    .line 123
    return-void
.end method

.method setProductsOnly(Z)V
    .locals 0
    .parameter "productsOnly"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/google/zxing/client/j2se/Config;->productsOnly:Z

    .line 67
    return-void
.end method

.method setPureBarcode(Z)V
    .locals 0
    .parameter "pureBarcode"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/zxing/client/j2se/Config;->pureBarcode:Z

    .line 59
    return-void
.end method

.method setRecursive(Z)V
    .locals 0
    .parameter "recursive"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/google/zxing/client/j2se/Config;->recursive:Z

    .line 107
    return-void
.end method

.method setTryHarder(Z)V
    .locals 0
    .parameter "tryHarder"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/google/zxing/client/j2se/Config;->tryHarder:Z

    .line 51
    return-void
.end method
