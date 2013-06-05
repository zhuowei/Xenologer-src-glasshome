.class public final Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsResultsLists"
.end annotation


# static fields
.field public static final RESULTS_LIST_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private resultsList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->resultsList_:Ljava/util/List;

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->cachedSize:I

    .line 241
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;

    check-cast v0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;

    return-object v0
.end method


# virtual methods
.method public addResultsList(Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;
    .locals 1
    .parameter "value"

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->resultsList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->resultsList_:Ljava/util/List;

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->resultsList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-object p0
.end method

.method public final clear()Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->clearResultsList()Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->cachedSize:I

    .line 279
    return-object p0
.end method

.method public clearResultsList()Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->resultsList_:Ljava/util/List;

    .line 273
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->cachedSize:I

    if-gez v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->getSerializedSize()I

    .line 301
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->cachedSize:I

    return v0
.end method

.method public getResultsList(I)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1
    .parameter "index"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->resultsList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    return-object v0
.end method

.method public getResultsListCount()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->resultsList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultsListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->resultsList_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->getResultsListList()Ljava/util/List;

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

    check-cast v0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    .line 308
    .local v0, element:Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 311
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    :cond_0
    iput v2, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->cachedSize:I

    .line 312
    return v2
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 321
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 325
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    :sswitch_0
    return-object p0

    .line 331
    :sswitch_1
    new-instance v1, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;-><init>()V

    .line 332
    .local v1, value:Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 333
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->addResultsList(Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;

    goto :goto_0

    .line 321
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
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;

    move-result-object v0

    return-object v0
.end method

.method public setResultsList(ILcom/google/audio/ears/proto/EarsClient$EarsResultsList;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 255
    if-nez p2, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->resultsList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 259
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
    .line 289
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsLists;->getResultsListList()Ljava/util/List;

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

    check-cast v0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    .line 290
    .local v0, element:Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 292
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    :cond_0
    return-void
.end method
