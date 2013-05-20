.class public final Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactPhoneNumber"
.end annotation


# static fields
.field public static final DEPRECATED_DIGIT_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private dEPRECATEDDigit_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hasNumber:Z

.field private hasType:Z

.field private number_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1571
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit_:Ljava/util/List;

    .line 1599
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->number_:Ljava/lang/String;

    .line 1616
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->type_:Ljava/lang/String;

    .line 1656
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->cachedSize:I

    .line 1567
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1729
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1723
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    return-object v0
.end method


# virtual methods
.method public addDEPRECATEDDigit(I)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 2
    .parameter "value"

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit_:Ljava/util/List;

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1589
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1

    .prologue
    .line 1631
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->clearDEPRECATEDDigit()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 1632
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->clearNumber()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 1633
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->clearType()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 1634
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->cachedSize:I

    .line 1635
    return-object p0
.end method

.method public clearDEPRECATEDDigit()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1

    .prologue
    .line 1592
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit_:Ljava/util/List;

    .line 1593
    return-object p0
.end method

.method public clearNumber()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1

    .prologue
    .line 1608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->hasNumber:Z

    .line 1609
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->number_:Ljava/lang/String;

    .line 1610
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1

    .prologue
    .line 1625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->hasType:Z

    .line 1626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->type_:Ljava/lang/String;

    .line 1627
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1659
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->cachedSize:I

    if-gez v0, :cond_0

    .line 1661
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->getSerializedSize()I

    .line 1663
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->cachedSize:I

    return v0
.end method

.method public getDEPRECATEDDigit(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDEPRECATEDDigitCount()I
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDEPRECATEDDigitList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit_:Ljava/util/List;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1668
    const/4 v3, 0x0

    .line 1670
    .local v3, size:I
    const/4 v0, 0x0

    .line 1671
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->getDEPRECATEDDigitList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1672
    .local v1, element:I
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1675
    .end local v1           #element:I
    :cond_0
    add-int/2addr v3, v0

    .line 1676
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->getDEPRECATEDDigitList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1678
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->hasType()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1679
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1682
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->hasNumber()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1683
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1686
    :cond_2
    iput v3, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->cachedSize:I

    .line 1687
    return v3
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 1601
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->hasNumber:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1618
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1639
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1695
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1696
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1700
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1701
    :sswitch_0
    return-object p0

    .line 1706
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->addDEPRECATEDDigit(I)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    goto :goto_0

    .line 1710
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->setType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    goto :goto_0

    .line 1714
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->setNumber(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    goto :goto_0

    .line 1696
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1564
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public setDEPRECATEDDigit(II)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->dEPRECATEDDigit_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1582
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1
    .parameter "value"

    .prologue
    .line 1603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->hasNumber:Z

    .line 1604
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->number_:Ljava/lang/String;

    .line 1605
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1
    .parameter "value"

    .prologue
    .line 1620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->hasType:Z

    .line 1621
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->type_:Ljava/lang/String;

    .line 1622
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
    .line 1645
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->getDEPRECATEDDigitList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1646
    .local v0, element:I
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 1648
    .end local v0           #element:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1649
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1651
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->hasNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1652
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1654
    :cond_2
    return-void
.end method
