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
    .line 409
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 627
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    .line 410
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->maybeForceBuilderInitialization()V

    .line 411
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 627
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    .line 416
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->maybeForceBuilderInitialization()V

    .line 417
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 392
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/google/googlex/glass/common/proto/Setup;->internal_static_googlex_glass_common_proto_SetupUserAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 419
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
    .locals 2

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    .line 452
    .local v0, result:Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 455
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
    .locals 5

    .prologue
    .line 459
    new-instance v1, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$1;)V

    .line 460
    .local v1, result:Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 461
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 462
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 463
    or-int/lit8 v2, v2, 0x1

    .line 465
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$502(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 467
    or-int/lit8 v2, v2, 0x2

    .line 469
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->photoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$602(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 471
    or-int/lit8 v2, v2, 0x4

    .line 473
    :cond_2
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->useGoogleVoiceSms_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$702(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;Z)Z

    .line 474
    #setter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$802(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;I)I

    .line 475
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onBuilt()V

    .line 476
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 427
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 428
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 429
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 431
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    .line 433
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 434
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 605
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 606
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 607
    return-object p0
.end method

.method public clearPhotoUrl()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 702
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 703
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 704
    return-object p0
.end method

.method public clearUseGoogleVoiceSms()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    .line 772
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 773
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 2

    .prologue
    .line 438
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
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 392
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
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;
    .locals 1

    .prologue
    .line 447
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/google/googlex/glass/common/proto/Setup;->internal_static_googlex_glass_common_proto_SetupUserAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 550
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 551
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 556
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

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 568
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 569
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 570
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 573
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 576
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
    .locals 3

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 647
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 648
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 653
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

.method public getPhotoUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 665
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 666
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 667
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 670
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 673
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
    .line 745
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    return v0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 539
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
    .line 636
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
    .line 734
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
    .line 403
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
    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 489
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 504
    :goto_0
    return-object p0

    .line 490
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 492
    #getter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->displayName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$500(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 493
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 495
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->hasPhotoUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 497
    #getter for: Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->photoUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->access$600(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 498
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 500
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->hasUseGoogleVoiceSms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;->getUseGoogleVoiceSms()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->setUseGoogleVoiceSms(Z)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    .line 503
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
    .line 515
    const/4 v2, 0x0

    .line 517
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

    .line 522
    if-eqz v2, :cond_0

    .line 523
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

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

    check-cast v0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

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
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 480
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    if-eqz v0, :cond_0

    .line 481
    check-cast p1, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object p0

    .line 484
    .end local p0
    :goto_0
    return-object p0

    .line 483
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
    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 392
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
    .line 392
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
    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 392
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
    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 589
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 591
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 592
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 593
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 594
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 621
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 622
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->displayName_:Ljava/lang/Object;

    .line 623
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 624
    return-object p0
.end method

.method public setPhotoUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 685
    if-nez p1, :cond_0

    .line 686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 688
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 689
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 690
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 691
    return-object p0
.end method

.method public setPhotoUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 715
    if-nez p1, :cond_0

    .line 716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 718
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 719
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->photoUrl_:Ljava/lang/Object;

    .line 720
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 721
    return-object p0
.end method

.method public setUseGoogleVoiceSms(Z)Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 756
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->bitField0_:I

    .line 757
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->useGoogleVoiceSms_:Z

    .line 758
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SetupUserAccountResponse$Builder;->onChanged()V

    .line 759
    return-object p0
.end method
