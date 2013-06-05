.class public final Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "EntitySyncRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/EntitySyncRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/EntitySyncRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private allShareTargets_:Z

.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private enabledTargetsOnly_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 504
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 386
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->maybeForceBuilderInitialization()V

    .line 387
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 504
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 392
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->maybeForceBuilderInitialization()V

    .line 393
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/EntitySyncRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySync;->internal_static_googlex_glass_common_proto_EntitySyncRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    .line 428
    .local v0, result:Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 431
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 5

    .prologue
    .line 435
    new-instance v1, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/EntitySyncRequest$1;)V

    .line 436
    .local v1, result:Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 437
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 438
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 439
    or-int/lit8 v2, v2, 0x1

    .line 441
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->access$502(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 443
    or-int/lit8 v2, v2, 0x2

    .line 445
    :cond_1
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->allShareTargets_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->allShareTargets_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->access$602(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;Z)Z

    .line 446
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 447
    or-int/lit8 v2, v2, 0x4

    .line 449
    :cond_2
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->enabledTargetsOnly_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->enabledTargetsOnly_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->access$702(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;Z)Z

    .line 450
    #setter for: Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->access$802(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;I)I

    .line 451
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->onBuilt()V

    .line 452
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 403
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 405
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 406
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->allShareTargets_:Z

    .line 407
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 408
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->enabledTargetsOnly_:Z

    .line 409
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 410
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAllShareTargets()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->allShareTargets_:Z

    .line 651
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->onChanged()V

    .line 652
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 584
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 585
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->onChanged()V

    .line 586
    return-object p0
.end method

.method public clearEnabledTargetsOnly()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->enabledTargetsOnly_:Z

    .line 711
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->onChanged()V

    .line 712
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 2

    .prologue
    .line 414
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

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
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllShareTargets()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->allShareTargets_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySync;->internal_static_googlex_glass_common_proto_EntitySyncRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 526
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 527
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 532
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
    .line 545
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 546
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 547
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 550
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 553
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

.method public getEnabledTargetsOnly()Z
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->enabledTargetsOnly_:Z

    return v0
.end method

.method public hasAllShareTargets()Z
    .locals 2

    .prologue
    .line 616
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 514
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnabledTargetsOnly()Z
    .locals 2

    .prologue
    .line 667
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 379
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySync;->internal_static_googlex_glass_common_proto_EntitySyncRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 465
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 478
    :goto_0
    return-object p0

    .line 466
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 468
    #getter for: Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->access$500(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 469
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->onChanged()V

    .line 471
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->hasAllShareTargets()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getAllShareTargets()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->setAllShareTargets(Z)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    .line 474
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->hasEnabledTargetsOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 475
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getEnabledTargetsOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->setEnabledTargetsOnly(Z)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    .line 477
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    const/4 v2, 0x0

    .line 491
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    if-eqz v2, :cond_0

    .line 497
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    .line 500
    :cond_0
    return-object p0

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-object v2, v0

    .line 494
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 497
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 456
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    if-eqz v0, :cond_0

    .line 457
    check-cast p1, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

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
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

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
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

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
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

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
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAllShareTargets(Z)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 636
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 637
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->allShareTargets_:Z

    .line 638
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->onChanged()V

    .line 639
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 566
    if-nez p1, :cond_0

    .line 567
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 569
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 570
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 571
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->onChanged()V

    .line 572
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 598
    if-nez p1, :cond_0

    .line 599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 601
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 602
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 603
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->onChanged()V

    .line 604
    return-object p0
.end method

.method public setEnabledTargetsOnly(Z)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 693
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->bitField0_:I

    .line 694
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->enabledTargetsOnly_:Z

    .line 695
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->onChanged()V

    .line 696
    return-object p0
.end method
