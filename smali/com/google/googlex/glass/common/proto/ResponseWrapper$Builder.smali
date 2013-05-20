.class public final Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ResponseWrapper.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ResponseWrapperOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResponseWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ResponseWrapperOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private errorCode_:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 604
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->UNKNOWN_REQUEST:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->errorCode_:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 679
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 497
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->maybeForceBuilderInitialization()V

    .line 498
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 604
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->UNKNOWN_REQUEST:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->errorCode_:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 679
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 503
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->maybeForceBuilderInitialization()V

    .line 504
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ResponseWrapper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->create()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_ResponseWrapper_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ResponseWrapper;
    .locals 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v0

    .line 537
    .local v0, result:Lcom/google/googlex/glass/common/proto/ResponseWrapper;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 540
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ResponseWrapper;
    .locals 5

    .prologue
    .line 544
    new-instance v1, Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ResponseWrapper$1;)V

    .line 545
    .local v1, result:Lcom/google/googlex/glass/common/proto/ResponseWrapper;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    .line 546
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 547
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 548
    or-int/lit8 v2, v2, 0x1

    .line 550
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->errorCode_:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    #setter for: Lcom/google/googlex/glass/common/proto/ResponseWrapper;->errorCode_:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->access$502(Lcom/google/googlex/glass/common/proto/ResponseWrapper;Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 551
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 552
    or-int/lit8 v2, v2, 0x2

    .line 554
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/ResponseWrapper;->data_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->access$602(Lcom/google/googlex/glass/common/proto/ResponseWrapper;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 555
    #setter for: Lcom/google/googlex/glass/common/proto/ResponseWrapper;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->access$702(Lcom/google/googlex/glass/common/proto/ResponseWrapper;I)I

    .line 556
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->onBuilt()V

    .line 557
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 515
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->UNKNOWN_REQUEST:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->errorCode_:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 516
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    .line 517
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 518
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    .line 519
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->clear()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearData()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    .line 737
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 738
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->onChanged()V

    .line 739
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    .line 674
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->UNKNOWN_REQUEST:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->errorCode_:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 675
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->onChanged()V

    .line 676
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 2

    .prologue
    .line 523
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->create()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResponseWrapper;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

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
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResponseWrapper;
    .locals 1

    .prologue
    .line 532
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 528
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_ResponseWrapper_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->errorCode_:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    .line 691
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

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

.method public hasErrorCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 619
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

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
    .line 490
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_ResponseWrapper_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    const-class v2, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ResponseWrapper;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 570
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 578
    :goto_0
    return-object p0

    .line 571
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getErrorCode()Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->setErrorCode(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    .line 574
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    .line 577
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    const/4 v2, 0x0

    .line 591
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ResponseWrapper;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResponseWrapper;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    .line 600
    :cond_0
    return-object p0

    .line 592
    :catch_0
    move-exception v1

    .line 593
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-object v2, v0

    .line 594
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 597
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResponseWrapper;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 561
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    if-eqz v0, :cond_0

    .line 562
    check-cast p1, Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResponseWrapper;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object p0

    .line 565
    .end local p0
    :goto_0
    return-object p0

    .line 564
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
    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

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
    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

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
    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

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
    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 717
    if-nez p1, :cond_0

    .line 718
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 720
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    .line 721
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 722
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->onChanged()V

    .line 723
    return-object p0
.end method

.method public setErrorCode(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 651
    if-nez p1, :cond_0

    .line 652
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 654
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->bitField0_:I

    .line 655
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->errorCode_:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 656
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->onChanged()V

    .line 657
    return-object p0
.end method
