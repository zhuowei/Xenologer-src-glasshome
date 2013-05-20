.class public final Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenApplicationAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    }
.end annotation


# static fields
.field public static final ARG_VALUE_FIELD_NUMBER:I = 0x3

.field public static final INITIAL_ACTION_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private argValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasInitialAction:Z

.field private hasName:Z

.field private initialAction_:Ljava/lang/String;

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4068
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4286
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->name_:Ljava/lang/String;

    .line 4303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->initialAction_:Ljava/lang/String;

    .line 4319
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue_:Ljava/util/List;

    .line 4376
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->cachedSize:I

    .line 4068
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4446
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4440
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    return-object v0
.end method


# virtual methods
.method public addArgValue(Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 4336
    if-nez p1, :cond_0

    .line 4337
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4339
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue_:Ljava/util/List;

    .line 4342
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4343
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1

    .prologue
    .line 4351
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->clearName()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    .line 4352
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->clearInitialAction()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    .line 4353
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->clearArgValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    .line 4354
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->cachedSize:I

    .line 4355
    return-object p0
.end method

.method public clearArgValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1

    .prologue
    .line 4346
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue_:Ljava/util/List;

    .line 4347
    return-object p0
.end method

.method public clearInitialAction()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1

    .prologue
    .line 4312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->hasInitialAction:Z

    .line 4313
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->initialAction_:Ljava/lang/String;

    .line 4314
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1

    .prologue
    .line 4295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->hasName:Z

    .line 4296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->name_:Ljava/lang/String;

    .line 4297
    return-object p0
.end method

.method public getArgValue(I)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .parameter "index"

    .prologue
    .line 4326
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    return-object v0
.end method

.method public getArgValueCount()I
    .locals 1

    .prologue
    .line 4324
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getArgValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4322
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4379
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 4381
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->getSerializedSize()I

    .line 4383
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->cachedSize:I

    return v0
.end method

.method public getInitialAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4304
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->initialAction_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4287
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 4388
    const/4 v2, 0x0

    .line 4389
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->hasName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4390
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4393
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->hasInitialAction()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4394
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->getInitialAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4397
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->getArgValueList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    .line 4398
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 4401
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->cachedSize:I

    .line 4402
    return v2
.end method

.method public hasInitialAction()Z
    .locals 1

    .prologue
    .line 4305
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->hasInitialAction:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4288
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->hasName:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4359
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4410
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4411
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4415
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4416
    :sswitch_0
    return-object p0

    .line 4421
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    goto :goto_0

    .line 4425
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->setInitialAction(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    goto :goto_0

    .line 4429
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;-><init>()V

    .line 4430
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4431
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->addArgValue(Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    goto :goto_0

    .line 4411
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
    .line 4065
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;

    move-result-object v0

    return-object v0
.end method

.method public setArgValue(ILcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4329
    if-nez p2, :cond_0

    .line 4330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4332
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->argValue_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4333
    return-object p0
.end method

.method public setInitialAction(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 4307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->hasInitialAction:Z

    .line 4308
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->initialAction_:Ljava/lang/String;

    .line 4309
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 4290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->hasName:Z

    .line 4291
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->name_:Ljava/lang/String;

    .line 4292
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
    .line 4365
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4366
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4368
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->hasInitialAction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4369
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->getInitialAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4371
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;->getArgValueList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    .line 4372
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 4374
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    :cond_2
    return-void
.end method
