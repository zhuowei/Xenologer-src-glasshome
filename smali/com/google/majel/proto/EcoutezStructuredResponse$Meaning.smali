.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Meaning"
.end annotation


# static fields
.field public static final EXAMPLE_FIELD_NUMBER:I = 0x3

.field public static final TEXT_FIELD_NUMBER:I = 0x1

.field public static final URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private example_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasText:Z

.field private hasUrl:Z

.field private text_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5372
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->text_:Ljava/lang/String;

    .line 5394
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->url_:Ljava/lang/String;

    .line 5410
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example_:Ljava/util/List;

    .line 5467
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->cachedSize:I

    .line 5372
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5540
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5534
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    return-object v0
.end method


# virtual methods
.method public addExample(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1
    .parameter "value"

    .prologue
    .line 5427
    if-nez p1, :cond_0

    .line 5428
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5430
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example_:Ljava/util/List;

    .line 5433
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5434
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1

    .prologue
    .line 5442
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->clearText()Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    .line 5443
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    .line 5444
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->clearExample()Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    .line 5445
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->cachedSize:I

    .line 5446
    return-object p0
.end method

.method public clearExample()Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1

    .prologue
    .line 5437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example_:Ljava/util/List;

    .line 5438
    return-object p0
.end method

.method public clearText()Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1

    .prologue
    .line 5386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->hasText:Z

    .line 5387
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->text_:Ljava/lang/String;

    .line 5388
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1

    .prologue
    .line 5403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->hasUrl:Z

    .line 5404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->url_:Ljava/lang/String;

    .line 5405
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5470
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->cachedSize:I

    if-gez v0, :cond_0

    .line 5472
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->getSerializedSize()I

    .line 5474
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->cachedSize:I

    return v0
.end method

.method public getExample(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5417
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExampleCount()I
    .locals 1

    .prologue
    .line 5415
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExampleList()Ljava/util/List;
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
    .line 5413
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 5479
    const/4 v3, 0x0

    .line 5480
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->hasText()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5481
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5484
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5485
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 5489
    :cond_1
    const/4 v0, 0x0

    .line 5490
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->getExampleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5491
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 5494
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 5495
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->getExampleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 5497
    iput v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->cachedSize:I

    .line 5498
    return v3
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5378
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5395
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 5379
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->hasText:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 5396
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5450
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5506
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5507
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5511
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5512
    :sswitch_0
    return-object p0

    .line 5517
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->setText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    goto :goto_0

    .line 5521
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    goto :goto_0

    .line 5525
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->addExample(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    goto :goto_0

    .line 5507
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 5369
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;

    move-result-object v0

    return-object v0
.end method

.method public setExample(ILjava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5420
    if-nez p2, :cond_0

    .line 5421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5423
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->example_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5424
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1
    .parameter "value"

    .prologue
    .line 5381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->hasText:Z

    .line 5382
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->text_:Ljava/lang/String;

    .line 5383
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;
    .locals 1
    .parameter "value"

    .prologue
    .line 5398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->hasUrl:Z

    .line 5399
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->url_:Ljava/lang/String;

    .line 5400
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
    .line 5456
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5457
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5459
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5460
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5462
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Meaning;->getExampleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5463
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 5465
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    return-void
.end method
