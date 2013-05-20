.class public final Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneAction"
.end annotation


# static fields
.field public static final CONTACT_FIELD_NUMBER:I = 0x2


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
    .line 3141
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact_:Ljava/util/List;

    .line 3194
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->cachedSize:I

    .line 3141
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3248
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3242
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    return-object v0
.end method


# virtual methods
.method public addContact(Lcom/google/majel/proto/ActionV2Protos$ActionContact;)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3162
    if-nez p1, :cond_0

    .line 3163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3165
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact_:Ljava/util/List;

    .line 3168
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3169
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 1

    .prologue
    .line 3177
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->clearContact()Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    .line 3178
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->cachedSize:I

    .line 3179
    return-object p0
.end method

.method public clearContact()Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 1

    .prologue
    .line 3172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact_:Ljava/util/List;

    .line 3173
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3197
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 3199
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->getSerializedSize()I

    .line 3201
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->cachedSize:I

    return v0
.end method

.method public getContact(I)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "index"

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    return-object v0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact_:Ljava/util/List;

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
    .line 3148
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3206
    const/4 v2, 0x0

    .line 3207
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->getContactList()Ljava/util/List;

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

    .line 3208
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3211
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_0
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->cachedSize:I

    .line 3212
    return v2
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3183
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3220
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3221
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3225
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3226
    :sswitch_0
    return-object p0

    .line 3231
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    .line 3232
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3233
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->addContact(Lcom/google/majel/proto/ActionV2Protos$ActionContact;)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    goto :goto_0

    .line 3221
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
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
    .line 3138
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    move-result-object v0

    return-object v0
.end method

.method public setContact(ILcom/google/majel/proto/ActionV2Protos$ActionContact;)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3155
    if-nez p2, :cond_0

    .line 3156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3158
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3159
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
    .line 3189
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->getContactList()Ljava/util/List;

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

    .line 3190
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 3192
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_0
    return-void
.end method
