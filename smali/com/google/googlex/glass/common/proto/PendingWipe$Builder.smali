.class public final Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PendingWipe.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/PendingWipeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/PendingWipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/PendingWipeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private retryCount_:I

.field private timestamp_:J

.field private wipeExternalStorage_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 417
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->maybeForceBuilderInitialization()V

    .line 418
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 423
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->maybeForceBuilderInitialization()V

    .line 424
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/PendingWipe$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->create()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1

    .prologue
    .line 430
    new-instance v0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_PendingWipe_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 426
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/PendingWipe;
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    .line 461
    .local v0, result:Lcom/google/googlex/glass/common/proto/PendingWipe;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PendingWipe;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 464
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->build()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->build()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/PendingWipe;
    .locals 5

    .prologue
    .line 468
    new-instance v1, Lcom/google/googlex/glass/common/proto/PendingWipe;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/PendingWipe;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/PendingWipe$1;)V

    .line 469
    .local v1, result:Lcom/google/googlex/glass/common/proto/PendingWipe;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 470
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 471
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 472
    or-int/lit8 v2, v2, 0x1

    .line 474
    :cond_0
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->timestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/PendingWipe;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$502(Lcom/google/googlex/glass/common/proto/PendingWipe;J)J

    .line 475
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 476
    or-int/lit8 v2, v2, 0x2

    .line 478
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PendingWipe;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$602(Lcom/google/googlex/glass/common/proto/PendingWipe;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 480
    or-int/lit8 v2, v2, 0x4

    .line 482
    :cond_2
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->wipeExternalStorage_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/PendingWipe;->wipeExternalStorage_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$702(Lcom/google/googlex/glass/common/proto/PendingWipe;Z)Z

    .line 483
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 484
    or-int/lit8 v2, v2, 0x8

    .line 486
    :cond_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->retryCount_:I

    #setter for: Lcom/google/googlex/glass/common/proto/PendingWipe;->retryCount_:I
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$802(Lcom/google/googlex/glass/common/proto/PendingWipe;I)I

    .line 487
    #setter for: Lcom/google/googlex/glass/common/proto/PendingWipe;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$902(Lcom/google/googlex/glass/common/proto/PendingWipe;I)I

    .line 488
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onBuilt()V

    .line 489
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 435
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->timestamp_:J

    .line 436
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 438
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 439
    iput-boolean v2, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->wipeExternalStorage_:Z

    .line 440
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 441
    iput v2, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->retryCount_:I

    .line 442
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 443
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clear()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clear()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clear()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clear()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 671
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 672
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 673
    return-object p0
.end method

.method public clearRetryCount()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 784
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->retryCount_:I

    .line 785
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 786
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 2

    .prologue
    .line 590
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 591
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->timestamp_:J

    .line 592
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 593
    return-object p0
.end method

.method public clearWipeExternalStorage()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->wipeExternalStorage_:Z

    .line 737
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 738
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 2

    .prologue
    .line 447
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->create()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PendingWipe;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

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
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PendingWipe;
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_PendingWipe_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 616
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 617
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 622
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
    .line 634
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 635
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 636
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 639
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 642
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

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->retryCount_:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 565
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getWipeExternalStorage()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->wipeExternalStorage_:Z

    return v0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

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

.method public hasRetryCount()Z
    .locals 2

    .prologue
    .line 750
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 554
    iget v1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWipeExternalStorage()Z
    .locals 2

    .prologue
    .line 702
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

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
    .line 410
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_PendingWipe_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/PendingWipe;

    const-class v2, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/PendingWipe;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 502
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 518
    :goto_0
    return-object p0

    .line 503
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    .line 506
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 508
    #getter for: Lcom/google/googlex/glass/common/proto/PendingWipe;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$600(Lcom/google/googlex/glass/common/proto/PendingWipe;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 509
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 511
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->hasWipeExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getWipeExternalStorage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->setWipeExternalStorage(Z)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    .line 514
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->hasRetryCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getRetryCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->setRetryCount(I)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    .line 517
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    const/4 v2, 0x0

    .line 531
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/PendingWipe;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/PendingWipe;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    if-eqz v2, :cond_0

    .line 537
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PendingWipe;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    .line 540
    :cond_0
    return-object p0

    .line 532
    :catch_0
    move-exception v1

    .line 533
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-object v2, v0

    .line 534
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 537
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PendingWipe;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 493
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/PendingWipe;

    if-eqz v0, :cond_0

    .line 494
    check-cast p1, Lcom/google/googlex/glass/common/proto/PendingWipe;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PendingWipe;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object p0

    .line 497
    .end local p0
    :goto_0
    return-object p0

    .line 496
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
    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

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
    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

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
    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

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
    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 657
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 658
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 660
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 685
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 687
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 688
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 689
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 690
    return-object p0
.end method

.method public setRetryCount(I)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 770
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 771
    iput p1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->retryCount_:I

    .line 772
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 773
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 576
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 577
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->timestamp_:J

    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 579
    return-object p0
.end method

.method public setWipeExternalStorage(Z)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 722
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 723
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->wipeExternalStorage_:Z

    .line 724
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 725
    return-object p0
.end method
