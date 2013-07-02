.class public final Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AudioClipId.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AudioClipIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AudioClipId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/AudioClipIdOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private emailAddress_:Ljava/lang/Object;

.field private random_:Lcom/google/protobuf/ByteString;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    .line 646
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->random_:Lcom/google/protobuf/ByteString;

    .line 380
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->maybeForceBuilderInitialization()V

    .line 381
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    .line 646
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->random_:Lcom/google/protobuf/ByteString;

    .line 386
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->maybeForceBuilderInitialization()V

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AudioClipId$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->create()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 389
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    .line 422
    .local v0, result:Lcom/google/googlex/glass/common/proto/AudioClipId;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 425
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 5

    .prologue
    .line 429
    new-instance v1, Lcom/google/googlex/glass/common/proto/AudioClipId;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/AudioClipId;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AudioClipId$1;)V

    .line 430
    .local v1, result:Lcom/google/googlex/glass/common/proto/AudioClipId;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 431
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 432
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 433
    or-int/lit8 v2, v2, 0x1

    .line 435
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AudioClipId;->emailAddress_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AudioClipId;->access$502(Lcom/google/googlex/glass/common/proto/AudioClipId;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 437
    or-int/lit8 v2, v2, 0x2

    .line 439
    :cond_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->timestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/AudioClipId;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/AudioClipId;->access$602(Lcom/google/googlex/glass/common/proto/AudioClipId;J)J

    .line 440
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 441
    or-int/lit8 v2, v2, 0x4

    .line 443
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->random_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/AudioClipId;->random_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AudioClipId;->access$702(Lcom/google/googlex/glass/common/proto/AudioClipId;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 444
    #setter for: Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AudioClipId;->access$802(Lcom/google/googlex/glass/common/proto/AudioClipId;I)I

    .line 445
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->onBuilt()V

    .line 446
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 2

    .prologue
    .line 397
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 398
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    .line 399
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 400
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->timestamp_:J

    .line 401
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 402
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->random_:Lcom/google/protobuf/ByteString;

    .line 403
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 404
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEmailAddress()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 576
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    .line 577
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->onChanged()V

    .line 578
    return-object p0
.end method

.method public clearRandom()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 692
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getRandom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->random_:Lcom/google/protobuf/ByteString;

    .line 693
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->onChanged()V

    .line 694
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 2

    .prologue
    .line 640
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 641
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->timestamp_:J

    .line 642
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->onChanged()V

    .line 643
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 2

    .prologue
    .line 408
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->create()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

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
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 517
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    .line 518
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 519
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 521
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    .line 527
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

.method public getEmailAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 539
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    .line 540
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 541
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 544
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    .line 547
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

.method public getRandom()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->random_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 617
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasEmailAddress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 507
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRandom()Z
    .locals 2

    .prologue
    .line 655
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 607
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

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
    .line 373
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AudioClipId;

    const-class v2, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 459
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 472
    :goto_0
    return-object p0

    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipId;->hasEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 462
    #getter for: Lcom/google/googlex/glass/common/proto/AudioClipId;->emailAddress_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AudioClipId;->access$500(Lcom/google/googlex/glass/common/proto/AudioClipId;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    .line 463
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->onChanged()V

    .line 465
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipId;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    .line 468
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipId;->hasRandom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getRandom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->setRandom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    .line 471
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v2, 0x0

    .line 485
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/AudioClipId;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    if-eqz v2, :cond_0

    .line 491
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    .line 494
    :cond_0
    return-object p0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-object v2, v0

    .line 488
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 491
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 450
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AudioClipId;

    if-eqz v0, :cond_0

    .line 451
    check-cast p1, Lcom/google/googlex/glass/common/proto/AudioClipId;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object p0

    .line 454
    .end local p0
    :goto_0
    return-object p0

    .line 453
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
    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

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
    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

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
    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

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
    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 559
    if-nez p1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 562
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 563
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    .line 564
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->onChanged()V

    .line 565
    return-object p0
.end method

.method public setEmailAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 589
    if-nez p1, :cond_0

    .line 590
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 592
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 593
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->emailAddress_:Ljava/lang/Object;

    .line 594
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->onChanged()V

    .line 595
    return-object p0
.end method

.method public setRandom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
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
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 679
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->random_:Lcom/google/protobuf/ByteString;

    .line 680
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->onChanged()V

    .line 681
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 627
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->bitField0_:I

    .line 628
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->timestamp_:J

    .line 629
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->onChanged()V

    .line 630
    return-object p0
.end method
