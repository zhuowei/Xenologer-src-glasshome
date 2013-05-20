.class public final Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactPostalAddress"
.end annotation


# static fields
.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasType:Z

.field private type_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1863
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1868
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->type_:Ljava/lang/String;

    .line 1900
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->cachedSize:I

    .line 1863
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1952
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1946
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 1

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->clearType()Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    .line 1884
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->cachedSize:I

    .line 1885
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 1

    .prologue
    .line 1877
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->hasType:Z

    .line 1878
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->type_:Ljava/lang/String;

    .line 1879
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1903
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->cachedSize:I

    if-gez v0, :cond_0

    .line 1905
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->getSerializedSize()I

    .line 1907
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1912
    const/4 v0, 0x0

    .line 1913
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1914
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1917
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->cachedSize:I

    .line 1918
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1870
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1889
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1926
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1927
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1931
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1932
    :sswitch_0
    return-object p0

    .line 1937
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->setType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    goto :goto_0

    .line 1927
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 1860
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 1
    .parameter "value"

    .prologue
    .line 1872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->hasType:Z

    .line 1873
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->type_:Ljava/lang/String;

    .line 1874
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
    .line 1895
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1898
    :cond_0
    return-void
.end method
