.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FinanceResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    }
.end annotation


# static fields
.field public static final CHART_LINK_FIELD_NUMBER:I = 0x8

.field public static final CHART_URL_FIELD_NUMBER:I = 0x7

.field public static final COMPANY_FIELD_NUMBER:I = 0x3

.field public static final ECN_RESULT_FIELD_NUMBER:I = 0xa

.field public static final EXCHANGE_CODE_FIELD_NUMBER:I = 0x5

.field public static final EXCHANGE_FIELD_NUMBER:I = 0x4

.field public static final STOCK_RESULT_FIELD_NUMBER:I = 0x9

.field public static final SYMBOL_FIELD_NUMBER:I = 0x1

.field public static final SYMBOL_URL_FIELD_NUMBER:I = 0x2

.field public static final TOP_LINK_FIELD_NUMBER:I = 0x6


# instance fields
.field private cachedSize:I

.field private chartLink_:Ljava/lang/String;

.field private chartUrl_:Ljava/lang/String;

.field private company_:Ljava/lang/String;

.field private ecnResult_:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

.field private exchangeCode_:Ljava/lang/String;

.field private exchange_:Ljava/lang/String;

.field private hasChartLink:Z

.field private hasChartUrl:Z

.field private hasCompany:Z

.field private hasEcnResult:Z

.field private hasExchange:Z

.field private hasExchangeCode:Z

.field private hasStockResult:Z

.field private hasSymbol:Z

.field private hasSymbolUrl:Z

.field private stockResult_:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

.field private symbolUrl_:Ljava/lang/String;

.field private symbol_:Ljava/lang/String;

.field private topLink_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2112
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2243
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbol_:Ljava/lang/String;

    .line 2260
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbolUrl_:Ljava/lang/String;

    .line 2277
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->company_:Ljava/lang/String;

    .line 2294
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchange_:Ljava/lang/String;

    .line 2311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchangeCode_:Ljava/lang/String;

    .line 2327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink_:Ljava/util/List;

    .line 2361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartUrl_:Ljava/lang/String;

    .line 2378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartLink_:Ljava/lang/String;

    .line 2395
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult_:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 2415
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult_:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 2486
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->cachedSize:I

    .line 2112
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2616
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2610
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    return-object v0
.end method


