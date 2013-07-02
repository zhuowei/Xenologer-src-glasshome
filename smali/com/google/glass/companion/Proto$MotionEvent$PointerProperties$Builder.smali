.class public final Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$MotionEvent$PointerPropertiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;",
        "Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$MotionEvent$PointerPropertiesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:I

.field private toolType_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4391
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4392
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->maybeForceBuilderInitialization()V

    .line 4393
    return-void
.end method

.method static synthetic access$2700()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 1

    .prologue
    .line 4384
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->create()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 1

    .prologue
    .line 4398
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4396
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 2

    .prologue
    .line 4419
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->buildPartial()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    .line 4420
    .local v0, result:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4421
    invoke-static {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4423
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4384
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->build()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 5

    .prologue
    .line 4427
    new-instance v1, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 4428
    .local v1, result:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    .line 4429
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4430
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4431
    or-int/lit8 v2, v2, 0x1

    .line 4433
    :cond_0
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->id_:I

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->access$2902(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;I)I

    .line 4434
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4435
    or-int/lit8 v2, v2, 0x2

    .line 4437
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->toolType_:I

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->access$3002(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;I)I

    .line 4438
    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->access$3102(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;I)I

    .line 4439
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4384
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->buildPartial()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4402
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4403
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->id_:I

    .line 4404
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    .line 4405
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->toolType_:I

    .line 4406
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    .line 4407
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4384
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->clear()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4384
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->clear()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 1

    .prologue
    .line 4503
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    .line 4504
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->id_:I

    .line 4506
    return-object p0
.end method

.method public clearToolType()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 1

    .prologue
    .line 4535
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    .line 4536
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->toolType_:I

    .line 4538
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 2

    .prologue
    .line 4411
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->create()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->buildPartial()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4384
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4384
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4384
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4384
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    .line 4415
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->getDefaultInstance()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4384
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4384
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 4488
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->id_:I

    return v0
.end method

.method public getToolType()I
    .locals 1

    .prologue
    .line 4520
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->toolType_:I

    return v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4482
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToolType()Z
    .locals 2

    .prologue
    .line 4514
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4455
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 4443
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->getDefaultInstance()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4451
    :goto_0
    return-object p0

    .line 4444
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4445
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->setId(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    .line 4447
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->hasToolType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4448
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->getToolType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->setToolType(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    .line 4450
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->access$3200(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4462
    const/4 v2, 0x0

    .line 4464
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4469
    if-eqz v2, :cond_0

    .line 4470
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    .line 4473
    :cond_0
    return-object p0

    .line 4465
    :catch_0
    move-exception v1

    .line 4466
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-object v2, v0

    .line 4467
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4469
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 4470
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    :cond_1
    throw v3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4384
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4384
    check-cast p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4384
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4494
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    .line 4495
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->id_:I

    .line 4497
    return-object p0
.end method

.method public setToolType(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4526
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->bitField0_:I

    .line 4527
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->toolType_:I

    .line 4529
    return-object p0
.end method
