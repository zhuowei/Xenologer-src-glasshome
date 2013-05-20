.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureIdProto"
.end annotation


# static fields
.field public static final CELL_ID_FIELD_NUMBER:I = 0x1

.field public static final FPRINT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private cellId_:J

.field private fprint_:J

.field private hasCellId:Z

.field private hasFprint:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 4932
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4937
    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cellId_:J

    .line 4954
    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->fprint_:J

    .line 4990
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cachedSize:I

    .line 4932
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5050
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5044
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 1

    .prologue
    .line 4969
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->clearCellId()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    .line 4970
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->clearFprint()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    .line 4971
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cachedSize:I

    .line 4972
    return-object p0
.end method

.method public clearCellId()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 2

    .prologue
    .line 4946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->hasCellId:Z

    .line 4947
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cellId_:J

    .line 4948
    return-object p0
.end method

.method public clearFprint()Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 2

    .prologue
    .line 4963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->hasFprint:Z

    .line 4964
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->fprint_:J

    .line 4965
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4993
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 4995
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->getSerializedSize()I

    .line 4997
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cachedSize:I

    return v0
.end method

.method public getCellId()J
    .locals 2

    .prologue
    .line 4938
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cellId_:J

    return-wide v0
.end method

.method public getFprint()J
    .locals 2

    .prologue
    .line 4955
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->fprint_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 5002
    const/4 v0, 0x0

    .line 5003
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->hasCellId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5004
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->getCellId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5007
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->hasFprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5008
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->getFprint()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5011
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cachedSize:I

    .line 5012
    return v0
.end method

.method public hasCellId()Z
    .locals 1

    .prologue
    .line 4939
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->hasCellId:Z

    return v0
.end method

.method public hasFprint()Z
    .locals 1

    .prologue
    .line 4956
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->hasFprint:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4976
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5020
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5021
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5025
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5026
    :sswitch_0
    return-object p0

    .line 5031
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->setCellId(J)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    goto :goto_0

    .line 5035
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->setFprint(J)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    goto :goto_0

    .line 5021
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
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
    .line 4929
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public setCellId(J)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->hasCellId:Z

    .line 4942
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->cellId_:J

    .line 4943
    return-object p0
.end method

.method public setFprint(J)Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->hasFprint:Z

    .line 4959
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->fprint_:J

    .line 4960
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4982
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->hasCellId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4983
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->getCellId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 4985
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->hasFprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4986
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FeatureIdProto;->getFprint()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 4988
    :cond_1
    return-void
.end method
