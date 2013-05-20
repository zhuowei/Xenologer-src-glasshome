.class public final Lcom/google/majel/proto/SpanProtos$AlternateSpan;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SpanProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/SpanProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateSpan"
.end annotation


# static fields
.field public static final ALTERNATE_TEXT_FIELD_NUMBER:I = 0x1


# instance fields
.field private alternateText_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/SpanProtos$AlternateText;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 300
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText_:Ljava/util/List;

    .line 349
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->cachedSize:I

    .line 296
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 397
    new-instance v0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    check-cast v0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    return-object v0
.end method


# virtual methods
.method public addAlternateText(Lcom/google/majel/proto/SpanProtos$AlternateText;)Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 1
    .parameter "value"

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText_:Ljava/util/List;

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->clearAlternateText()Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    .line 333
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->cachedSize:I

    .line 334
    return-object p0
.end method

.method public clearAlternateText()Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 1

    .prologue
    .line 327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText_:Ljava/util/List;

    .line 328
    return-object p0
.end method

.method public getAlternateText(I)Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1
    .parameter "index"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/SpanProtos$AlternateText;

    return-object v0
.end method

.method public getAlternateTextCount()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternateTextList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/SpanProtos$AlternateText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->cachedSize:I

    if-gez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->getSerializedSize()I

    .line 356
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 361
    const/4 v2, 0x0

    .line 362
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->getAlternateTextList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/SpanProtos$AlternateText;

    .line 363
    .local v0, element:Lcom/google/majel/proto/SpanProtos$AlternateText;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 366
    .end local v0           #element:Lcom/google/majel/proto/SpanProtos$AlternateText;
    :cond_0
    iput v2, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->cachedSize:I

    .line 367
    return v2
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 376
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 380
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    :sswitch_0
    return-object p0

    .line 386
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/SpanProtos$AlternateText;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$AlternateText;-><init>()V

    .line 387
    .local v1, value:Lcom/google/majel/proto/SpanProtos$AlternateText;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 388
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->addAlternateText(Lcom/google/majel/proto/SpanProtos$AlternateText;)Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    goto :goto_0

    .line 376
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
    .line 293
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public setAlternateText(ILcom/google/majel/proto/SpanProtos$AlternateText;)Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 310
    if-nez p2, :cond_0

    .line 311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->alternateText_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 314
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
    .line 344
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;->getAlternateTextList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/SpanProtos$AlternateText;

    .line 345
    .local v0, element:Lcom/google/majel/proto/SpanProtos$AlternateText;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 347
    .end local v0           #element:Lcom/google/majel/proto/SpanProtos$AlternateText;
    :cond_0
    return-void
.end method
