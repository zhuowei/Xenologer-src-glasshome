.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientResultInfo"
.end annotation


# static fields
.field public static final RESULT_DISPOSITIONS_FIELD_NUMBER:I = 0x1

.field public static final RESULT_DISPOSITION_RESULT_FILTERED_SCENE_CHANGE:I = 0x1


# instance fields
.field private cachedSize:I

.field private resultDispositions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2647
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2654
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions_:Ljava/util/List;

    .line 2697
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->cachedSize:I

    .line 2647
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2754
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2748
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    return-object v0
.end method


# virtual methods
.method public addResultDispositions(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 2
    .parameter "value"

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions_:Ljava/util/List;

    .line 2671
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2672
    return-object p0
.end method

.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 1

    .prologue
    .line 2680
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->clearResultDispositions()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    .line 2681
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->cachedSize:I

    .line 2682
    return-object p0
.end method

.method public clearResultDispositions()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 1

    .prologue
    .line 2675
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions_:Ljava/util/List;

    .line 2676
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2700
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2702
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->getSerializedSize()I

    .line 2704
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->cachedSize:I

    return v0
.end method

.method public getResultDispositions(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getResultDispositionsCount()I
    .locals 1

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultDispositionsList()Ljava/util/List;
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
    .line 2657
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2709
    const/4 v3, 0x0

    .line 2711
    .local v3, size:I
    const/4 v0, 0x0

    .line 2712
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->getResultDispositionsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2713
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 2716
    .end local v1           #element:Ljava/lang/Integer;
    :cond_0
    add-int/2addr v3, v0

    .line 2717
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->getResultDispositionsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2719
    iput v3, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->cachedSize:I

    .line 2720
    return v3
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2686
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2728
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2729
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2733
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2734
    :sswitch_0
    return-object p0

    .line 2739
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->addResultDispositions(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    goto :goto_0

    .line 2729
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 2644
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;

    move-result-object v0

    return-object v0
.end method

.method public setResultDispositions(II)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->resultDispositions_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2665
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
    .line 2692
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientResultInfo;->getResultDispositionsList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/Integer;

    .line 2693
    .local v0, element:Ljava/lang/Integer;
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 2695
    .end local v0           #element:Ljava/lang/Integer;
    :cond_0
    return-void
.end method
