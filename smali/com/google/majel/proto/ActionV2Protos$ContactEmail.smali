.class public final Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactEmail"
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private address_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAddress:Z

.field private hasType:Z

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1737
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1742
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->address_:Ljava/lang/String;

    .line 1759
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->type_:Ljava/lang/String;

    .line 1795
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->cachedSize:I

    .line 1737
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1855
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1849
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1

    .prologue
    .line 1774
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->clearAddress()Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    .line 1775
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->clearType()Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    .line 1776
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->cachedSize:I

    .line 1777
    return-object p0
.end method

.method public clearAddress()Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1

    .prologue
    .line 1751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->hasAddress:Z

    .line 1752
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->address_:Ljava/lang/String;

    .line 1753
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1

    .prologue
    .line 1768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->hasType:Z

    .line 1769
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->type_:Ljava/lang/String;

    .line 1770
    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1798
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->cachedSize:I

    if-gez v0, :cond_0

    .line 1800
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->getSerializedSize()I

    .line 1802
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1807
    const/4 v0, 0x0

    .line 1808
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1809
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1812
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1813
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1816
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->cachedSize:I

    .line 1817
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 1744
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->hasAddress:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1761
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1781
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1825
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1826
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1830
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1831
    :sswitch_0
    return-object p0

    .line 1836
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->setAddress(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    goto :goto_0

    .line 1840
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->setType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    goto :goto_0

    .line 1826
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 1734
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1
    .parameter "value"

    .prologue
    .line 1746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->hasAddress:Z

    .line 1747
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->address_:Ljava/lang/String;

    .line 1748
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1
    .parameter "value"

    .prologue
    .line 1763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->hasType:Z

    .line 1764
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->type_:Ljava/lang/String;

    .line 1765
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
    .line 1787
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1790
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1791
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1793
    :cond_1
    return-void
.end method
