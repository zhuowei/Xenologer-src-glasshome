.class public final Lcom/google/majel/proto/ActionProtos$Sms;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation


# static fields
.field public static final CONTACT_FIELD_NUMBER:I = 0x1

.field public static final MESSAGE_CONTENT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionProtos$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private hasMessageContent:Z

.field private messageContent_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact_:Ljava/util/List;

    .line 333
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->messageContent_:Ljava/lang/String;

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->cachedSize:I

    .line 295
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Sms;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Sms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Sms;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Sms;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Sms;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Sms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Sms;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Sms;

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Sms;

    return-object v0
.end method


# virtual methods
.method public addContact(Lcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1
    .parameter "value"

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact_:Ljava/util/List;

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Sms;->clearContact()Lcom/google/majel/proto/ActionProtos$Sms;

    .line 349
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Sms;->clearMessageContent()Lcom/google/majel/proto/ActionProtos$Sms;

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->cachedSize:I

    .line 351
    return-object p0
.end method

.method public clearContact()Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact_:Ljava/util/List;

    .line 327
    return-object p0
.end method

.method public clearMessageContent()Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->hasMessageContent:Z

    .line 343
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->messageContent_:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->cachedSize:I

    if-gez v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Sms;->getSerializedSize()I

    .line 376
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->cachedSize:I

    return v0
.end method

.method public getContact(I)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1
    .parameter "index"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    return-object v0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact_:Ljava/util/List;

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
            "Lcom/google/majel/proto/ActionProtos$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public getMessageContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->messageContent_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Sms;->getContactList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    .line 383
    .local v0, element:Lcom/google/majel/proto/ActionProtos$Contact;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 386
    .end local v0           #element:Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Sms;->hasMessageContent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Sms;->getMessageContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 390
    :cond_1
    iput v2, p0, Lcom/google/majel/proto/ActionProtos$Sms;->cachedSize:I

    .line 391
    return v2
.end method

.method public hasMessageContent()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->hasMessageContent:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 400
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 404
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionProtos$Sms;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    :sswitch_0
    return-object p0

    .line 410
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    .line 411
    .local v1, value:Lcom/google/majel/proto/ActionProtos$Contact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 412
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionProtos$Sms;->addContact(Lcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Sms;

    goto :goto_0

    .line 416
    .end local v1           #value:Lcom/google/majel/proto/ActionProtos$Contact;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionProtos$Sms;->setMessageContent(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Sms;

    goto :goto_0

    .line 400
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
    .line 292
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$Sms;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Sms;

    move-result-object v0

    return-object v0
.end method

.method public setContact(ILcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 309
    if-nez p2, :cond_0

    .line 310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->contact_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 313
    return-object p0
.end method

.method public setMessageContent(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Sms;
    .locals 1
    .parameter "value"

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Sms;->hasMessageContent:Z

    .line 338
    iput-object p1, p0, Lcom/google/majel/proto/ActionProtos$Sms;->messageContent_:Ljava/lang/String;

    .line 339
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
    .line 361
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Sms;->getContactList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    .line 362
    .local v0, element:Lcom/google/majel/proto/ActionProtos$Contact;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 364
    .end local v0           #element:Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Sms;->hasMessageContent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Sms;->getMessageContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 367
    :cond_1
    return-void
.end method
