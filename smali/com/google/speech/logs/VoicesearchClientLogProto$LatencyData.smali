.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatencyData"
.end annotation


# static fields
.field public static final BREAKDOWN_FIELD_NUMBER:I = 0x4

.field public static final DURATION_MSEC_FIELD_NUMBER:I = 0x1

.field public static final FACTOR_FIELD_NUMBER:I = 0x3

.field public static final TIMEOUT_FIELD_NUMBER:I = 0x2


# instance fields
.field private breakdown_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private durationMsec_:I

.field private factor_:I

.field private hasDurationMsec:Z

.field private hasFactor:Z

.field private hasTimeout:Z

.field private timeout_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1596
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1601
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->durationMsec_:I

    .line 1618
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->timeout_:Z

    .line 1635
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->factor_:I

    .line 1651
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown_:Ljava/util/List;

    .line 1712
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->cachedSize:I

    .line 1596
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1790
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1784
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    return-object v0
.end method


# virtual methods
.method public addBreakdown(Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1668
    if-nez p1, :cond_0

    .line 1669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown_:Ljava/util/List;

    .line 1674
    :cond_1
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1675
    return-object p0
.end method

.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1

    .prologue
    .line 1683
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->clearDurationMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    .line 1684
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->clearTimeout()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    .line 1685
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->clearFactor()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    .line 1686
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->clearBreakdown()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    .line 1687
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->cachedSize:I

    .line 1688
    return-object p0
.end method

.method public clearBreakdown()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1

    .prologue
    .line 1678
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown_:Ljava/util/List;

    .line 1679
    return-object p0
.end method

.method public clearDurationMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1610
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasDurationMsec:Z

    .line 1611
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->durationMsec_:I

    .line 1612
    return-object p0
.end method

.method public clearFactor()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1644
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasFactor:Z

    .line 1645
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->factor_:I

    .line 1646
    return-object p0
.end method

.method public clearTimeout()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1627
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasTimeout:Z

    .line 1628
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->timeout_:Z

    .line 1629
    return-object p0
.end method

.method public getBreakdown(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .parameter "index"

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    return-object v0
.end method

.method public getBreakdownCount()I
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBreakdownList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1715
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->cachedSize:I

    if-gez v0, :cond_0

    .line 1717
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->getSerializedSize()I

    .line 1719
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->cachedSize:I

    return v0
.end method

.method public getDurationMsec()I
    .locals 1

    .prologue
    .line 1602
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->durationMsec_:I

    return v0
.end method

.method public getFactor()I
    .locals 1

    .prologue
    .line 1636
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->factor_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1724
    const/4 v2, 0x0

    .line 1725
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasDurationMsec()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1726
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->getDurationMsec()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1729
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasTimeout()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1730
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->getTimeout()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1733
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasFactor()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1734
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->getFactor()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1737
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->getBreakdownList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 1738
    .local v0, element:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1741
    .end local v0           #element:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    :cond_3
    iput v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->cachedSize:I

    .line 1742
    return v2
.end method

.method public getTimeout()Z
    .locals 1

    .prologue
    .line 1619
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->timeout_:Z

    return v0
.end method

.method public hasDurationMsec()Z
    .locals 1

    .prologue
    .line 1603
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasDurationMsec:Z

    return v0
.end method

.method public hasFactor()Z
    .locals 1

    .prologue
    .line 1637
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasFactor:Z

    return v0
.end method

.method public hasTimeout()Z
    .locals 1

    .prologue
    .line 1620
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasTimeout:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1692
    const/4 v0, 0x1

    return v0
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
    .line 1593
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1750
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1751
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1755
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1756
    :sswitch_0
    return-object p0

    .line 1761
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->setDurationMsec(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    goto :goto_0

    .line 1765
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->setTimeout(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    goto :goto_0

    .line 1769
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->setFactor(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    goto :goto_0

    .line 1773
    :sswitch_4
    new-instance v1, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    invoke-direct {v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;-><init>()V

    .line 1774
    .local v1, value:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1775
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->addBreakdown(Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;

    goto :goto_0

    .line 1751
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setBreakdown(ILcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1661
    if-nez p2, :cond_0

    .line 1662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->breakdown_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1665
    return-object p0
.end method

.method public setDurationMsec(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasDurationMsec:Z

    .line 1606
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->durationMsec_:I

    .line 1607
    return-object p0
.end method

.method public setFactor(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasFactor:Z

    .line 1640
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->factor_:I

    .line 1641
    return-object p0
.end method

.method public setTimeout(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;
    .locals 1
    .parameter "value"

    .prologue
    .line 1622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasTimeout:Z

    .line 1623
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->timeout_:Z

    .line 1624
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
    .line 1698
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasDurationMsec()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1699
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->getDurationMsec()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1701
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasTimeout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1702
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->getTimeout()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1704
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->hasFactor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1705
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->getFactor()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1707
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyData;->getBreakdownList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 1708
    .local v0, element:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1710
    .end local v0           #element:Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    :cond_3
    return-void
.end method
