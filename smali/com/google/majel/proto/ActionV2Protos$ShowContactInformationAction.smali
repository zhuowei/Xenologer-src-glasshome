.class public final Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShowContactInformationAction"
.end annotation


# static fields
.field public static final CONTACT_FIELD_NUMBER:I = 0x1

.field public static final HAS_MOONSHINE_CONTACT_RESULTS_FIELD_NUMBER:I = 0x5

.field public static final SHOW_EMAIL_FIELD_NUMBER:I = 0x3

.field public static final SHOW_PHONE_FIELD_NUMBER:I = 0x2

.field public static final SHOW_POSTAL_ADDRESS_FIELD_NUMBER:I = 0x4


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

.field private hasHasMoonshineContactResults:Z

.field private hasMoonshineContactResults_:Z

.field private hasShowEmail:Z

.field private hasShowPhone:Z

.field private hasShowPostalAddress:Z

.field private showEmail_:Z

.field private showPhone_:Z

.field private showPostalAddress_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9193
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact_:Ljava/util/List;

    .line 9231
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPhone_:Z

    .line 9248
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showEmail_:Z

    .line 9265
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPostalAddress_:Z

    .line 9282
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasMoonshineContactResults_:Z

    .line 9330
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->cachedSize:I

    .line 9193
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9416
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9410
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    return-object v0
.end method


# virtual methods
.method public addContact(Lcom/google/majel/proto/ActionV2Protos$ActionContact;)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 9214
    if-nez p1, :cond_0

    .line 9215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9217
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact_:Ljava/util/List;

    .line 9220
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9221
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1

    .prologue
    .line 9297
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->clearContact()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    .line 9298
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->clearShowPhone()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    .line 9299
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->clearShowEmail()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    .line 9300
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->clearShowPostalAddress()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    .line 9301
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->clearHasMoonshineContactResults()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    .line 9302
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->cachedSize:I

    .line 9303
    return-object p0
.end method

.method public clearContact()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1

    .prologue
    .line 9224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact_:Ljava/util/List;

    .line 9225
    return-object p0
.end method

.method public clearHasMoonshineContactResults()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9291
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasHasMoonshineContactResults:Z

    .line 9292
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasMoonshineContactResults_:Z

    .line 9293
    return-object p0
.end method

.method public clearShowEmail()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9257
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowEmail:Z

    .line 9258
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showEmail_:Z

    .line 9259
    return-object p0
.end method

.method public clearShowPhone()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9240
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowPhone:Z

    .line 9241
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPhone_:Z

    .line 9242
    return-object p0
.end method

.method public clearShowPostalAddress()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9274
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowPostalAddress:Z

    .line 9275
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPostalAddress_:Z

    .line 9276
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9333
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 9335
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->getSerializedSize()I

    .line 9337
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->cachedSize:I

    return v0
.end method

.method public getContact(I)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "index"

    .prologue
    .line 9204
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    return-object v0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 9202
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact_:Ljava/util/List;

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
    .line 9200
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public getHasMoonshineContactResults()Z
    .locals 1

    .prologue
    .line 9283
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasMoonshineContactResults_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 9342
    const/4 v2, 0x0

    .line 9343
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->getContactList()Ljava/util/List;

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

    .line 9344
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 9347
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowPhone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9348
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->getShowPhone()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 9351
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowEmail()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9352
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->getShowEmail()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 9355
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowPostalAddress()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9356
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->getShowPostalAddress()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 9359
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasHasMoonshineContactResults()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9360
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->getHasMoonshineContactResults()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 9363
    :cond_4
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->cachedSize:I

    .line 9364
    return v2
.end method

.method public getShowEmail()Z
    .locals 1

    .prologue
    .line 9249
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showEmail_:Z

    return v0
.end method

.method public getShowPhone()Z
    .locals 1

    .prologue
    .line 9232
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPhone_:Z

    return v0
.end method

.method public getShowPostalAddress()Z
    .locals 1

    .prologue
    .line 9266
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPostalAddress_:Z

    return v0
.end method

.method public hasHasMoonshineContactResults()Z
    .locals 1

    .prologue
    .line 9284
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasHasMoonshineContactResults:Z

    return v0
.end method

.method public hasShowEmail()Z
    .locals 1

    .prologue
    .line 9250
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowEmail:Z

    return v0
.end method

.method public hasShowPhone()Z
    .locals 1

    .prologue
    .line 9233
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowPhone:Z

    return v0
.end method

.method public hasShowPostalAddress()Z
    .locals 1

    .prologue
    .line 9267
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowPostalAddress:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9307
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9372
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9373
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9377
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9378
    :sswitch_0
    return-object p0

    .line 9383
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    .line 9384
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9385
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->addContact(Lcom/google/majel/proto/ActionV2Protos$ActionContact;)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    goto :goto_0

    .line 9389
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->setShowPhone(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    goto :goto_0

    .line 9393
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->setShowEmail(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    goto :goto_0

    .line 9397
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->setShowPostalAddress(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    goto :goto_0

    .line 9401
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->setHasMoonshineContactResults(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    goto :goto_0

    .line 9373
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 9190
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    move-result-object v0

    return-object v0
.end method

.method public setContact(ILcom/google/majel/proto/ActionV2Protos$ActionContact;)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9207
    if-nez p2, :cond_0

    .line 9208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9210
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9211
    return-object p0
.end method

.method public setHasMoonshineContactResults(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 9286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasHasMoonshineContactResults:Z

    .line 9287
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasMoonshineContactResults_:Z

    .line 9288
    return-object p0
.end method

.method public setShowEmail(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 9252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowEmail:Z

    .line 9253
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showEmail_:Z

    .line 9254
    return-object p0
.end method

.method public setShowPhone(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 9235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowPhone:Z

    .line 9236
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPhone_:Z

    .line 9237
    return-object p0
.end method

.method public setShowPostalAddress(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 9269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowPostalAddress:Z

    .line 9270
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPostalAddress_:Z

    .line 9271
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
    .line 9313
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->getContactList()Ljava/util/List;

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

    .line 9314
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 9316
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9317
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->getShowPhone()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 9319
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowEmail()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9320
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->getShowEmail()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 9322
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasShowPostalAddress()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9323
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->getShowPostalAddress()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 9325
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasHasMoonshineContactResults()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9326
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->getHasMoonshineContactResults()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 9328
    :cond_4
    return-void
.end method
