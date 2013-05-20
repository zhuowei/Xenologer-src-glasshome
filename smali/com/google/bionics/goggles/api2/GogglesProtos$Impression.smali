.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impression"
.end annotation


# static fields
.field public static final RESULT_ID_FIELD_NUMBER:I = 0x2

.field public static final RESULT_INFOS_FIELD_NUMBER:I = 0x3

.field public static final RESULT_SET_NUMBER_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasResultId:Z

.field private hasResultSetNumber:Z

.field private resultId_:Ljava/lang/String;

.field private resultInfos_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private resultSetNumber_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2762
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2767
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    .line 2784
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    .line 2800
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    .line 2857
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    .line 2762
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2927
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2921
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    return-object v0
.end method


# virtual methods
.method public addResultInfos(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "value"

    .prologue
    .line 2817
    if-nez p1, :cond_0

    .line 2818
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2820
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    .line 2823
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2824
    return-object p0
.end method

.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 2833
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->clearResultId()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 2834
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->clearResultInfos()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    .line 2835
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    .line 2836
    return-object p0
.end method

.method public clearResultId()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    .line 2793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultId:Z

    .line 2794
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    .line 2795
    return-object p0
.end method

.method public clearResultInfos()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    .line 2827
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    .line 2828
    return-object p0
.end method

.method public clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2776
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultSetNumber:Z

    .line 2777
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    .line 2778
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2860
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    if-gez v0, :cond_0

    .line 2862
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getSerializedSize()I

    .line 2864
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    return v0
.end method

.method public getResultId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    return-object v0
.end method

.method public getResultInfos(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    return-object v0
.end method

.method public getResultInfosCount()I
    .locals 1

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    return-object v0
.end method

.method public getResultSetNumber()I
    .locals 1

    .prologue
    .line 2768
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2869
    const/4 v2, 0x0

    .line 2870
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultSetNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2871
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultSetNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2874
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2875
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2878
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultInfosList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    .line 2879
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2882
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    :cond_2
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->cachedSize:I

    .line 2883
    return v2
.end method

.method public hasResultId()Z
    .locals 1

    .prologue
    .line 2786
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultId:Z

    return v0
.end method

.method public hasResultSetNumber()Z
    .locals 1

    .prologue
    .line 2769
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultSetNumber:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2840
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2891
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2892
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2896
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2897
    :sswitch_0
    return-object p0

    .line 2902
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    goto :goto_0

    .line 2906
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->setResultId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    goto :goto_0

    .line 2910
    :sswitch_3
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;-><init>()V

    .line 2911
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2912
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->addResultInfos(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    goto :goto_0

    .line 2892
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
    .line 2759
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;

    move-result-object v0

    return-object v0
.end method

.method public setResultId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "value"

    .prologue
    .line 2788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultId:Z

    .line 2789
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultId_:Ljava/lang/String;

    .line 2790
    return-object p0
.end method

.method public setResultInfos(ILcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2810
    if-nez p2, :cond_0

    .line 2811
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2813
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultInfos_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2814
    return-object p0
.end method

.method public setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;
    .locals 1
    .parameter "value"

    .prologue
    .line 2771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultSetNumber:Z

    .line 2772
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->resultSetNumber_:I

    .line 2773
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
    .line 2846
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultSetNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2847
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultSetNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2849
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->hasResultId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2850
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2852
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Impression;->getResultInfosList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    .line 2853
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2855
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    :cond_2
    return-void
.end method
