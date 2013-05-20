.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Synonym"
.end annotation


# static fields
.field public static final PART_OF_SPEECH_FIELD_NUMBER:I = 0x1

.field public static final SYNONYM_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasPartOfSpeech:Z

.field private partOfSpeech_:Ljava/lang/String;

.field private synonym_:Ljava/util/List;
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
    .line 5692
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5697
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->partOfSpeech_:Ljava/lang/String;

    .line 5713
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym_:Ljava/util/List;

    .line 5766
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->cachedSize:I

    .line 5692
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5831
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5825
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    return-object v0
.end method


# virtual methods
.method public addSynonym(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1
    .parameter "value"

    .prologue
    .line 5730
    if-nez p1, :cond_0

    .line 5731
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5733
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym_:Ljava/util/List;

    .line 5736
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5737
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1

    .prologue
    .line 5745
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->clearPartOfSpeech()Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    .line 5746
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->clearSynonym()Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    .line 5747
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->cachedSize:I

    .line 5748
    return-object p0
.end method

.method public clearPartOfSpeech()Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1

    .prologue
    .line 5706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->hasPartOfSpeech:Z

    .line 5707
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->partOfSpeech_:Ljava/lang/String;

    .line 5708
    return-object p0
.end method

.method public clearSynonym()Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1

    .prologue
    .line 5740
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym_:Ljava/util/List;

    .line 5741
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5769
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->cachedSize:I

    if-gez v0, :cond_0

    .line 5771
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->getSerializedSize()I

    .line 5773
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->cachedSize:I

    return v0
.end method

.method public getPartOfSpeech()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5698
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->partOfSpeech_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 5778
    const/4 v3, 0x0

    .line 5779
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->hasPartOfSpeech()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5780
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5784
    :cond_0
    const/4 v0, 0x0

    .line 5785
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->getSynonymList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5786
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 5789
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    add-int/2addr v3, v0

    .line 5790
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->getSynonymList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 5792
    iput v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->cachedSize:I

    .line 5793
    return v3
.end method

.method public getSynonym(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5720
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSynonymCount()I
    .locals 1

    .prologue
    .line 5718
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSynonymList()Ljava/util/List;
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
    .line 5716
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym_:Ljava/util/List;

    return-object v0
.end method

.method public hasPartOfSpeech()Z
    .locals 1

    .prologue
    .line 5699
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->hasPartOfSpeech:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5752
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5801
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5802
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5806
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5807
    :sswitch_0
    return-object p0

    .line 5812
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->setPartOfSpeech(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    goto :goto_0

    .line 5816
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->addSynonym(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    goto :goto_0

    .line 5802
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
    .line 5689
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    move-result-object v0

    return-object v0
.end method

.method public setPartOfSpeech(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1
    .parameter "value"

    .prologue
    .line 5701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->hasPartOfSpeech:Z

    .line 5702
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->partOfSpeech_:Ljava/lang/String;

    .line 5703
    return-object p0
.end method

.method public setSynonym(ILjava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5723
    if-nez p2, :cond_0

    .line 5724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5726
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->synonym_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5727
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
    .line 5758
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->hasPartOfSpeech()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5759
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5761
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;->getSynonymList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5762
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 5764
    .end local v0           #element:Ljava/lang/String;
    :cond_1
    return-void
.end method
