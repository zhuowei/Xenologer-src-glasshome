.class public final Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResourceResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ResourceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ResourceResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private fingerprint_:J

.field private status_:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 559
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    .line 594
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 443
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->maybeForceBuilderInitialization()V

    .line 444
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 559
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    .line 594
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 449
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->maybeForceBuilderInitialization()V

    .line 450
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ResourceResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 1

    .prologue
    .line 456
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/google/googlex/glass/common/proto/Resource;->internal_static_googlex_glass_common_proto_ResourceResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ResourceResponse;
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-result-object v0

    .line 485
    .local v0, result:Lcom/google/googlex/glass/common/proto/ResourceResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 488
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ResourceResponse;
    .locals 5

    .prologue
    .line 492
    new-instance v1, Lcom/google/googlex/glass/common/proto/ResourceResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ResourceResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ResourceResponse$1;)V

    .line 493
    .local v1, result:Lcom/google/googlex/glass/common/proto/ResourceResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    .line 494
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 495
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 496
    or-int/lit8 v2, v2, 0x1

    .line 498
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    #setter for: Lcom/google/googlex/glass/common/proto/ResourceResponse;->status_:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->access$502(Lcom/google/googlex/glass/common/proto/ResourceResponse;Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    .line 499
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 500
    or-int/lit8 v2, v2, 0x2

    .line 502
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/ResourceResponse;->data_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->access$602(Lcom/google/googlex/glass/common/proto/ResourceResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 503
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 504
    or-int/lit8 v2, v2, 0x4

    .line 506
    :cond_2
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->fingerprint_:J

    #setter for: Lcom/google/googlex/glass/common/proto/ResourceResponse;->fingerprint_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->access$702(Lcom/google/googlex/glass/common/proto/ResourceResponse;J)J

    .line 507
    #setter for: Lcom/google/googlex/glass/common/proto/ResourceResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->access$802(Lcom/google/googlex/glass/common/proto/ResourceResponse;I)I

    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->onBuilt()V

    .line 509
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 2

    .prologue
    .line 460
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 461
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    .line 462
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    .line 463
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 464
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    .line 465
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->fingerprint_:J

    .line 466
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    .line 467
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearData()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    .line 644
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 645
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->onChanged()V

    .line 646
    return-object p0
.end method

.method public clearFingerprint()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 2

    .prologue
    .line 695
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    .line 696
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->fingerprint_:J

    .line 697
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->onChanged()V

    .line 698
    return-object p0
.end method

.method public clearStatus()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    .line 589
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    .line 590
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->onChanged()V

    .line 591
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 2

    .prologue
    .line 471
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceResponse;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

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
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceResponse;
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/google/googlex/glass/common/proto/Resource;->internal_static_googlex_glass_common_proto_ResourceResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFingerprint()J
    .locals 2

    .prologue
    .line 670
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->fingerprint_:J

    return-wide v0
.end method

.method public getStatus()Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    .line 604
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

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

.method public hasFingerprint()Z
    .locals 2

    .prologue
    .line 659
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 564
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

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
    .line 436
    sget-object v0, Lcom/google/googlex/glass/common/proto/Resource;->internal_static_googlex_glass_common_proto_ResourceResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ResourceResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceResponse;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 522
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 533
    :goto_0
    return-object p0

    .line 523
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->setStatus(Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    .line 526
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    .line 529
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->hasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getFingerprint()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    .line 532
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    const/4 v2, 0x0

    .line 546
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ResourceResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ResourceResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    if-eqz v2, :cond_0

    .line 552
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceResponse;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    .line 555
    :cond_0
    return-object p0

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-object v2, v0

    .line 549
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 552
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceResponse;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 513
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ResourceResponse;

    if-eqz v0, :cond_0

    .line 514
    check-cast p1, Lcom/google/googlex/glass/common/proto/ResourceResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceResponse;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object p0

    .line 517
    .end local p0
    :goto_0
    return-object p0

    .line 516
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
    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

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
    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

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
    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

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
    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 629
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    .line 630
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 631
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->onChanged()V

    .line 632
    return-object p0
.end method

.method public setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 681
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    .line 682
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->fingerprint_:J

    .line 683
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->onChanged()V

    .line 684
    return-object p0
.end method

.method public setStatus(Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 576
    if-nez p1, :cond_0

    .line 577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 579
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->bitField0_:I

    .line 580
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    .line 581
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Builder;->onChanged()V

    .line 582
    return-object p0
.end method
