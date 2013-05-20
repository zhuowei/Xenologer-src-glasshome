.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StockResult"
.end annotation


# static fields
.field public static final AVG_VOLUME_FIELD_NUMBER:I = 0xd

.field public static final AVG_VOLUME_TEXT_FIELD_NUMBER:I = 0xe

.field public static final DELAY_FIELD_NUMBER:I = 0x11

.field public static final DISCLAIMER_FIELD_NUMBER:I = 0x12

.field public static final DISCLAIMER_URL_FIELD_NUMBER:I = 0x13

.field public static final HIGH_PRICE_FIELD_NUMBER:I = 0x7

.field public static final HIGH_TEXT_FIELD_NUMBER:I = 0x8

.field public static final LAST_CHANGE_TIME_FIELD_NUMBER:I = 0x4

.field public static final LAST_PRICE_FIELD_NUMBER:I = 0x1

.field public static final LOW_PRICE_FIELD_NUMBER:I = 0x9

.field public static final LOW_TEXT_FIELD_NUMBER:I = 0xa

.field public static final MARKET_CAP_FIELD_NUMBER:I = 0xf

.field public static final MARKET_CAP_TEXT_FIELD_NUMBER:I = 0x10

.field public static final OPEN_PRICE_FIELD_NUMBER:I = 0x5

.field public static final OPEN_TEXT_FIELD_NUMBER:I = 0x6

.field public static final PRICE_CHANGE_FIELD_NUMBER:I = 0x2

.field public static final PRICE_PERCENT_CHANGE_FIELD_NUMBER:I = 0x3

.field public static final VOLUME_FIELD_NUMBER:I = 0xb

.field public static final VOLUME_TEXT_FIELD_NUMBER:I = 0xc


# instance fields
.field private avgVolumeText_:Ljava/lang/String;

.field private avgVolume_:Ljava/lang/String;

.field private cachedSize:I

.field private delay_:Ljava/lang/String;

.field private disclaimerUrl_:Ljava/lang/String;

.field private disclaimer_:Ljava/lang/String;

.field private hasAvgVolume:Z

.field private hasAvgVolumeText:Z

.field private hasDelay:Z

.field private hasDisclaimer:Z

.field private hasDisclaimerUrl:Z

.field private hasHighPrice:Z

.field private hasHighText:Z

.field private hasLastChangeTime:Z

.field private hasLastPrice:Z

.field private hasLowPrice:Z

.field private hasLowText:Z

.field private hasMarketCap:Z

.field private hasMarketCapText:Z

.field private hasOpenPrice:Z

.field private hasOpenText:Z

.field private hasPriceChange:Z

.field private hasPricePercentChange:Z

.field private hasVolume:Z

.field private hasVolumeText:Z

.field private highPrice_:F

.field private highText_:Ljava/lang/String;

.field private lastChangeTime_:Ljava/lang/String;

.field private lastPrice_:F

.field private lowPrice_:F

.field private lowText_:Ljava/lang/String;

.field private marketCapText_:Ljava/lang/String;

.field private marketCap_:Ljava/lang/String;

.field private openPrice_:F

.field private openText_:Ljava/lang/String;

.field private priceChange_:F

.field private pricePercentChange_:F

.field private volumeText_:Ljava/lang/String;

.field private volume_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1280
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1285
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastPrice_:F

    .line 1302
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->priceChange_:F

    .line 1319
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->pricePercentChange_:F

    .line 1336
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastChangeTime_:Ljava/lang/String;

    .line 1353
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openPrice_:F

    .line 1370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openText_:Ljava/lang/String;

    .line 1387
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highPrice_:F

    .line 1404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highText_:Ljava/lang/String;

    .line 1421
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowPrice_:F

    .line 1438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowText_:Ljava/lang/String;

    .line 1455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volume_:Ljava/lang/String;

    .line 1472
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volumeText_:Ljava/lang/String;

    .line 1489
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolume_:Ljava/lang/String;

    .line 1506
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolumeText_:Ljava/lang/String;

    .line 1523
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCap_:Ljava/lang/String;

    .line 1540
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCapText_:Ljava/lang/String;

    .line 1557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->delay_:Ljava/lang/String;

    .line 1574
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimer_:Ljava/lang/String;

    .line 1591
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimerUrl_:Ljava/lang/String;

    .line 1695
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->cachedSize:I

    .line 1280
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1891
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1885
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearLastPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1607
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearPriceChange()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1608
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearPricePercentChange()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1609
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearLastChangeTime()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1610
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearOpenPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1611
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearOpenText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1612
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearHighPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1613
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearHighText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1614
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearLowPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1615
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearLowText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1616
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearVolume()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1617
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearVolumeText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1618
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearAvgVolume()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1619
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearAvgVolumeText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1620
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearMarketCap()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1621
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearMarketCapText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1622
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearDelay()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1623
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearDisclaimer()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1624
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->clearDisclaimerUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    .line 1625
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->cachedSize:I

    .line 1626
    return-object p0
