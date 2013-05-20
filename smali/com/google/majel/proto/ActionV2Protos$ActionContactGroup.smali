.class public final Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionContactGroup"
.end annotation


# static fields
.field public static final CONTACT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ActionContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2290
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2294
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact_:Ljava/util/List;

    .line 2343
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->cachedSize:I

    .line 2290
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2397
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2391
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    return-object v0
.end method


# virtual methods
.method public addContact(Lcom/google/majel/proto/ActionV2Protos$ActionContact;)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1
    .parameter "value"

    .prologue
    .line 2311
    if-nez p1, :cond_0

    .line 2312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2314
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact_:Ljava/util/List;

    .line 2317
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2318
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->clearContact()Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    .line 2327
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->cachedSize:I

    .line 2328
    return-object p0
.end method

.method public clearContact()Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1

    .prologue
    .line 2321
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact_:Ljava/util/List;

    .line 2322
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2346
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->cachedSize:I

    if-gez v0, :cond_0

    .line 2348
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->getSerializedSize()I

    .line 2350
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->cachedSize:I

    return v0
.end method

.method public getContact(I)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "index"

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    return-object v0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ActionContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2355
    const/4 v2, 0x0

    .line 2356
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->getContactList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2357
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2360
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_0
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->cachedSize:I

    .line 2361
    return v2
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2332
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2369
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2370
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2374
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2375
    :sswitch_0
    return-object p0

    .line 2380
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    .line 2381
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2382
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->addContact(Lcom/google/majel/proto/ActionV2Protos$ActionContact;)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    goto :goto_0

    .line 2370
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
    .line 2287
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    move-result-object v0

    return-object v0
.end method

.method public setContact(ILcom/google/majel/proto/ActionV2Protos$ActionContact;)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2304
    if-nez p2, :cond_0

    .line 2305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2307
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2308
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
    .line 2338
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->getContactList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2339
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2341
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_0
    return-void
.end method
