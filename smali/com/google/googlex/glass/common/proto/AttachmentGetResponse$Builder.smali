.class public final Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AttachmentGetResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AttachmentGetResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/AttachmentGetResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private content_:Lcom/google/protobuf/ByteString;

.field private mimeType_:Ljava/lang/Object;

.field private responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 576
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 611
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 711
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 458
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->maybeForceBuilderInitialization()V

    .line 459
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 576
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 611
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 711
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 464
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->maybeForceBuilderInitialization()V

    .line 465
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 440
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 471
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 446
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 467
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 2

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    .line 500
    .local v0, result:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 503
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 5

    .prologue
    .line 507
    new-instance v1, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$1;)V

    .line 508
    .local v1, result:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 509
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 510
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 511
    or-int/lit8 v2, v2, 0x1

    .line 513
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$502(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 514
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 515
    or-int/lit8 v2, v2, 0x2

    .line 517
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$602(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 519
    or-int/lit8 v2, v2, 0x4

    .line 521
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->content_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$702(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 522
    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$802(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;I)I

    .line 523
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onBuilt()V

    .line 524
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 475
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 476
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 477
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 478
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 479
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 480
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 481
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 482
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContent()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 757
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 758
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 759
    return-object p0
.end method

.method public clearMimeType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 689
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 690
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 691
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 606
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 607
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 608
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 2

    .prologue
    .line 486
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

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
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 630
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 631
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 632
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 634
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 636
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 640
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getMimeTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 652
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 653
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 654
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 657
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 660
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

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    return-object v0
.end method

.method public hasContent()Z
    .locals 2

    .prologue
    .line 720
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

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

.method public hasMimeType()Z
    .locals 2

    .prologue
    .line 620
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

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

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 581
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

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
    .line 451
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 537
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 550
    :goto_0
    return-object p0

    .line 538
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->setResponseCode(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    .line 541
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->hasMimeType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 543
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$600(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 544
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 546
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    .line 549
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    const/4 v2, 0x0

    .line 563
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    if-eqz v2, :cond_0

    .line 569
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    .line 572
    :cond_0
    return-object p0

    .line 564
    :catch_0
    move-exception v1

    .line 565
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-object v2, v0

    .line 566
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 569
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 528
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    if-eqz v0, :cond_0

    .line 529
    check-cast p1, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object p0

    .line 532
    .end local p0
    :goto_0
    return-object p0

    .line 531
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
    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

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
    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

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
    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

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
    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 743
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 744
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 745
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 746
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 672
    if-nez p1, :cond_0

    .line 673
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 675
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 676
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 677
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 678
    return-object p0
.end method

.method public setMimeTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 702
    if-nez p1, :cond_0

    .line 703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 705
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 706
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 707
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 708
    return-object p0
.end method

.method public setResponseCode(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 593
    if-nez p1, :cond_0

    .line 594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 596
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 597
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 598
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 599
    return-object p0
.end method
