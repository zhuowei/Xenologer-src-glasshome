.class public final Lcom/google/majel/proto/ActionProtos$Phone;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
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
            "Lcom/google/majel/proto/ActionProtos$Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact_:Ljava/util/List;

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->cachedSize:I

    .line 180
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Phone;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Phone;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Phone;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Phone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Phone;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Phone;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Phone;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Phone;

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Phone;

    return-object v0
.end method


# virtual methods
.method public addContact(Lcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 1
    .parameter "value"

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact_:Ljava/util/List;

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Phone;->clearContact()Lcom/google/majel/proto/ActionProtos$Phone;

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->cachedSize:I

    .line 218
    return-object p0
.end method

.method public clearContact()Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact_:Ljava/util/List;

    .line 212
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->cachedSize:I

    if-gez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Phone;->getSerializedSize()I

    .line 240
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->cachedSize:I

    return v0
.end method

.method public getContact(I)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1
    .parameter "index"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    return-object v0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact_:Ljava/util/List;

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
    .line 187
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Phone;->getContactList()Ljava/util/List;

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

    .line 247
    .local v0, element:Lcom/google/majel/proto/ActionProtos$Contact;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 250
    .end local v0           #element:Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_0
    iput v2, p0, Lcom/google/majel/proto/ActionProtos$Phone;->cachedSize:I

    .line 251
    return v2
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 260
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 264
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionProtos$Phone;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    :sswitch_0
    return-object p0

    .line 270
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    .line 271
    .local v1, value:Lcom/google/majel/proto/ActionProtos$Contact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 272
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionProtos$Phone;->addContact(Lcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Phone;

    goto :goto_0

    .line 260
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
    .line 177
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$Phone;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Phone;

    move-result-object v0

    return-object v0
.end method

.method public setContact(ILcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 194
    if-nez p2, :cond_0

    .line 195
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
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
    .line 228
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Phone;->getContactList()Ljava/util/List;

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

    .line 229
    .local v0, element:Lcom/google/majel/proto/ActionProtos$Contact;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 231
    .end local v0           #element:Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_0
    return-void
.end method
