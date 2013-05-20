.class public final Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "C2DMRegistrationResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 496
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 398
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 399
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 496
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 404
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 405
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 1

    .prologue
    .line 411
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 407
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 2

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-result-object v0

    .line 436
    .local v0, result:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 439
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 5

    .prologue
    .line 443
    new-instance v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$1;)V

    .line 444
    .local v1, result:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->bitField0_:I

    .line 445
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 446
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 447
    or-int/lit8 v2, v2, 0x1

    .line 449
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->access$502(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 450
    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->access$602(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;I)I

    .line 451
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->onBuilt()V

    .line 452
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 1

    .prologue
    .line 415
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 416
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 417
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->bitField0_:I

    .line 418
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->bitField0_:I

    .line 526
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 527
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->onChanged()V

    .line 528
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 2

    .prologue
    .line 422
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

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
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    return-object v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 501
    iget v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->bitField0_:I

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
    .line 391
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 465
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 470
    :goto_0
    return-object p0

    .line 466
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->setResponseCode(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    .line 469
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v2, 0x0

    .line 483
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    if-eqz v2, :cond_0

    .line 489
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    .line 492
    :cond_0
    return-object p0

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    move-object v2, v0

    .line 486
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 489
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 456
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    if-eqz v0, :cond_0

    .line 457
    check-cast p1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object p0

    .line 460
    .end local p0
    :goto_0
    return-object p0

    .line 459
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
    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

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
    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

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
    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

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
    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setResponseCode(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 513
    if-nez p1, :cond_0

    .line 514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 516
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->bitField0_:I

    .line 517
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 518
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$Builder;->onChanged()V

    .line 519
    return-object p0
.end method
