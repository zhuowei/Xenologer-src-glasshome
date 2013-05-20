.class public final Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MenuValue.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/MenuValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/MenuValue$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private iconUrl_:Ljava/lang/Object;

.field private state_:Lcom/google/googlex/glass/common/proto/MenuItem$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 536
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$State;->DEFAULT:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->state_:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    .line 587
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    .line 416
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->maybeForceBuilderInitialization()V

    .line 417
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 536
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$State;->DEFAULT:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->state_:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    .line 587
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    .line 422
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->maybeForceBuilderInitialization()V

    .line 423
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/MenuValue$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->create()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_MenuValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 425
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuValue;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/MenuValue;
    .locals 2

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    .line 458
    .local v0, result:Lcom/google/googlex/glass/common/proto/MenuValue;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 461
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/MenuValue;
    .locals 5

    .prologue
    .line 465
    new-instance v1, Lcom/google/googlex/glass/common/proto/MenuValue;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/MenuValue;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/MenuValue$1;)V

    .line 466
    .local v1, result:Lcom/google/googlex/glass/common/proto/MenuValue;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 467
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 468
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 469
    or-int/lit8 v2, v2, 0x1

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->state_:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuValue;->state_:Lcom/google/googlex/glass/common/proto/MenuItem$State;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuValue;->access$502(Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuItem$State;

    .line 472
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 473
    or-int/lit8 v2, v2, 0x2

    .line 475
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuValue;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuValue;->access$602(Lcom/google/googlex/glass/common/proto/MenuValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 477
    or-int/lit8 v2, v2, 0x4

    .line 479
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuValue;->iconUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuValue;->access$702(Lcom/google/googlex/glass/common/proto/MenuValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    #setter for: Lcom/google/googlex/glass/common/proto/MenuValue;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/MenuValue;->access$802(Lcom/google/googlex/glass/common/proto/MenuValue;I)I

    .line 481
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->onBuilt()V

    .line 482
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1

    .prologue
    .line 433
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 434
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$State;->DEFAULT:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->state_:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    .line 435
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    .line 437
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    .line 439
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 440
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 662
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuValue;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    .line 663
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->onChanged()V

    .line 664
    return-object p0
.end method

.method public clearIconUrl()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 759
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuValue;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuValue;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    .line 760
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->onChanged()V

    .line 761
    return-object p0
.end method

.method public clearState()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 582
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$State;->DEFAULT:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->state_:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    .line 583
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->onChanged()V

    .line 584
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 2

    .prologue
    .line 444
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->create()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuValue;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

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
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MenuValue;
    .locals 1

    .prologue
    .line 453
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuValue;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_MenuValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    .line 607
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 608
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    .line 613
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
    .line 625
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    .line 626
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 627
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 630
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    .line 633
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

.method public getIconUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    .line 704
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 705
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    .line 710
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

.method public getIconUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 722
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    .line 723
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 724
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 727
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    .line 730
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

.method public getState()Lcom/google/googlex/glass/common/proto/MenuItem$State;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->state_:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    return-object v0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    .line 596
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

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

.method public hasIconUrl()Z
    .locals 2

    .prologue
    .line 693
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

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

.method public hasState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 545
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

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
    .line 409
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_MenuValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/MenuValue;

    const-class v2, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/MenuValue;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 495
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuValue;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 510
    :goto_0
    return-object p0

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->hasState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getState()Lcom/google/googlex/glass/common/proto/MenuItem$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->setState(Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    .line 499
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 501
    #getter for: Lcom/google/googlex/glass/common/proto/MenuValue;->displayName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->access$600(Lcom/google/googlex/glass/common/proto/MenuValue;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    .line 502
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->onChanged()V

    .line 504
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->hasIconUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 506
    #getter for: Lcom/google/googlex/glass/common/proto/MenuValue;->iconUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->access$700(Lcom/google/googlex/glass/common/proto/MenuValue;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    .line 507
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->onChanged()V

    .line 509
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    const/4 v2, 0x0

    .line 523
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/MenuValue;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/MenuValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValue;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    if-eqz v2, :cond_0

    .line 529
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuValue;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    .line 532
    :cond_0
    return-object p0

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValue;

    move-object v2, v0

    .line 526
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 529
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuValue;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 486
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/MenuValue;

    if-eqz v0, :cond_0

    .line 487
    check-cast p1, Lcom/google/googlex/glass/common/proto/MenuValue;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuValue;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object p0

    .line 490
    .end local p0
    :goto_0
    return-object p0

    .line 489
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
    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

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
    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

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
    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

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
    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 648
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 649
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    .line 650
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->onChanged()V

    .line 651
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 675
    if-nez p1, :cond_0

    .line 676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 678
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 679
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->displayName_:Ljava/lang/Object;

    .line 680
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->onChanged()V

    .line 681
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 742
    if-nez p1, :cond_0

    .line 743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 745
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 746
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    .line 747
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->onChanged()V

    .line 748
    return-object p0
.end method

.method public setIconUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 772
    if-nez p1, :cond_0

    .line 773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 775
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 776
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->iconUrl_:Ljava/lang/Object;

    .line 777
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->onChanged()V

    .line 778
    return-object p0
.end method

.method public setState(Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 565
    if-nez p1, :cond_0

    .line 566
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 568
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->bitField0_:I

    .line 569
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->state_:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    .line 570
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->onChanged()V

    .line 571
    return-object p0
.end method
