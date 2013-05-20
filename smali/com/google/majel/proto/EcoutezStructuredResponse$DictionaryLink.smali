.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DictionaryLink"
.end annotation


# static fields
.field public static final TEXT_FIELD_NUMBER:I = 0x1

.field public static final URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasText:Z

.field private hasUrl:Z

.field private text_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5839
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->text_:Ljava/lang/String;

    .line 5861
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->url_:Ljava/lang/String;

    .line 5897
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->cachedSize:I

    .line 5839
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5957
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5951
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .locals 1

    .prologue
    .line 5876
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->clearText()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 5877
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 5878
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->cachedSize:I

    .line 5879
    return-object p0
.end method

.method public clearText()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .locals 1

    .prologue
    .line 5853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->hasText:Z

    .line 5854
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->text_:Ljava/lang/String;

    .line 5855
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .locals 1

    .prologue
    .line 5870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->hasUrl:Z

    .line 5871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->url_:Ljava/lang/String;

    .line 5872
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5900
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->cachedSize:I

    if-gez v0, :cond_0

    .line 5902
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->getSerializedSize()I

    .line 5904
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5909
    const/4 v0, 0x0

    .line 5910
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5911
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5914
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5915
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5918
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->cachedSize:I

    .line 5919
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5845
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5862
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 5846
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->hasText:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 5863
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5883
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5927
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5928
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5932
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5933
    :sswitch_0
    return-object p0

    .line 5938
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->setText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    goto :goto_0

    .line 5942
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    goto :goto_0

    .line 5928
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
    .line 5836
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .locals 1
    .parameter "value"

    .prologue
    .line 5848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->hasText:Z

    .line 5849
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->text_:Ljava/lang/String;

    .line 5850
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .locals 1
    .parameter "value"

    .prologue
    .line 5865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->hasUrl:Z

    .line 5866
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->url_:Ljava/lang/String;

    .line 5867
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
    .line 5889
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5890
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5892
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5893
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5895
    :cond_1
    return-void
.end method
