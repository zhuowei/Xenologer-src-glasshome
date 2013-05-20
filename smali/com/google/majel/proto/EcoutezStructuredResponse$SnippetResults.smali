.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnippetResults"
.end annotation


# static fields
.field public static final RESULT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private result_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10812
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10816
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result_:Ljava/util/List;

    .line 10865
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->cachedSize:I

    .line 10812
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10919
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 10913
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    return-object v0
.end method


# virtual methods
.method public addResult(Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 1
    .parameter "value"

    .prologue
    .line 10833
    if-nez p1, :cond_0

    .line 10834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10836
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result_:Ljava/util/List;

    .line 10839
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10840
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 1

    .prologue
    .line 10848
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->clearResult()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    .line 10849
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->cachedSize:I

    .line 10850
    return-object p0
.end method

.method public clearResult()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 1

    .prologue
    .line 10843
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result_:Ljava/util/List;

    .line 10844
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10868
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->cachedSize:I

    if-gez v0, :cond_0

    .line 10870
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->getSerializedSize()I

    .line 10872
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->cachedSize:I

    return v0
.end method

.method public getResult(I)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .locals 1
    .parameter "index"

    .prologue
    .line 10823
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    return-object v0
.end method

.method public getResultCount()I
    .locals 1

    .prologue
    .line 10821
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10819
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 10877
    const/4 v2, 0x0

    .line 10878
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->getResultList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    .line 10879
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 10882
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    :cond_0
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->cachedSize:I

    .line 10883
    return v2
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10854
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10891
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10892
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10896
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10897
    :sswitch_0
    return-object p0

    .line 10902
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;-><init>()V

    .line 10903
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 10904
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->addResult(Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    goto :goto_0

    .line 10892
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
    .line 10809
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    move-result-object v0

    return-object v0
.end method

.method public setResult(ILcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10826
    if-nez p2, :cond_0

    .line 10827
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10829
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10830
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
    .line 10860
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->getResultList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    .line 10861
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 10863
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    :cond_0
    return-void
.end method
