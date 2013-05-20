.class public final Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SetupUserAccountRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/SetupUserAccountRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/SetupUserAccountRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 407
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 307
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->maybeForceBuilderInitialization()V

    .line 308
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 407
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 313
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->maybeForceBuilderInitialization()V

    .line 314
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/google/googlex/glass/common/proto/Setup;->internal_static_googlex_glass_common_proto_SetupUserAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-result-object v0

    .line 345
    .local v0, result:Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 348
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;
    .locals 5

    .prologue
    .line 352
    new-instance v1, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$1;)V

    .line 353
    .local v1, result:Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

    .line 354
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 355
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 356
    or-int/lit8 v2, v2, 0x1

    .line 358
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->access$502(Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    #setter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->access$602(Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;I)I

    .line 360
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->onBuilt()V

    .line 361
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 326
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

    .line 327
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

    .line 482
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 483
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->onChanged()V

    .line 484
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;
    .locals 2

    .prologue
    .line 331
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

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
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/google/googlex/glass/common/proto/Setup;->internal_static_googlex_glass_common_proto_SetupUserAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 427
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 428
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 433
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
    .line 445
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 446
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 447
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 450
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 453
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

    .line 416
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

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
    .line 300
    sget-object v0, Lcom/google/googlex/glass/common/proto/Setup;->internal_static_googlex_glass_common_proto_SetupUserAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 374
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 381
    :goto_0
    return-object p0

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

    .line 377
    #getter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->access$500(Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->onChanged()V

    .line 380
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    const/4 v2, 0x0

    .line 394
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    if-eqz v2, :cond_0

    .line 400
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    .line 403
    :cond_0
    return-object p0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    move-object v2, v0

    .line 397
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 400
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 365
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    if-eqz v0, :cond_0

    .line 366
    check-cast p1, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object p0

    .line 369
    .end local p0
    :goto_0
    return-object p0

    .line 368
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
    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

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
    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

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
    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

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
    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 465
    if-nez p1, :cond_0

    .line 466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 468
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

    .line 469
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 470
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->onChanged()V

    .line 471
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 495
    if-nez p1, :cond_0

    .line 496
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 498
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->bitField0_:I

    .line 499
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 500
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountRequest$Builder;->onChanged()V

    .line 501
    return-object p0
.end method
