.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookItem"
.end annotation


# static fields
.field public static final AUTHOR_FIELD_NUMBER:I = 0x1

.field public static final BOOK_APP_URL_FIELD_NUMBER:I = 0x6

.field public static final GENRE_FIELD_NUMBER:I = 0x3

.field public static final TITLE_FIELD_NUMBER:I = 0x2


# instance fields
.field private author_:Ljava/lang/String;

.field private bookAppUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private genre_:Ljava/lang/String;

.field private hasAuthor:Z

.field private hasBookAppUrl:Z

.field private hasGenre:Z

.field private hasTitle:Z

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4897
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4902
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->author_:Ljava/lang/String;

    .line 4919
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->title_:Ljava/lang/String;

    .line 4936
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->genre_:Ljava/lang/String;

    .line 4953
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bookAppUrl_:Ljava/lang/String;

    .line 4997
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->cachedSize:I

    .line 4897
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1

    .prologue
    .line 4968
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->clearAuthor()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    .line 4969
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->clearTitle()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    .line 4970
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->clearGenre()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    .line 4971
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->clearBookAppUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    .line 4972
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->cachedSize:I

    .line 4973
    return-object p0
.end method

.method public clearAuthor()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1

    .prologue
    .line 4911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasAuthor:Z

    .line 4912
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->author_:Ljava/lang/String;

    .line 4913
    return-object p0
.end method

.method public clearBookAppUrl()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1

    .prologue
    .line 4962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasBookAppUrl:Z

    .line 4963
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bookAppUrl_:Ljava/lang/String;

    .line 4964
    return-object p0
.end method

.method public clearGenre()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1

    .prologue
    .line 4945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasGenre:Z

    .line 4946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->genre_:Ljava/lang/String;

    .line 4947
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1

    .prologue
    .line 4928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasTitle:Z

    .line 4929
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->title_:Ljava/lang/String;

    .line 4930
    return-object p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4903
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->author_:Ljava/lang/String;

    return-object v0
.end method

.method public getBookAppUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4954
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bookAppUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5000
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->cachedSize:I

    if-gez v0, :cond_0

    .line 5002
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->getSerializedSize()I

    .line 5004
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->cachedSize:I

    return v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4937
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->genre_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5009
    const/4 v0, 0x0

    .line 5010
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasAuthor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5011
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5014
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5015
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5018
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasGenre()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5019
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5022
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasBookAppUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5023
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->getBookAppUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5026
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->cachedSize:I

    .line 5027
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4920
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthor()Z
    .locals 1

    .prologue
    .line 4904
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasAuthor:Z

    return v0
.end method

.method public hasBookAppUrl()Z
    .locals 1

    .prologue
    .line 4955
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasBookAppUrl:Z

    return v0
.end method

.method public hasGenre()Z
    .locals 1

    .prologue
    .line 4938
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasGenre:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 4921
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4977
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5035
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5036
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5040
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5041
    :sswitch_0
    return-object p0

    .line 5046
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->setAuthor(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    goto :goto_0

    .line 5050
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->setTitle(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    goto :goto_0

    .line 5054
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    goto :goto_0

    .line 5058
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->setBookAppUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    goto :goto_0

    .line 5036
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
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
    .line 4894
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5073
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5067
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasAuthor:Z

    .line 4907
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->author_:Ljava/lang/String;

    .line 4908
    return-object p0
.end method

.method public setBookAppUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasBookAppUrl:Z

    .line 4958
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->bookAppUrl_:Ljava/lang/String;

    .line 4959
    return-object p0
.end method

.method public setGenre(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasGenre:Z

    .line 4941
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->genre_:Ljava/lang/String;

    .line 4942
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasTitle:Z

    .line 4924
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->title_:Ljava/lang/String;

    .line 4925
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
    .line 4983
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasAuthor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4984
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4986
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4987
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4989
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasGenre()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4990
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4992
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->hasBookAppUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4993
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$BookItem;->getBookAppUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4995
    :cond_3
    return-void
.end method
