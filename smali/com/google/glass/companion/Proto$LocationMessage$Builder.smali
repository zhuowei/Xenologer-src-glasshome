.class public final Lcom/google/glass/companion/Proto$LocationMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$LocationMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$LocationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$LocationMessage;",
        "Lcom/google/glass/companion/Proto$LocationMessage$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$LocationMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/glass/companion/Proto$Location;

.field private provider_:Ljava/lang/Object;

.field private receiver_:Ljava/lang/Object;

.field private status_:I

.field private type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8483
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8608
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->LOCATION_CHANGED:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 8643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 8719
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 8851
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 8484
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->maybeForceBuilderInitialization()V

    .line 8485
    return-void
.end method

.method static synthetic access$7600()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 8476
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->create()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 8490
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 8488
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 2

    .prologue
    .line 8517
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    .line 8518
    .local v0, result:Lcom/google/glass/companion/Proto$LocationMessage;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8519
    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8521
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8476
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->build()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 5

    .prologue
    .line 8525
    new-instance v1, Lcom/google/glass/companion/Proto$LocationMessage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 8526
    .local v1, result:Lcom/google/glass/companion/Proto$LocationMessage;
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8527
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8528
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8529
    or-int/lit8 v2, v2, 0x1

    .line 8531
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationMessage;->access$7802(Lcom/google/glass/companion/Proto$LocationMessage;Lcom/google/glass/companion/Proto$LocationMessage$MessageType;)Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 8532
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8533
    or-int/lit8 v2, v2, 0x2

    .line 8535
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationMessage;->access$7902(Lcom/google/glass/companion/Proto$LocationMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8536
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8537
    or-int/lit8 v2, v2, 0x4

    .line 8539
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationMessage;->access$8002(Lcom/google/glass/companion/Proto$LocationMessage;Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location;

    .line 8540
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 8541
    or-int/lit8 v2, v2, 0x8

    .line 8543
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->status_:I

    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->status_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationMessage;->access$8102(Lcom/google/glass/companion/Proto$LocationMessage;I)I

    .line 8544
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 8545
    or-int/lit8 v2, v2, 0x10

    .line 8547
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationMessage;->access$8202(Lcom/google/glass/companion/Proto$LocationMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8548
    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$LocationMessage;->access$8302(Lcom/google/glass/companion/Proto$LocationMessage;I)I

    .line 8549
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8476
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 8494
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8495
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->LOCATION_CHANGED:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 8496
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8497
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 8498
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8499
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 8500
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8501
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->status_:I

    .line 8502
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 8504
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8505
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8476
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->clear()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8476
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->clear()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLocation()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 8797
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 8799
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8800
    return-object p0
.end method

.method public clearProvider()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 8700
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8701
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 8703
    return-object p0
.end method

.method public clearReceiver()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 8933
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8934
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->getReceiver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 8936
    return-object p0
.end method

.method public clearStatus()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 8845
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8846
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->status_:I

    .line 8848
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 8637
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8638
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->LOCATION_CHANGED:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 8640
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 2

    .prologue
    .line 8509
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->create()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8476
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->clone()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8476
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->clone()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8476
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->clone()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

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
    .line 8476
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->clone()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 8513
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 8476
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8476
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 8738
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8654
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 8655
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 8656
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8658
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8659
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8660
    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 8664
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

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 8672
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 8673
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8674
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8677
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 8680
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

.method public getReceiver()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8872
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 8873
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 8874
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8876
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8877
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8878
    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 8882
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

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 8895
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 8896
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8897
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8900
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 8903
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

.method public getStatus()I
    .locals 1

    .prologue
    .line 8822
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->status_:I

    return v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    .locals 1

    .prologue
    .line 8619
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    .line 8728
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

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

.method public hasProvider()Z
    .locals 2

    .prologue
    .line 8648
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

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

.method public hasReceiver()Z
    .locals 2

    .prologue
    .line 8861
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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
    .line 8812
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8613
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8578
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->hasType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8586
    :cond_0
    :goto_0
    return v0

    .line 8582
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->hasProvider()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8586
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 8553
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 8574
    :goto_0
    return-object p0

    .line 8554
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8555
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->getType()Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->setType(Lcom/google/glass/companion/Proto$LocationMessage$MessageType;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    .line 8557
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->hasProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8558
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8559
    #getter for: Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->access$7900(Lcom/google/glass/companion/Proto$LocationMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 8562
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8563
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->getLocation()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeLocation(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    .line 8565
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8566
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->setStatus(I)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    .line 8568
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->hasReceiver()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8569
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8570
    #getter for: Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->access$8200(Lcom/google/glass/companion/Proto$LocationMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 8573
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->access$8400(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8593
    const/4 v2, 0x0

    .line 8595
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$LocationMessage;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8600
    if-eqz v2, :cond_0

    .line 8601
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    .line 8604
    :cond_0
    return-object p0

    .line 8596
    :catch_0
    move-exception v1

    .line 8597
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    move-object v2, v0

    .line 8598
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8600
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 8601
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    :cond_1
    throw v3
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
    .line 8476
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8476
    check-cast p1, Lcom/google/glass/companion/Proto$LocationMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

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
    .line 8476
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLocation(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8778
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8780
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Location;->newBuilder(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Location$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 8786
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8787
    return-object p0

    .line 8783
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    goto :goto_0
.end method

.method public setLocation(Lcom/google/glass/companion/Proto$Location$Builder;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 8765
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location$Builder;->build()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 8767
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8768
    return-object p0
.end method

.method public setLocation(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8748
    if-nez p1, :cond_0

    .line 8749
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8751
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 8753
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8754
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8688
    if-nez p1, :cond_0

    .line 8689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8691
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8692
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 8694
    return-object p0
.end method

.method public setProviderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8710
    if-nez p1, :cond_0

    .line 8711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8713
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8714
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 8716
    return-object p0
.end method

.method public setReceiver(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8916
    if-nez p1, :cond_0

    .line 8917
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8919
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8920
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 8922
    return-object p0
.end method

.method public setReceiverBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8948
    if-nez p1, :cond_0

    .line 8949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8951
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8952
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 8954
    return-object p0
.end method

.method public setStatus(I)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8832
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8833
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->status_:I

    .line 8835
    return-object p0
.end method

.method public setType(Lcom/google/glass/companion/Proto$LocationMessage$MessageType;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8625
    if-nez p1, :cond_0

    .line 8626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8628
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 8629
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 8631
    return-object p0
.end method
