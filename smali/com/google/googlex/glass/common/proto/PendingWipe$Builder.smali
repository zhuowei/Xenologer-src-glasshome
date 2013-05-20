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

.field private timestamp_:J

.field private wipeExternalStorage_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 551
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 381
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->maybeForceBuilderInitialization()V

    .line 382
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 551
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 387
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->maybeForceBuilderInitialization()V

    .line 388
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/PendingWipe$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->create()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1

    .prologue
    .line 394
    new-instance v0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_PendingWipe_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/PendingWipe;
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    .line 423
    .local v0, result:Lcom/google/googlex/glass/common/proto/PendingWipe;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PendingWipe;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 426
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->build()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->build()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/PendingWipe;
    .locals 5

    .prologue
    .line 430
    new-instance v1, Lcom/google/googlex/glass/common/proto/PendingWipe;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/PendingWipe;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/PendingWipe$1;)V

    .line 431
    .local v1, result:Lcom/google/googlex/glass/common/proto/PendingWipe;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 432
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 433
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 434
    or-int/lit8 v2, v2, 0x1

    .line 436
    :cond_0
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->timestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/PendingWipe;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$502(Lcom/google/googlex/glass/common/proto/PendingWipe;J)J

    .line 437
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 438
    or-int/lit8 v2, v2, 0x2

    .line 440
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PendingWipe;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$602(Lcom/google/googlex/glass/common/proto/PendingWipe;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 442
    or-int/lit8 v2, v2, 0x4

    .line 444
    :cond_2
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->wipeExternalStorage_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/PendingWipe;->wipeExternalStorage_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$702(Lcom/google/googlex/glass/common/proto/PendingWipe;Z)Z

    .line 445
    #setter for: Lcom/google/googlex/glass/common/proto/PendingWipe;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$802(Lcom/google/googlex/glass/common/proto/PendingWipe;I)I

    .line 446
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onBuilt()V

    .line 447
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 399
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->timestamp_:J

    .line 400
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 402
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->wipeExternalStorage_:Z

    .line 404
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 405
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clear()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clear()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clear()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clear()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 626
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 627
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 628
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 2

    .prologue
    .line 545
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 546
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->timestamp_:J

    .line 547
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 548
    return-object p0
.end method

.method public clearWipeExternalStorage()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->wipeExternalStorage_:Z

    .line 692
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 693
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 2

    .prologue
    .line 409
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
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 363
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
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->clone()Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PendingWipe;
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_PendingWipe_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 571
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 572
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 577
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
    .line 589
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 590
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 591
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 594
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 597
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

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 520
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getWipeExternalStorage()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->wipeExternalStorage_:Z

    return v0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 560
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

.method public hasTimestamp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 509
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
    .line 657
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
    .line 374
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
    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/PendingWipe;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 460
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 473
    :goto_0
    return-object p0

    .line 461
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    .line 464
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 466
    #getter for: Lcom/google/googlex/glass/common/proto/PendingWipe;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->access$600(Lcom/google/googlex/glass/common/proto/PendingWipe;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 467
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 469
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->hasWipeExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PendingWipe;->getWipeExternalStorage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->setWipeExternalStorage(Z)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    .line 472
    :cond_3
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
    .line 484
    const/4 v2, 0x0

    .line 486
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

    .line 491
    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PendingWipe;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    .line 495
    :cond_0
    return-object p0

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/PendingWipe;

    move-object v2, v0

    .line 489
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 492
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PendingWipe;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 451
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/PendingWipe;

    if-eqz v0, :cond_0

    .line 452
    check-cast p1, Lcom/google/googlex/glass/common/proto/PendingWipe;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PendingWipe;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object p0

    .line 455
    .end local p0
    :goto_0
    return-object p0

    .line 454
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
    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 363
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
    .line 363
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
    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 363
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
    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 609
    if-nez p1, :cond_0

    .line 610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 612
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 613
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 614
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 615
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 642
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 643
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->deviceId_:Ljava/lang/Object;

    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 645
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 531
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 532
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->timestamp_:J

    .line 533
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 534
    return-object p0
.end method

.method public setWipeExternalStorage(Z)Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 677
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->bitField0_:I

    .line 678
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->wipeExternalStorage_:Z

    .line 679
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PendingWipe$Builder;->onChanged()V

    .line 680
    return-object p0
.end method