.end method

.method public clearAvgVolume()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasAvgVolume:Z

    .line 1499
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolume_:Ljava/lang/String;

    .line 1500
    return-object p0
.end method

.method public clearAvgVolumeText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasAvgVolumeText:Z

    .line 1516
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolumeText_:Ljava/lang/String;

    .line 1517
    return-object p0
.end method

.method public clearDelay()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDelay:Z

    .line 1567
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->delay_:Ljava/lang/String;

    .line 1568
    return-object p0
.end method

.method public clearDisclaimer()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDisclaimer:Z

    .line 1584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimer_:Ljava/lang/String;

    .line 1585
    return-object p0
.end method

.method public clearDisclaimerUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDisclaimerUrl:Z

    .line 1601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimerUrl_:Ljava/lang/String;

    .line 1602
    return-object p0
.end method

.method public clearHighPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasHighPrice:Z

    .line 1397
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highPrice_:F

    .line 1398
    return-object p0
.end method

.method public clearHighText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasHighText:Z

    .line 1414
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highText_:Ljava/lang/String;

    .line 1415
    return-object p0
.end method

.method public clearLastChangeTime()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLastChangeTime:Z

    .line 1346
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastChangeTime_:Ljava/lang/String;

    .line 1347
    return-object p0
.end method

.method public clearLastPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLastPrice:Z

    .line 1295
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastPrice_:F

    .line 1296
    return-object p0
.end method

.method public clearLowPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLowPrice:Z

    .line 1431
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowPrice_:F

    .line 1432
    return-object p0
.end method

.method public clearLowText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLowText:Z

    .line 1448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowText_:Ljava/lang/String;

    .line 1449
    return-object p0
.end method

.method public clearMarketCap()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasMarketCap:Z

    .line 1533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCap_:Ljava/lang/String;

    .line 1534
    return-object p0
.end method

.method public clearMarketCapText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasMarketCapText:Z

    .line 1550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCapText_:Ljava/lang/String;

    .line 1551
    return-object p0
.end method

.method public clearOpenPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasOpenPrice:Z

    .line 1363
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openPrice_:F

    .line 1364
    return-object p0
.end method

.method public clearOpenText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasOpenText:Z

    .line 1380
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openText_:Ljava/lang/String;

    .line 1381
    return-object p0
.end method

.method public clearPriceChange()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasPriceChange:Z

    .line 1312
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->priceChange_:F

    .line 1313
    return-object p0
.end method

.method public clearPricePercentChange()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasPricePercentChange:Z

    .line 1329
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->pricePercentChange_:F

    .line 1330
    return-object p0
.end method

.method public clearVolume()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasVolume:Z

    .line 1465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volume_:Ljava/lang/String;

    .line 1466
    return-object p0
.end method

.method public clearVolumeText()Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1

    .prologue
    .line 1481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasVolumeText:Z

    .line 1482
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volumeText_:Ljava/lang/String;

    .line 1483
    return-object p0
.end method

.method public getAvgVolume()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolume_:Ljava/lang/String;

    return-object v0
.end method

.method public getAvgVolumeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolumeText_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1698
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 1700
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getSerializedSize()I

    .line 1702
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->cachedSize:I

    return v0
.end method

.method public getDelay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->delay_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimer_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getHighPrice()F
    .locals 1

    .prologue
    .line 1388
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highPrice_:F

    return v0
.end method

.method public getHighText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highText_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChangeTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastChangeTime_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPrice()F
    .locals 1

    .prologue
    .line 1286
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastPrice_:F

    return v0
.end method

.method public getLowPrice()F
    .locals 1

    .prologue
    .line 1422
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowPrice_:F

    return v0
.end method

.method public getLowText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowText_:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketCap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCap_:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketCapText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCapText_:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenPrice()F
    .locals 1

    .prologue
    .line 1354
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openPrice_:F

    return v0
.end method

.method public getOpenText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openText_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceChange()F
    .locals 1

    .prologue
    .line 1303
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->priceChange_:F

    return v0
.end method

