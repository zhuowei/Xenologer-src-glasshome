.class public final Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "LocationUpdateResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/LocationUpdateResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/LocationUpdateResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 443
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    .line 341
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->maybeForceBuilderInitialization()V

    .line 342
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 443
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    .line 347
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->maybeForceBuilderInitialization()V

    .line 348
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 354
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationRequest;->internal_static_googlex_glass_common_proto_LocationUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 2

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-result-object v0

    .line 379
    .local v0, result:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 382
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 5

    .prologue
    .line 386
    new-instance v1, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$1;)V

    .line 387
    .local v1, result:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->bitField0_:I

    .line 388
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 389
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 390
    or-int/lit8 v2, v2, 0x1

    .line 392
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    #setter for: Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->access$502(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    .line 393
    #setter for: Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->access$602(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;I)I

    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->onBuilt()V

    .line 395
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 359
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    .line 360
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->bitField0_:I

    .line 361
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->bitField0_:I

    .line 473
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    .line 474
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->onChanged()V

    .line 475
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

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
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1

    .prologue
    .line 374
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationRequest;->internal_static_googlex_glass_common_proto_LocationUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    return-object v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 448
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->bitField0_:I

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
    .line 334
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationRequest;->internal_static_googlex_glass_common_proto_LocationUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->hasResponseCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 408
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 413
    :goto_0
    return-object p0

    .line 409
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->setResponseCode(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    .line 412
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v2, 0x0

    .line 430
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    if-eqz v2, :cond_0

    .line 436
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    .line 439
    :cond_0
    return-object p0

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-object v2, v0

    .line 433
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 436
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 399
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    if-eqz v0, :cond_0

    .line 400
    check-cast p1, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object p0

    .line 403
    .end local p0
    :goto_0
    return-object p0

    .line 402
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
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

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
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

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
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

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
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setResponseCode(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 463
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->bitField0_:I

    .line 464
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    .line 465
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->onChanged()V

    .line 466
    return-object p0
.end method
