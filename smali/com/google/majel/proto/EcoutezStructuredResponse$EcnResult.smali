.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EcnResult"
.end annotation


# static fields
.field public static final ANCHOR_FIELD_NUMBER:I = 0x1

.field public static final LAST_CHANGE_TIME_FIELD_NUMBER:I = 0x5

.field public static final LAST_PRICE_FIELD_NUMBER:I = 0x2

.field public static final PRICE_CHANGE_FIELD_NUMBER:I = 0x3

.field public static final PRICE_PERCENT_CHANGE_FIELD_NUMBER:I = 0x4


# instance fields
.field private anchor_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAnchor:Z

.field private hasLastChangeTime:Z

.field private hasLastPrice:Z

.field private hasPriceChange:Z

.field private hasPricePercentChange:Z

.field private lastChangeTime_:Ljava/lang/String;

.field private lastPrice_:F

.field private priceChange_:F

.field private pricePercentChange_:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1899
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1904
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->anchor_:Ljava/lang/String;

    .line 1921
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastPrice_:F

    .line 1938
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->priceChange_:F

    .line 1955
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->pricePercentChange_:F

    .line 1972
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastChangeTime_:Ljava/lang/String;

    .line 2020
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->cachedSize:I

    .line 1899
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2104
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2098
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 1987
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->clearAnchor()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 1988
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->clearLastPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 1989
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->clearPriceChange()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 1990
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->clearPricePercentChange()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 1991
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->clearLastChangeTime()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    .line 1992
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->cachedSize:I

    .line 1993
    return-object p0
.end method

.method public clearAnchor()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 1913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasAnchor:Z

    .line 1914
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->anchor_:Ljava/lang/String;

    .line 1915
    return-object p0
.end method

.method public clearLastChangeTime()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 1981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasLastChangeTime:Z

    .line 1982
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastChangeTime_:Ljava/lang/String;

    .line 1983
    return-object p0
.end method

.method public clearLastPrice()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 1930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasLastPrice:Z

    .line 1931
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastPrice_:F

    .line 1932
    return-object p0
.end method

.method public clearPriceChange()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 1947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasPriceChange:Z

    .line 1948
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->priceChange_:F

    .line 1949
    return-object p0
.end method

.method public clearPricePercentChange()Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1

    .prologue
    .line 1964
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasPricePercentChange:Z

    .line 1965
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->pricePercentChange_:F

    .line 1966
    return-object p0
.end method

.method public getAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->anchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2023
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 2025
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getSerializedSize()I

    .line 2027
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->cachedSize:I

    return v0
.end method

.method public getLastChangeTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastChangeTime_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPrice()F
    .locals 1

    .prologue
    .line 1922
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastPrice_:F

    return v0
.end method

.method public getPriceChange()F
    .locals 1

    .prologue
    .line 1939
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->priceChange_:F

    return v0
.end method

.method public getPricePercentChange()F
    .locals 1

    .prologue
    .line 1956
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->pricePercentChange_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2032
    const/4 v0, 0x0

    .line 2033
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasAnchor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2034
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getAnchor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2037
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasLastPrice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2038
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getLastPrice()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2041
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasPriceChange()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2042
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getPriceChange()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2045
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasPricePercentChange()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2046
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getPricePercentChange()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2049
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasLastChangeTime()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2050
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getLastChangeTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2053
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->cachedSize:I

    .line 2054
    return v0
.end method

.method public hasAnchor()Z
    .locals 1

    .prologue
    .line 1906
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasAnchor:Z

    return v0
.end method

.method public hasLastChangeTime()Z
    .locals 1

    .prologue
    .line 1974
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasLastChangeTime:Z

    return v0
.end method

.method public hasLastPrice()Z
    .locals 1

    .prologue
    .line 1923
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasLastPrice:Z

    return v0
.end method

.method public hasPriceChange()Z
    .locals 1

    .prologue
    .line 1940
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasPriceChange:Z

    return v0
.end method

.method public hasPricePercentChange()Z
    .locals 1

    .prologue
    .line 1957
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasPricePercentChange:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1997
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2062
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2063
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2067
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2068
    :sswitch_0
    return-object p0

    .line 2073
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->setAnchor(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    goto :goto_0

    .line 2077
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->setLastPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    goto :goto_0

    .line 2081
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->setPriceChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    goto :goto_0

    .line 2085
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->setPricePercentChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    goto :goto_0

    .line 2089
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->setLastChangeTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    goto :goto_0

    .line 2063
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 1896
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;

    move-result-object v0

    return-object v0
.end method

.method public setAnchor(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1908
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasAnchor:Z

    .line 1909
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->anchor_:Ljava/lang/String;

    .line 1910
    return-object p0
.end method

.method public setLastChangeTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasLastChangeTime:Z

    .line 1977
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastChangeTime_:Ljava/lang/String;

    .line 1978
    return-object p0
.end method

.method public setLastPrice(F)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasLastPrice:Z

    .line 1926
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->lastPrice_:F

    .line 1927
    return-object p0
.end method

.method public setPriceChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasPriceChange:Z

    .line 1943
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->priceChange_:F

    .line 1944
    return-object p0
.end method

.method public setPricePercentChange(F)Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasPricePercentChange:Z

    .line 1960
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->pricePercentChange_:F

    .line 1961
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
    .line 2003
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2004
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getAnchor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2006
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasLastPrice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2007
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getLastPrice()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 2009
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasPriceChange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2010
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getPriceChange()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 2012
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasPricePercentChange()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2013
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getPricePercentChange()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 2015
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->hasLastChangeTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2016
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcnResult;->getLastChangeTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2018
    :cond_4
    return-void
.end method
