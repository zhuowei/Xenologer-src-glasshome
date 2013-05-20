.class public final Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AttachmentInsertResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AttachmentInsertResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/AttachmentInsertResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private attachmentId_:Ljava/lang/Object;

.field private bitField0_:I

.field private responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 530
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    .line 421
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->maybeForceBuilderInitialization()V

    .line 422
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 530
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    .line 427
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->maybeForceBuilderInitialization()V

    .line 428
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 1

    .prologue
    .line 434
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentInsertResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 430
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-result-object v0

    .line 461
    .local v0, result:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 464
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;
    .locals 5

    .prologue
    .line 468
    new-instance v1, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$1;)V

    .line 469
    .local v1, result:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

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
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->access$502(Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    .line 475
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 476
    or-int/lit8 v2, v2, 0x2

    .line 478
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->attachmentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->access$602(Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->access$702(Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;I)I

    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->onBuilt()V

    .line 481
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 1

    .prologue
    .line 438
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 439
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    .line 440
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    .line 441
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    .line 442
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    .line 443
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttachmentId()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    .line 640
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getAttachmentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    .line 641
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->onChanged()V

    .line 642
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    .line 560
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    .line 561
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->onChanged()V

    .line 562
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 2

    .prologue
    .line 447
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

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
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    .line 585
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 586
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    .line 591
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

.method public getAttachmentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 603
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    .line 604
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 605
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 608
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    .line 611
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentInsertResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    return-object v0
.end method

.method public hasAttachmentId()Z
    .locals 2

    .prologue
    .line 574
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

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

    .line 535
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

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
    .line 414
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentInsertResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 494
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 504
    :goto_0
    return-object p0

    .line 495
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->setResponseCode(Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    .line 498
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->hasAttachmentId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    .line 500
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->attachmentId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->access$600(Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    .line 501
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->onChanged()V

    .line 503
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    const/4 v2, 0x0

    .line 517
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    if-eqz v2, :cond_0

    .line 523
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    .line 526
    :cond_0
    return-object p0

    .line 518
    :catch_0
    move-exception v1

    .line 519
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    move-object v2, v0

    .line 520
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 523
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 485
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    if-eqz v0, :cond_0

    .line 486
    check-cast p1, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object p0

    .line 489
    .end local p0
    :goto_0
    return-object p0

    .line 488
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
    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

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
    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

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
    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

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
    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAttachmentId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 623
    if-nez p1, :cond_0

    .line 624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 626
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    .line 627
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    .line 628
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->onChanged()V

    .line 629
    return-object p0
.end method

.method public setAttachmentIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 653
    if-nez p1, :cond_0

    .line 654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 656
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    .line 657
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->attachmentId_:Ljava/lang/Object;

    .line 658
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->onChanged()V

    .line 659
    return-object p0
.end method

.method public setResponseCode(Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 547
    if-nez p1, :cond_0

    .line 548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 550
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->bitField0_:I

    .line 551
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$ResponseCode;

    .line 552
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertResponse$Builder;->onChanged()V

    .line 553
    return-object p0
.end method