# virtual methods
.method public addTopLink(Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2344
    if-nez p1, :cond_0

    .line 2345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2347
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink_:Ljava/util/List;

    .line 2350
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2351
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2433
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->clearSymbol()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2434
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->clearSymbolUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2435
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->clearCompany()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2436
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->clearExchange()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2437
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->clearExchangeCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2438
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->clearTopLink()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2439
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->clearChartUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2440
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->clearChartLink()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2441
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->clearStockResult()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2442
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->clearEcnResult()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    .line 2443
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->cachedSize:I

    .line 2444
    return-object p0
.end method

.method public clearChartLink()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasChartLink:Z

    .line 2388
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartLink_:Ljava/lang/String;

    .line 2389
    return-object p0
.end method

.method public clearChartUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasChartUrl:Z

    .line 2371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartUrl_:Ljava/lang/String;

    .line 2372
    return-object p0
.end method

.method public clearCompany()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasCompany:Z

    .line 2287
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->company_:Ljava/lang/String;

    .line 2288
    return-object p0
.end method

.method public clearEcnResult()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasEcnResult:Z

    .line 2428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult_:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 2429
    return-object p0
.end method

.method public clearExchange()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasExchange:Z

    .line 2304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchange_:Ljava/lang/String;

    .line 2305
    return-object p0
.end method

.method public clearExchangeCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasExchangeCode:Z

    .line 2321
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchangeCode_:Ljava/lang/String;

    .line 2322
    return-object p0
.end method

.method public clearStockResult()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasStockResult:Z

    .line 2408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult_:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 2409
    return-object p0
.end method

.method public clearSymbol()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasSymbol:Z

    .line 2253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbol_:Ljava/lang/String;

    .line 2254
    return-object p0
.end method

.method public clearSymbolUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasSymbolUrl:Z

    .line 2270
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbolUrl_:Ljava/lang/String;

    .line 2271
    return-object p0
.end method

.method public clearTopLink()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1

    .prologue
    .line 2354
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink_:Ljava/util/List;

    .line 2355
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2489
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 2491
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getSerializedSize()I

    .line 2493
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->cachedSize:I

    return v0
.end method

.method public getChartLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartLink_:Ljava/lang/String;

    return-object v0
.end method

.method public getChartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->company_:Ljava/lang/String;

    return-object v0
.end method

.method public getEcnResult()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult_:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    return-object v0
.end method

.method public getExchange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchange_:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchangeCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2498
    const/4 v2, 0x0

    .line 2499
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasSymbol()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2500
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2503
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasSymbolUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2504
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getSymbolUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2507
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasCompany()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2508
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getCompany()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2511
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasExchange()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2512
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getExchange()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2515
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasExchangeCode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2516
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getExchangeCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2519
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getTopLinkList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    .line 2520
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2523
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasChartUrl()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2524
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getChartUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2527
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasChartLink()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2528
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getChartLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2531
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasStockResult()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2532
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getStockResult()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2535
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasEcnResult()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2536
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getEcnResult()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2539
    :cond_9
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->cachedSize:I

    .line 2540
    return v2
.end method

.method public getStockResult()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 2397
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult_:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbolUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTopLink(I)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1
    .parameter "index"

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    return-object v0
.end method

.method public getTopLinkCount()I
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTopLinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink_:Ljava/util/List;

    return-object v0
.end method

.method public hasChartLink()Z
    .locals 1

    .prologue
    .line 2380
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasChartLink:Z

    return v0
.end method

.method public hasChartUrl()Z
    .locals 1

    .prologue
    .line 2363
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasChartUrl:Z

    return v0
.end method

.method public hasCompany()Z
    .locals 1

    .prologue
    .line 2279
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasCompany:Z

    return v0
.end method

.method public hasEcnResult()Z
    .locals 1

    .prologue
    .line 2416
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasEcnResult:Z

    return v0
.end method

.method public hasExchange()Z
    .locals 1

    .prologue
    .line 2296
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasExchange:Z

    return v0
.end method

.method public hasExchangeCode()Z
    .locals 1

    .prologue
    .line 2313
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasExchangeCode:Z

    return v0
.end method

.method public hasStockResult()Z
    .locals 1

    .prologue
    .line 2396
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasStockResult:Z

    return v0
.end method

.method public hasSymbol()Z
    .locals 1

    .prologue
    .line 2245
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasSymbol:Z

    return v0
.end method

.method public hasSymbolUrl()Z
    .locals 1

    .prologue
    .line 2262
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasSymbolUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2448
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2548
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2549
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2553
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2554
    :sswitch_0
    return-object p0

    .line 2559
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->setSymbol(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    goto :goto_0

    .line 2563
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->setSymbolUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    goto :goto_0

    .line 2567
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->setCompany(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    goto :goto_0

    .line 2571
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->setExchange(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    goto :goto_0

    .line 2575
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->setExchangeCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    goto :goto_0

    .line 2579
    :sswitch_6
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;-><init>()V

    .line 2580
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2581
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->addTopLink(Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    goto :goto_0

    .line 2585
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->setChartUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    goto :goto_0

    .line 2589
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->setChartLink(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    goto :goto_0

    .line 2593
    :sswitch_9
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;-><init>()V

    .line 2594
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2595
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->setStockResult(Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    goto :goto_0

    .line 2599
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    :sswitch_a
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;-><init>()V

    .line 2600
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2601
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->setEcnResult(Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    goto :goto_0

    .line 2549
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2109
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;

    move-result-object v0

    return-object v0
.end method

.method public setChartLink(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasChartLink:Z

    .line 2383
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartLink_:Ljava/lang/String;

    .line 2384
    return-object p0
.end method

.method public setChartUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasChartUrl:Z

    .line 2366
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->chartUrl_:Ljava/lang/String;

    .line 2367
    return-object p0
.end method

.method public setCompany(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasCompany:Z

    .line 2282
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->company_:Ljava/lang/String;

    .line 2283
    return-object p0
.end method

.method public setEcnResult(Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2419
    if-nez p1, :cond_0

    .line 2420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2422
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasEcnResult:Z

    .line 2423
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->ecnResult_:Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 2424
    return-object p0
.end method

.method public setExchange(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasExchange:Z

    .line 2299
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchange_:Ljava/lang/String;

    .line 2300
    return-object p0
.end method

.method public setExchangeCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasExchangeCode:Z

    .line 2316
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->exchangeCode_:Ljava/lang/String;

    .line 2317
    return-object p0
.end method

.method public setStockResult(Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2399
    if-nez p1, :cond_0

    .line 2400
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2402
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasStockResult:Z

    .line 2403
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->stockResult_:Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 2404
    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasSymbol:Z

    .line 2248
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbol_:Ljava/lang/String;

    .line 2249
    return-object p0
.end method

.method public setSymbolUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasSymbolUrl:Z

    .line 2265
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->symbolUrl_:Ljava/lang/String;

    .line 2266
    return-object p0
.end method

.method public setTopLink(ILcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2337
    if-nez p2, :cond_0

    .line 2338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2340
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->topLink_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2341
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2454
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasSymbol()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2455
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2457
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasSymbolUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2458
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getSymbolUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2460
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasCompany()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2461
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getCompany()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2463
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasExchange()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2464
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getExchange()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2466
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasExchangeCode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2467
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getExchangeCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2469
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getTopLinkList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    .line 2470
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2472
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasChartUrl()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2473
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getChartUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2475
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasChartLink()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2476
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getChartLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2478
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasStockResult()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2479
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getStockResult()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2481
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->hasEcnResult()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2482
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;->getEcnResult()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2484
    :cond_9
    return-void
.end method
