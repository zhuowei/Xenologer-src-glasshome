.class public final Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalResultCandidateList"
.end annotation


# static fields
.field public static final CANDIDATE_LOCAL_RESULT_FIELD_NUMBER:I = 0x1

.field public static final NEARBY_LOCATION_TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private candidateLocalResult_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;",
            ">;"
        }
    .end annotation
.end field

.field private hasNearbyLocationType:Z

.field private nearbyLocationType_:Lcom/google/majel/proto/AliasProto$Alias;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6963
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult_:Ljava/util/List;

    .line 7001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType_:Lcom/google/majel/proto/AliasProto$Alias;

    .line 7040
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->cachedSize:I

    .line 6963
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7104
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7098
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    return-object v0
.end method


# virtual methods
.method public addCandidateLocalResult(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1
    .parameter "value"

    .prologue
    .line 6984
    if-nez p1, :cond_0

    .line 6985
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6987
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6988
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult_:Ljava/util/List;

    .line 6990
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6991
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1

    .prologue
    .line 7019
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->clearCandidateLocalResult()Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    .line 7020
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->clearNearbyLocationType()Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    .line 7021
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->cachedSize:I

    .line 7022
    return-object p0
.end method

.method public clearCandidateLocalResult()Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1

    .prologue
    .line 6994
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult_:Ljava/util/List;

    .line 6995
    return-object p0
.end method

.method public clearNearbyLocationType()Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1

    .prologue
    .line 7013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->hasNearbyLocationType:Z

    .line 7014
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType_:Lcom/google/majel/proto/AliasProto$Alias;

    .line 7015
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7043
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->cachedSize:I

    if-gez v0, :cond_0

    .line 7045
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->getSerializedSize()I

    .line 7047
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->cachedSize:I

    return v0
.end method

.method public getCandidateLocalResult(I)Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    .locals 1
    .parameter "index"

    .prologue
    .line 6974
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    return-object v0
.end method

.method public getCandidateLocalResultCount()I
    .locals 1

    .prologue
    .line 6972
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCandidateLocalResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6970
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult_:Ljava/util/List;

    return-object v0
.end method

.method public getNearbyLocationType()Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1

    .prologue
    .line 7003
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType_:Lcom/google/majel/proto/AliasProto$Alias;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 7052
    const/4 v2, 0x0

    .line 7053
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->getCandidateLocalResultList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 7054
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 7057
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->hasNearbyLocationType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7058
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->getNearbyLocationType()Lcom/google/majel/proto/AliasProto$Alias;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7061
    :cond_1
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->cachedSize:I

    .line 7062
    return v2
.end method

.method public hasNearbyLocationType()Z
    .locals 1

    .prologue
    .line 7002
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->hasNearbyLocationType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7026
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7070
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7071
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7075
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7076
    :sswitch_0
    return-object p0

    .line 7081
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    .line 7082
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7083
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->addCandidateLocalResult(Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    goto :goto_0

    .line 7087
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/AliasProto$Alias;

    invoke-direct {v1}, Lcom/google/majel/proto/AliasProto$Alias;-><init>()V

    .line 7088
    .local v1, value:Lcom/google/majel/proto/AliasProto$Alias;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7089
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->setNearbyLocationType(Lcom/google/majel/proto/AliasProto$Alias;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    goto :goto_0

    .line 7071
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
    .line 6960
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    move-result-object v0

    return-object v0
.end method

.method public setCandidateLocalResult(ILcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6977
    if-nez p2, :cond_0

    .line 6978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6980
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->candidateLocalResult_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6981
    return-object p0
.end method

.method public setNearbyLocationType(Lcom/google/majel/proto/AliasProto$Alias;)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1
    .parameter "value"

    .prologue
    .line 7005
    if-nez p1, :cond_0

    .line 7006
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7008
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->hasNearbyLocationType:Z

    .line 7009
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->nearbyLocationType_:Lcom/google/majel/proto/AliasProto$Alias;

    .line 7010
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
    .line 7032
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->getCandidateLocalResultList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 7033
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 7035
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->hasNearbyLocationType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7036
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;->getNearbyLocationType()Lcom/google/majel/proto/AliasProto$Alias;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7038
    :cond_1
    return-void
.end method
