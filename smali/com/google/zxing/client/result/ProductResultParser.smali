.class public final Lcom/google/zxing/client/result/ProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ProductParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ProductParsedResult;
    .locals 8
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 33
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    .line 34
    .local v1, format:Lcom/google/zxing/BarcodeFormat;
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v7, :cond_1

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v7, :cond_1

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v7, :cond_1

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v7, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v6

    .line 38
    :cond_1
    invoke-static {p1}, Lcom/google/zxing/client/result/ProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, rawText:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 40
    .local v2, length:I
    const/4 v5, 0x0

    .local v5, x:I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 42
    .local v0, c:C
    const/16 v7, 0x30

    if-lt v0, v7, :cond_0

    const/16 v7, 0x39

    if-gt v0, v7, :cond_0

    .line 40
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 50
    .end local v0           #c:C
    :cond_2
    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, v6, :cond_3

    .line 51
    invoke-static {v4}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, normalizedProductID:Ljava/lang/String;
    :goto_2
    new-instance v6, Lcom/google/zxing/client/result/ProductParsedResult;

    invoke-direct {v6, v4, v3}, Lcom/google/zxing/client/result/ProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v3           #normalizedProductID:Ljava/lang/String;
    :cond_3
    move-object v3, v4

    .restart local v3       #normalizedProductID:Ljava/lang/String;
    goto :goto_2
.end method
