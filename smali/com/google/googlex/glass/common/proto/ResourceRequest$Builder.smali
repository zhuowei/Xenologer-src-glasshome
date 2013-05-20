.class public final Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResourceRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ResourceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResourceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ResourceRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fingerprint_:J

.field private name_:Ljava/lang/Object;

.field private type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 616
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 651
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 498
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->maybeForceBuilderInitialization()V

    .line 499
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 616
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 651
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 504
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->maybeForceBuilderInitialization()V

    .line 505
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ResourceRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 511
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/google/googlex/glass/common/proto/Resource;->internal_static_googlex_glass_common_proto_ResourceRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 507
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    .line 540
    .local v0, result:Lcom/google/googlex/glass/common/proto/ResourceRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 543
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 5

    .prologue
    .line 547
    new-instance v1, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ResourceRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ResourceRequest$1;)V

    .line 548
    .local v1, result:Lcom/google/googlex/glass/common/proto/ResourceRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 549
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 550
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 551
    or-int/lit8 v2, v2, 0x1

    .line 553
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    #setter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$502(Lcom/google/googlex/glass/common/proto/ResourceRequest;Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 554
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 555
    or-int/lit8 v2, v2, 0x2

    .line 557
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$602(Lcom/google/googlex/glass/common/proto/ResourceRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 559
    or-int/lit8 v2, v2, 0x4

    .line 561
    :cond_2
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->fingerprint_:J

    #setter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->fingerprint_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$702(Lcom/google/googlex/glass/common/proto/ResourceRequest;J)J

    .line 562
    #setter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$802(Lcom/google/googlex/glass/common/proto/ResourceRequest;I)I

    .line 563
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onBuilt()V

    .line 564
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 2

    .prologue
    .line 515
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 516
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 517
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 519
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 520
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->fingerprint_:J

    .line 521
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 522
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFingerprint()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 2

    .prologue
    .line 798
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 799
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->fingerprint_:J

    .line 800
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 801
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 726
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 727
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 728
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 646
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 647
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 648
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 2

    .prologue
    .line 526
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

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
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1

    .prologue
    .line 535
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 531
    sget-object v0, Lcom/google/googlex/glass/common/proto/Resource;->internal_static_googlex_glass_common_proto_ResourceRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFingerprint()J
    .locals 2

    .prologue
    .line 771
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->fingerprint_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 671
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 672
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 677
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 689
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 690
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 691
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 694
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 697
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

.method public getType()Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    return-object v0
.end method

.method public hasFingerprint()Z
    .locals 2

    .prologue
    .line 759
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 660
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 621
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

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
    .line 491
    sget-object v0, Lcom/google/googlex/glass/common/proto/Resource;->internal_static_googlex_glass_common_proto_ResourceRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 577
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 590
    :goto_0
    return-object p0

    .line 578
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getType()Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->setType(Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    .line 581
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 583
    #getter for: Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->access$600(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 584
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 586
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->hasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getFingerprint()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    .line 589
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    const/4 v2, 0x0

    .line 603
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ResourceRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    if-eqz v2, :cond_0

    .line 609
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    .line 612
    :cond_0
    return-object p0

    .line 604
    :catch_0
    move-exception v1

    .line 605
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-object v2, v0

    .line 606
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 609
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 568
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    if-eqz v0, :cond_0

    .line 569
    check-cast p1, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object p0

    .line 572
    .end local p0
    :goto_0
    return-object p0

    .line 571
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
    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

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
    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

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
    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

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
    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 783
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 784
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->fingerprint_:J

    .line 785
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 786
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 709
    if-nez p1, :cond_0

    .line 710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 712
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 713
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 714
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 715
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 739
    if-nez p1, :cond_0

    .line 740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 742
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 743
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->name_:Ljava/lang/Object;

    .line 744
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 745
    return-object p0
.end method

.method public setType(Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 633
    if-nez p1, :cond_0

    .line 634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 636
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->bitField0_:I

    .line 637
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 638
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->onChanged()V

    .line 639
    return-object p0
.end method
