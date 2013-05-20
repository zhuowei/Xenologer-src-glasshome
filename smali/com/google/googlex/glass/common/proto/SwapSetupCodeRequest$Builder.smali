.class public final Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SwapSetupCodeRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:Ljava/lang/Object;

.field private redirectUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    .line 582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 374
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->maybeForceBuilderInitialization()V

    .line 375
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    .line 582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 380
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->maybeForceBuilderInitialization()V

    .line 381
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 1

    .prologue
    .line 356
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/google/googlex/glass/common/proto/SwapSetupCode;->internal_static_googlex_glass_common_proto_SwapSetupCodeRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 383
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v0

    .line 414
    .local v0, result:Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 417
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;
    .locals 5

    .prologue
    .line 421
    new-instance v1, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$1;)V

    .line 422
    .local v1, result:Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    .line 423
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 424
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 425
    or-int/lit8 v2, v2, 0x1

    .line 427
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->code_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->access$502(Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 429
    or-int/lit8 v2, v2, 0x2

    .line 431
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->redirectUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->access$602(Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    #setter for: Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->access$702(Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;I)I

    .line 433
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->onBuilt()V

    .line 434
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    .line 393
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    .line 394
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 395
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    .line 396
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCode()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    .line 560
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    .line 561
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->onChanged()V

    .line 562
    return-object p0
.end method

.method public clearRedirectUrl()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    .line 657
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 658
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->onChanged()V

    .line 659
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 2

    .prologue
    .line 400
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

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
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    .line 505
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 506
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    .line 511
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

.method public getCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 523
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    .line 524
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 525
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 528
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    .line 531
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/google/googlex/glass/common/proto/SwapSetupCode;->internal_static_googlex_glass_common_proto_SwapSetupCodeRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 602
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 603
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 608
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

.method public getRedirectUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 620
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 621
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 622
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 625
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 628
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

.method public hasCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 494
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRedirectUrl()Z
    .locals 2

    .prologue
    .line 591
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

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
    .line 367
    sget-object v0, Lcom/google/googlex/glass/common/proto/SwapSetupCode;->internal_static_googlex_glass_common_proto_SwapSetupCodeRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 447
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 459
    :goto_0
    return-object p0

    .line 448
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    .line 450
    #getter for: Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->code_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->access$500(Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    .line 451
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->onChanged()V

    .line 453
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->hasRedirectUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    .line 455
    #getter for: Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->redirectUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->access$600(Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 456
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->onChanged()V

    .line 458
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v2, 0x0

    .line 472
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    if-eqz v2, :cond_0

    .line 478
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    .line 481
    :cond_0
    return-object p0

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    move-object v2, v0

    .line 475
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 478
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 438
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    if-eqz v0, :cond_0

    .line 439
    check-cast p1, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object p0

    .line 442
    .end local p0
    :goto_0
    return-object p0

    .line 441
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
    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

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
    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

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
    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

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
    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 543
    if-nez p1, :cond_0

    .line 544
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 546
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    .line 547
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    .line 548
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->onChanged()V

    .line 549
    return-object p0
.end method

.method public setCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 573
    if-nez p1, :cond_0

    .line 574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 576
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    .line 577
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->code_:Ljava/lang/Object;

    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->onChanged()V

    .line 579
    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 640
    if-nez p1, :cond_0

    .line 641
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 643
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    .line 644
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 645
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->onChanged()V

    .line 646
    return-object p0
.end method

.method public setRedirectUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 670
    if-nez p1, :cond_0

    .line 671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 673
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->bitField0_:I

    .line 674
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 675
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeRequest$Builder;->onChanged()V

    .line 676
    return-object p0
.end method
