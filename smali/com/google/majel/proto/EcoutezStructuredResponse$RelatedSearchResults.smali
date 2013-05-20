.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelatedSearchResults"
.end annotation


# static fields
.field public static final RELATED_TERM_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private relatedTerm_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10927
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm_:Ljava/util/List;

    .line 10980
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->cachedSize:I

    .line 10927
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11037
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 11031
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    return-object v0
.end method


# virtual methods
.method public addRelatedTerm(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 1
    .parameter "value"

    .prologue
    .line 10948
    if-nez p1, :cond_0

    .line 10949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10951
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm_:Ljava/util/List;

    .line 10954
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10955
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 1

    .prologue
    .line 10963
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->clearRelatedTerm()Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    .line 10964
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->cachedSize:I

    .line 10965
    return-object p0
.end method

.method public clearRelatedTerm()Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 1

    .prologue
    .line 10958
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm_:Ljava/util/List;

    .line 10959
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10983
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->cachedSize:I

    if-gez v0, :cond_0

    .line 10985
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->getSerializedSize()I

    .line 10987
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->cachedSize:I

    return v0
.end method

.method public getRelatedTerm(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 10938
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedTermCount()I
    .locals 1

    .prologue
    .line 10936
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRelatedTermList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10934
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 10992
    const/4 v3, 0x0

    .line 10994
    .local v3, size:I
    const/4 v0, 0x0

    .line 10995
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->getRelatedTermList()Ljava/util/List;

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

    check-cast v1, Ljava/lang/String;

    .line 10996
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 10999
    .end local v1           #element:Ljava/lang/String;
    :cond_0
    add-int/2addr v3, v0

    .line 11000
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->getRelatedTermList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 11002
    iput v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->cachedSize:I

    .line 11003
    return v3
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10969
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11011
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 11012
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 11016
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11017
    :sswitch_0
    return-object p0

    .line 11022
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->addRelatedTerm(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    goto :goto_0

    .line 11012
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
    .line 10924
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    move-result-object v0

    return-object v0
.end method

.method public setRelatedTerm(ILjava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10941
    if-nez p2, :cond_0

    .line 10942
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10944
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10945
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
    .line 10975
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->getRelatedTermList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    .line 10976
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 10978
    .end local v0           #element:Ljava/lang/String;
    :cond_0
    return-void
.end method
