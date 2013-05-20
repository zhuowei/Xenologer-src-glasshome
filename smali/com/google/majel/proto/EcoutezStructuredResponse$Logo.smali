.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logo"
.end annotation


# static fields
.field public static final HEIGHT_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x1

.field public static final WIDTH_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasHeight:Z

.field private hasUrl:Z

.field private hasWidth:Z

.field private height_:I

.field private url_:Ljava/lang/String;

.field private width_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7222
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7227
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->url_:Ljava/lang/String;

    .line 7244
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->width_:I

    .line 7261
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->height_:I

    .line 7301
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->cachedSize:I

    .line 7222
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7369
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7363
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    .line 7276
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 7277
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->clearWidth()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 7278
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->clearHeight()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 7279
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->cachedSize:I

    .line 7280
    return-object p0
.end method

.method public clearHeight()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7270
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasHeight:Z

    .line 7271
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->height_:I

    .line 7272
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    .line 7236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasUrl:Z

    .line 7237
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->url_:Ljava/lang/String;

    .line 7238
    return-object p0
.end method

.method public clearWidth()Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7253
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasWidth:Z

    .line 7254
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->width_:I

    .line 7255
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7304
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->cachedSize:I

    if-gez v0, :cond_0

    .line 7306
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getSerializedSize()I

    .line 7308
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->cachedSize:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 7262
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7313
    const/4 v0, 0x0

    .line 7314
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7315
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7318
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7319
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7322
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasHeight()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7323
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7326
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->cachedSize:I

    .line 7327
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7228
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 7245
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 7263
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasHeight:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 7229
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasUrl:Z

    return v0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 7246
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasWidth:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7284
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7335
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7336
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7340
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7341
    :sswitch_0
    return-object p0

    .line 7346
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    goto :goto_0

    .line 7350
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->setWidth(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    goto :goto_0

    .line 7354
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->setHeight(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    goto :goto_0

    .line 7336
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 7219
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    move-result-object v0

    return-object v0
.end method

.method public setHeight(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1
    .parameter "value"

    .prologue
    .line 7265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasHeight:Z

    .line 7266
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->height_:I

    .line 7267
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1
    .parameter "value"

    .prologue
    .line 7231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasUrl:Z

    .line 7232
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->url_:Ljava/lang/String;

    .line 7233
    return-object p0
.end method

.method public setWidth(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;
    .locals 1
    .parameter "value"

    .prologue
    .line 7248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasWidth:Z

    .line 7249
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->width_:I

    .line 7250
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
    .line 7290
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7291
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7293
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7294
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7296
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7297
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7299
    :cond_2
    return-void
.end method