.method public getPricePercentChange()F
    .locals 1

    .prologue
    .line 1320
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->pricePercentChange_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1707
    const/4 v0, 0x0

    .line 1708
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLastPrice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1709
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLastPrice()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1712
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasPriceChange()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1713
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getPriceChange()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1716
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasPricePercentChange()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1717
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getPricePercentChange()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1720
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLastChangeTime()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1721
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLastChangeTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1724
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasOpenPrice()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1725
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getOpenPrice()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1728
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasOpenText()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1729
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getOpenText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1732
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasHighPrice()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1733
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getHighPrice()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1736
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasHighText()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1737
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getHighText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1740
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLowPrice()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1741
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLowPrice()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1744
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLowText()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1745
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLowText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1748
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasVolume()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1749
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getVolume()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1752
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasVolumeText()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1753
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getVolumeText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1756
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasAvgVolume()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1757
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getAvgVolume()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1760
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasAvgVolumeText()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1761
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getAvgVolumeText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1764
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasMarketCap()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1765
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getMarketCap()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1768
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasMarketCapText()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1769
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getMarketCapText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1772
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDelay()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1773
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getDelay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1776
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDisclaimer()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1777
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getDisclaimer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1780
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDisclaimerUrl()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1781
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getDisclaimerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1784
    :cond_12
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->cachedSize:I

    .line 1785
    return v0
.end method

.method public getVolume()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volume_:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volumeText_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAvgVolume()Z
    .locals 1

    .prologue
    .line 1491
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasAvgVolume:Z

    return v0
.end method

.method public hasAvgVolumeText()Z
    .locals 1

    .prologue
    .line 1508
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasAvgVolumeText:Z

    return v0
.end method

.method public hasDelay()Z
    .locals 1

    .prologue
    .line 1559
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDelay:Z

    return v0
.end method

.method public hasDisclaimer()Z
    .locals 1

    .prologue
    .line 1576
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDisclaimer:Z

    return v0
.end method

.method public hasDisclaimerUrl()Z
    .locals 1

    .prologue
    .line 1593
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDisclaimerUrl:Z

    return v0
.end method

.method public hasHighPrice()Z
    .locals 1

    .prologue
    .line 1389
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasHighPrice:Z

    return v0
.end method

.method public hasHighText()Z
    .locals 1

    .prologue
    .line 1406
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasHighText:Z

    return v0
.end method

.method public hasLastChangeTime()Z
    .locals 1

    .prologue
    .line 1338
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLastChangeTime:Z

    return v0
.end method

.method public hasLastPrice()Z
    .locals 1

    .prologue
    .line 1287
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLastPrice:Z

    return v0
.end method

.method public hasLowPrice()Z
    .locals 1

    .prologue
    .line 1423
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLowPrice:Z

    return v0
.end method

.method public hasLowText()Z
    .locals 1

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLowText:Z

    return v0
.end method

.method public hasMarketCap()Z
    .locals 1

    .prologue
    .line 1525
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasMarketCap:Z

    return v0
.end method

.method public hasMarketCapText()Z
    .locals 1

    .prologue
    .line 1542
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasMarketCapText:Z

    return v0
.end method

.method public hasOpenPrice()Z
    .locals 1

    .prologue
    .line 1355
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasOpenPrice:Z

    return v0
.end method

.method public hasOpenText()Z
    .locals 1

    .prologue
    .line 1372
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasOpenText:Z

    return v0
.end method

.method public hasPriceChange()Z
    .locals 1

    .prologue
    .line 1304
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasPriceChange:Z

    return v0
.end method

.method public hasPricePercentChange()Z
    .locals 1

    .prologue
    .line 1321
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasPricePercentChange:Z

    return v0
.end method

.method public hasVolume()Z
    .locals 1

    .prologue
    .line 1457
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasVolume:Z

    return v0
.end method

