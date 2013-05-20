.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PosMeaning"
.end annotation


# static fields
.field public static final MEANING_FIELD_NUMBER:I = 0x2

.field public static final PART_OF_SPEECH_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasPartOfSpeech:Z

.field private meaning_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;",
            ">;"
        }
    .end annotation
.end field

.field private partOfSpeech_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5548
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->partOfSpeech_:Ljava/lang/String;

    .line 5569
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning_:Ljava/util/List;

    .line 5622
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->cachedSize:I

    .line 5548
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5684
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5678
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    return-object v0
.end method


# virtual methods
.method public addMeaning(Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1
    .parameter "value"

    .prologue
    .line 5586
    if-nez p1, :cond_0

    .line 5587
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5589
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning_:Ljava/util/List;

    .line 5592
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5593
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1

    .prologue
    .line 5601
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->clearPartOfSpeech()Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    .line 5602
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->clearMeaning()Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    .line 5603
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->cachedSize:I

    .line 5604
    return-object p0
.end method

.method public clearMeaning()Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1

    .prologue
    .line 5596
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning_:Ljava/util/List;

    .line 5597
    return-object p0
.end method

.method public clearPartOfSpeech()Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1

    .prologue
    .line 5562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->hasPartOfSpeech:Z

    .line 5563
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->partOfSpeech_:Ljava/lang/String;

    .line 5564
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5625
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->cachedSize:I

    if-gez v0, :cond_0

    .line 5627
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getSerializedSize()I

    .line 5629
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->cachedSize:I

    return v0
.end method

.method public getMeaning(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1
    .parameter "index"

    .prologue
    .line 5576
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    return-object v0
.end method

.method public getMeaningCount()I
    .locals 1

    .prologue
    .line 5574
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMeaningList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5572
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning_:Ljava/util/List;

    return-object v0
.end method

.method public getPartOfSpeech()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5554
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->partOfSpeech_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 5634
    const/4 v2, 0x0

    .line 5635
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->hasPartOfSpeech()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5636
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5639
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getMeaningList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    .line 5640
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 5643
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    :cond_1
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->cachedSize:I

    .line 5644
    return v2
.end method

.method public hasPartOfSpeech()Z
    .locals 1

    .prologue
    .line 5555
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->hasPartOfSpeech:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5608
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5652
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5653
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5657
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5658
    :sswitch_0
    return-object p0

    .line 5663
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->setPartOfSpeech(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    goto :goto_0

    .line 5667
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;-><init>()V

    .line 5668
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5669
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->addMeaning(Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    goto :goto_0

    .line 5653
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
    .line 5545
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    move-result-object v0

    return-object v0
.end method

.method public setMeaning(ILcom/google/majel/proto/EcoutezStructuredResponse$Meaning;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5579
    if-nez p2, :cond_0

    .line 5580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5582
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->meaning_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5583
    return-object p0
.end method

.method public setPartOfSpeech(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1
    .parameter "value"

    .prologue
    .line 5557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->hasPartOfSpeech:Z

    .line 5558
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->partOfSpeech_:Ljava/lang/String;

    .line 5559
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
    .line 5614
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->hasPartOfSpeech()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5615
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5617
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;->getMeaningList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    .line 5618
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 5620
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    :cond_1
    return-void
.end method
