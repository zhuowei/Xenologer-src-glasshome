.class public final Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReportUserEventResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ReportUserEventResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ReportUserEventResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private responseCode_:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 461
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    .line 363
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->maybeForceBuilderInitialization()V

    .line 364
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 461
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    .line 369
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->maybeForceBuilderInitialization()V

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_ReportUserEventResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-result-object v0

    .line 401
    .local v0, result:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 404
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;
    .locals 5

    .prologue
    .line 408
    new-instance v1, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$1;)V

    .line 409
    .local v1, result:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->bitField0_:I

    .line 410
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 411
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 412
    or-int/lit8 v2, v2, 0x1

    .line 414
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->access$502(Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    .line 415
    #setter for: Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->access$602(Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;I)I

    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->onBuilt()V

    .line 417
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 381
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    .line 382
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->bitField0_:I

    .line 383
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->bitField0_:I

    .line 491
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    .line 492
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->onChanged()V

    .line 493
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

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
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;
    .locals 1

    .prologue
    .line 396
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_ReportUserEventResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    return-object v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 466
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 356
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_ReportUserEventResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 430
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 435
    :goto_0
    return-object p0

    .line 431
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->setResponseCode(Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    .line 434
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v2, 0x0

    .line 448
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    .line 457
    :cond_0
    return-object p0

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    move-object v2, v0

    .line 451
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 454
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 421
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    if-eqz v0, :cond_0

    .line 422
    check-cast p1, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object p0

    .line 425
    .end local p0
    :goto_0
    return-object p0

    .line 424
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
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
    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

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
    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setResponseCode(Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 481
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->bitField0_:I

    .line 482
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$ResponseCode;

    .line 483
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse$Builder;->onChanged()V

    .line 484
    return-object p0
.end method