.method public hasVolumeText()Z
    .locals 1

    .prologue
    .line 1474
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasVolumeText:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1630
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1793
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1794
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1798
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1799
    :sswitch_0
    return-object p0

    .line 1804
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setLastPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1808
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setPriceChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1812
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setPricePercentChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1816
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setLastChangeTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1820
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setOpenPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1824
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setOpenText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1828
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setHighPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1832
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setHighText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1836
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setLowPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1840
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setLowText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1844
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setVolume(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1848
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setVolumeText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1852
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setAvgVolume(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1856
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setAvgVolumeText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto :goto_0

    .line 1860
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setMarketCap(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto/16 :goto_0

    .line 1864
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setMarketCapText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto/16 :goto_0

    .line 1868
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setDelay(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto/16 :goto_0

    .line 1872
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setDisclaimer(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto/16 :goto_0

    .line 1876
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->setDisclaimerUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    goto/16 :goto_0

    .line 1794
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2d -> :sswitch_5
        0x32 -> :sswitch_6
        0x3d -> :sswitch_7
        0x42 -> :sswitch_8
        0x4d -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
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
    .line 1277
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;

    move-result-object v0

    return-object v0
.end method

.method public setAvgVolume(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasAvgVolume:Z

    .line 1494
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolume_:Ljava/lang/String;

    .line 1495
    return-object p0
.end method

.method public setAvgVolumeText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasAvgVolumeText:Z

    .line 1511
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->avgVolumeText_:Ljava/lang/String;

    .line 1512
    return-object p0
.end method

.method public setDelay(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDelay:Z

    .line 1562
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->delay_:Ljava/lang/String;

    .line 1563
    return-object p0
.end method

.method public setDisclaimer(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDisclaimer:Z

    .line 1579
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimer_:Ljava/lang/String;

    .line 1580
    return-object p0
.end method

.method public setDisclaimerUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDisclaimerUrl:Z

    .line 1596
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->disclaimerUrl_:Ljava/lang/String;

    .line 1597
    return-object p0
.end method

.method public setHighPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasHighPrice:Z

    .line 1392
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highPrice_:F

    .line 1393
    return-object p0
.end method

.method public setHighText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasHighText:Z

    .line 1409
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->highText_:Ljava/lang/String;

    .line 1410
    return-object p0
.end method

.method public setLastChangeTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLastChangeTime:Z

    .line 1341
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastChangeTime_:Ljava/lang/String;

    .line 1342
    return-object p0
.end method

.method public setLastPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLastPrice:Z

    .line 1290
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lastPrice_:F

    .line 1291
    return-object p0
.end method

.method public setLowPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLowPrice:Z

    .line 1426
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowPrice_:F

    .line 1427
    return-object p0
.end method

.method public setLowText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLowText:Z

    .line 1443
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->lowText_:Ljava/lang/String;

    .line 1444
    return-object p0
.end method

.method public setMarketCap(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasMarketCap:Z

    .line 1528
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCap_:Ljava/lang/String;

    .line 1529
    return-object p0
.end method

.method public setMarketCapText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasMarketCapText:Z

    .line 1545
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->marketCapText_:Ljava/lang/String;

    .line 1546
    return-object p0
.end method

.method public setOpenPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasOpenPrice:Z

    .line 1358
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openPrice_:F

    .line 1359
    return-object p0
.end method

.method public setOpenText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasOpenText:Z

    .line 1375
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->openText_:Ljava/lang/String;

    .line 1376
    return-object p0
.end method

.method public setPriceChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasPriceChange:Z

    .line 1307
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->priceChange_:F

    .line 1308
    return-object p0
.end method

.method public setPricePercentChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasPricePercentChange:Z

    .line 1324
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->pricePercentChange_:F

    .line 1325
    return-object p0
.end method

.method public setVolume(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasVolume:Z

    .line 1460
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volume_:Ljava/lang/String;

    .line 1461
    return-object p0
.end method

.method public setVolumeText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasVolumeText:Z

    .line 1477
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->volumeText_:Ljava/lang/String;

    .line 1478
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1636
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLastPrice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLastPrice()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1639
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasPriceChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1640
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getPriceChange()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1642
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasPricePercentChange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1643
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getPricePercentChange()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1645
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLastChangeTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1646
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLastChangeTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1648
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasOpenPrice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1649
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getOpenPrice()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1651
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasOpenText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1652
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getOpenText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1654
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasHighPrice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1655
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getHighPrice()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1657
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasHighText()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1658
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getHighText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1660
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLowPrice()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1661
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLowPrice()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1663
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasLowText()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1664
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getLowText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1666
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasVolume()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1667
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getVolume()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1669
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasVolumeText()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1670
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getVolumeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1672
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasAvgVolume()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1673
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getAvgVolume()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1675
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasAvgVolumeText()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1676
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getAvgVolumeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1678
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasMarketCap()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1679
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getMarketCap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1681
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasMarketCapText()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1682
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getMarketCapText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1684
    :cond_f
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDelay()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1685
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getDelay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1687
    :cond_10
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDisclaimer()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1688
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getDisclaimer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1690
    :cond_11
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->hasDisclaimerUrl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1691
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$StockResult;->getDisclaimerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1693
    :cond_12
    return-void
.end method
