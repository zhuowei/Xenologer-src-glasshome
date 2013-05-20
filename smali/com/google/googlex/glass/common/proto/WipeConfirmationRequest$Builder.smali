.class public final Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "WipeConfirmationRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/WipeConfirmationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/WipeConfirmationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 410
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 310
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 311
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 410
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 316
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 317
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_WipeConfirmationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 319
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    .line 348
    .local v0, result:Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 351
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    .locals 5

    .prologue
    .line 355
    new-instance v1, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$1;)V

    .line 356
    .local v1, result:Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 357
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 358
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 359
    or-int/lit8 v2, v2, 0x1

    .line 361
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$502(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    #setter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$602(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;I)I

    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onBuilt()V

    .line 364
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 329
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 330
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 490
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 491
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 492
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 2

    .prologue
    .line 334
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

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
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    .locals 1

    .prologue
    .line 343
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 339
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_WipeConfirmationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 432
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 433
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 438
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 451
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 452
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 453
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 456
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 459
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 420
    iget v1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

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
    .line 303
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_WipeConfirmationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 377
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 384
    :goto_0
    return-object p0

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 380
    #getter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$500(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 381
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 383
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    const/4 v2, 0x0

    .line 397
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    if-eqz v2, :cond_0

    .line 403
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    .line 406
    :cond_0
    return-object p0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-object v2, v0

    .line 400
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 403
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 368
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    if-eqz v0, :cond_0

    .line 369
    check-cast p1, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object p0

    .line 372
    .end local p0
    :goto_0
    return-object p0

    .line 371
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
    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

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
    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

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
    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

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
    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 475
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 476
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 477
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 478
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 505
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 507
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 508
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 509
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 510
    return-object p0
.end method
