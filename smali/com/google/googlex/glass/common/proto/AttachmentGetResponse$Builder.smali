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
    .line 456
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 575
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 610
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 707
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 457
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->maybeForceBuilderInitialization()V

    .line 458
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 575
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 610
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 707
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 463
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->maybeForceBuilderInitialization()V

    .line 464
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 439
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 470
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 466
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 2

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    .line 499
    .local v0, result:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 502
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 5

    .prologue
    .line 506
    new-instance v1, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$1;)V

    .line 507
    .local v1, result:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 508
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 509
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 510
    or-int/lit8 v2, v2, 0x1

    .line 512
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$502(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 513
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 514
    or-int/lit8 v2, v2, 0x2

    .line 516
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$602(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 518
    or-int/lit8 v2, v2, 0x4

    .line 520
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->content_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$702(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 521
    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$802(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;I)I

    .line 522
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onBuilt()V

    .line 523
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 474
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 475
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 476
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 478
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 479
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 480
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 481
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContent()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 753
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 754
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 755
    return-object p0
.end method

.method public clearMimeType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 685
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 687
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 605
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 606
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 607
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 2

    .prologue
    .line 485
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
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 439
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
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 630
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 631
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 636
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

.method public getMimeTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 648
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 649
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 650
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 653
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 656
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
    .line 586
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    return-object v0
.end method

.method public hasContent()Z
    .locals 2

    .prologue
    .line 716
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
    .line 619
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

    .line 580
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
    .line 450
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
    .line 553
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 536
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 549
    :goto_0
    return-object p0

    .line 537
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->setResponseCode(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    .line 540
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->hasMimeType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 542
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->access$600(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 543
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 545
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 546
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    .line 548
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
    .line 560
    const/4 v2, 0x0

    .line 562
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

    .line 567
    if-eqz v2, :cond_0

    .line 568
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    .line 571
    :cond_0
    return-object p0

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-object v2, v0

    .line 565
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 568
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 527
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    if-eqz v0, :cond_0

    .line 528
    check-cast p1, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object p0

    .line 531
    .end local p0
    :goto_0
    return-object p0

    .line 530
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
    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 439
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
    .line 439
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
    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 439
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
    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 736
    if-nez p1, :cond_0

    .line 737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 739
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 740
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 741
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 742
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 671
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 672
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 673
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 674
    return-object p0
.end method

.method public setMimeTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 698
    if-nez p1, :cond_0

    .line 699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 701
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 702
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mimeType_:Ljava/lang/Object;

    .line 703
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 704
    return-object p0
.end method

.method public setResponseCode(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 592
    if-nez p1, :cond_0

    .line 593
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 595
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->bitField0_:I

    .line 596
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 597
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->onChanged()V

    .line 598
    return-object p0
.end method
