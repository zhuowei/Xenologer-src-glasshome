.class public final Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "C2DMRegistration.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/C2DMRegistrationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/C2DMRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/C2DMRegistrationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private registrationTime_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    .line 673
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    .line 408
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->maybeForceBuilderInitialization()V

    .line 409
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    .line 673
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    .line 414
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->maybeForceBuilderInitialization()V

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/C2DMRegistration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->create()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1

    .prologue
    .line 421
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistration_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 2

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    .line 450
    .local v0, result:Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 453
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->build()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->build()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 5

    .prologue
    .line 457
    new-instance v1, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/C2DMRegistration$1;)V

    .line 458
    .local v1, result:Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 459
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 460
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 461
    or-int/lit8 v2, v2, 0x1

    .line 463
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistration;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->access$502(Lcom/google/googlex/glass/common/proto/C2DMRegistration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 465
    or-int/lit8 v2, v2, 0x2

    .line 467
    :cond_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->registrationTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistration;->registrationTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->access$602(Lcom/google/googlex/glass/common/proto/C2DMRegistration;J)J

    .line 468
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 469
    or-int/lit8 v2, v2, 0x4

    .line 471
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistration;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->access$702(Lcom/google/googlex/glass/common/proto/C2DMRegistration;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistration;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->access$802(Lcom/google/googlex/glass/common/proto/C2DMRegistration;I)I

    .line 473
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->onBuilt()V

    .line 474
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 2

    .prologue
    .line 425
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 426
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    .line 427
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 428
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->registrationTime_:J

    .line 429
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    .line 431
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 432
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 748
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    .line 749
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->onChanged()V

    .line 750
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 603
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->onChanged()V

    .line 605
    return-object p0
.end method

.method public clearRegistrationTime()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 2

    .prologue
    .line 667
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 668
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->registrationTime_:J

    .line 669
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->onChanged()V

    .line 670
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 2

    .prologue
    .line 436
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->create()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

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
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    .locals 1

    .prologue
    .line 445
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistration_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    .line 693
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 694
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    .line 699
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
    .line 711
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    .line 712
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 713
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 716
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    .line 719
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

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    .line 548
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 549
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    .line 554
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

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 566
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    .line 567
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 568
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 571
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    .line 574
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

.method public getRegistrationTime()J
    .locals 2

    .prologue
    .line 644
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->registrationTime_:J

    return-wide v0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 682
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 537
    iget v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegistrationTime()Z
    .locals 2

    .prologue
    .line 634
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 401
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistration_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    const-class v2, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 487
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 502
    :goto_0
    return-object p0

    .line 488
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 490
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistration;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->access$500(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    .line 491
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->onChanged()V

    .line 493
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->hasRegistrationTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getRegistrationTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->setRegistrationTime(J)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    .line 496
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 498
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistration;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->access$700(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    .line 499
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->onChanged()V

    .line 501
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    const/4 v2, 0x0

    .line 515
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/C2DMRegistration;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/C2DMRegistration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    .line 524
    :cond_0
    return-object p0

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    move-object v2, v0

    .line 518
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 521
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 478
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    if-eqz v0, :cond_0

    .line 479
    check-cast p1, Lcom/google/googlex/glass/common/proto/C2DMRegistration;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistration;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object p0

    .line 482
    .end local p0
    :goto_0
    return-object p0

    .line 481
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
    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

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
    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

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
    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

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
    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 731
    if-nez p1, :cond_0

    .line 732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 734
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 735
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    .line 736
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->onChanged()V

    .line 737
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 761
    if-nez p1, :cond_0

    .line 762
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 764
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 765
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->deviceId_:Ljava/lang/Object;

    .line 766
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->onChanged()V

    .line 767
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 586
    if-nez p1, :cond_0

    .line 587
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 589
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 590
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    .line 591
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->onChanged()V

    .line 592
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 619
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 620
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->id_:Ljava/lang/Object;

    .line 621
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->onChanged()V

    .line 622
    return-object p0
.end method

.method public setRegistrationTime(J)Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 654
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->bitField0_:I

    .line 655
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->registrationTime_:J

    .line 656
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistration$Builder;->onChanged()V

    .line 657
    return-object p0
.end method
