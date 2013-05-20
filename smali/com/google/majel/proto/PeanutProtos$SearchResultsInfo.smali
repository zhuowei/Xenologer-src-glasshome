.class public final Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResultsInfo"
.end annotation


# static fields
.field public static final QUERY_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasQuery:Z

.field private query_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->query_:Ljava/lang/String;

    .line 712
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->cachedSize:I

    .line 675
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 758
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->clearQuery()Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    .line 696
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->cachedSize:I

    .line 697
    return-object p0
.end method

.method public clearQuery()Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->hasQuery:Z

    .line 690
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->query_:Ljava/lang/String;

    .line 691
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->getSerializedSize()I

    .line 719
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->cachedSize:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 729
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->cachedSize:I

    .line 730
    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->hasQuery:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 739
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 743
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 744
    :sswitch_0
    return-object p0

    .line 749
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->setQuery(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    goto :goto_0

    .line 739
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
    .line 672
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    move-result-object v0

    return-object v0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->hasQuery:Z

    .line 685
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->query_:Ljava/lang/String;

    .line 686
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
    .line 707
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 710
    :cond_0
    return-void
.end method
