.class public final Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SetupUserAccountResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/SetupUserAccountResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/SetupUserAccountResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private photoUrl_:Ljava/lang/Object;

.field private useGoogleVoiceSms_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    .line 412
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->maybeForceBuilderInitialization()V

    .line 413
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    .line 418
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->maybeForceBuilderInitialization()V

    .line 419
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 425
    new-instance v0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/google/googlex/glass/common/proto/Setup;->internal_static_googlex_glass_common_proto_SetupUserAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 421
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
    .locals 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    .line 454
    .local v0, result:Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 457
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
    .locals 5

    .prologue
    .line 461
    new-instance v1, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$1;)V

    .line 462
    .local v1, result:Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 463
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 464
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 465
    or-int/lit8 v2, v2, 0x1

    .line 467
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$502(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 469
    or-int/lit8 v2, v2, 0x2

    .line 471
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->photoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$602(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 473
    or-int/lit8 v2, v2, 0x4

    .line 475
    :cond_2
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->useGoogleVoiceSms_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$702(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;Z)Z

    .line 476
    #setter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$802(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;I)I

    .line 477
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onBuilt()V

    .line 478
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 429
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 431
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 432
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 433
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    .line 435
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 436
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 610
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 611
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 612
    return-object p0
.end method

.method public clearPhotoUrl()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 710
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 711
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 712
    return-object p0
.end method

.method public clearUseGoogleVoiceSms()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    .line 780
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 781
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 2

    .prologue
    .line 440
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

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
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
    .locals 1

    .prologue
    .line 449
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/google/googlex/glass/common/proto/Setup;->internal_static_googlex_glass_common_proto_SetupUserAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 551
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 552
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 553
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 555
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 561
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

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 573
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 574
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 575
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 578
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 581
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

.method public getPhotoUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 651
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 652
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 653
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 655
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 657
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 661
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

.method public getPhotoUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 673
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 674
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 675
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 678
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 681
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

.method public getUseGoogleVoiceSms()Z
    .locals 1

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    return v0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 541
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhotoUrl()Z
    .locals 2

    .prologue
    .line 641
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

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

.method public hasUseGoogleVoiceSms()Z
    .locals 2

    .prologue
    .line 742
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

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
    .line 405
    sget-object v0, Lcom/google/googlex/glass/common/proto/Setup;->internal_static_googlex_glass_common_proto_SetupUserAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 491
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 506
    :goto_0
    return-object p0

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 494
    #getter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->displayName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$500(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 497
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->hasPhotoUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 499
    #getter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->photoUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$600(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 500
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 502
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->hasUseGoogleVoiceSms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getUseGoogleVoiceSms()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->setUseGoogleVoiceSms(Z)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    .line 505
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    const/4 v2, 0x0

    .line 519
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    if-eqz v2, :cond_0

    .line 525
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    .line 528
    :cond_0
    return-object p0

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-object v2, v0

    .line 522
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 525
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 482
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    if-eqz v0, :cond_0

    .line 483
    check-cast p1, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object p0

    .line 486
    .end local p0
    :goto_0
    return-object p0

    .line 485
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
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

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
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

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
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

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
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
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
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 597
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 598
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 599
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
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
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 627
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 628
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 629
    return-object p0
.end method

.method public setPhotoUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 696
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 697
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 698
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 699
    return-object p0
.end method

.method public setPhotoUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 723
    if-nez p1, :cond_0

    .line 724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 726
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 727
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 728
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 729
    return-object p0
.end method

.method public setUseGoogleVoiceSms(Z)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 764
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 765
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    .line 766
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 767
    return-object p0
.end method
