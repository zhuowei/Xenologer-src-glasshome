.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TopLink"
.end annotation


# static fields
.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasTitle:Z

.field private hasUrl:Z

.field private title_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2117
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->url_:Ljava/lang/String;

    .line 2139
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->title_:Ljava/lang/String;

    .line 2175
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->cachedSize:I

    .line 2117
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1

    .prologue
    .line 2154
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    .line 2155
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    .line 2156
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->cachedSize:I

    .line 2157
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1

    .prologue
    .line 2148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->hasTitle:Z

    .line 2149
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->title_:Ljava/lang/String;

    .line 2150
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1

    .prologue
    .line 2131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->hasUrl:Z

    .line 2132
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->url_:Ljava/lang/String;

    .line 2133
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2178
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->cachedSize:I

    if-gez v0, :cond_0

    .line 2180
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->getSerializedSize()I

    .line 2182
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2187
    const/4 v0, 0x0

    .line 2188
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2189
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2192
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2193
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2196
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->cachedSize:I

    .line 2197
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 2141
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->hasTitle:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 2124
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2161
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2205
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2206
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2210
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2211
    :sswitch_0
    return-object p0

    .line 2216
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    goto :goto_0

    .line 2220
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    goto :goto_0

    .line 2206
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
    .line 2114
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2235
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2229
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1
    .parameter "value"

    .prologue
    .line 2143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->hasTitle:Z

    .line 2144
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->title_:Ljava/lang/String;

    .line 2145
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;
    .locals 1
    .parameter "value"

    .prologue
    .line 2126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->hasUrl:Z

    .line 2127
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->url_:Ljava/lang/String;

    .line 2128
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
    .line 2167
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2168
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2170
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FinanceResult$TopLink;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2173
    :cond_1
    return-void
.end method
