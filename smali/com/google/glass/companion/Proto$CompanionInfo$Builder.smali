.class public final Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$CompanionInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$CompanionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$CompanionInfo;",
        "Lcom/google/glass/companion/Proto$CompanionInfo$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$CompanionInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:J

.field private requestLog_:Z

.field private requestNetwork_:Z

.field private responseAndroidVersion_:I

.field private responseIsNetworkOk_:Z

.field private responseLog_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11426
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11778
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 11427
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->maybeForceBuilderInitialization()V

    .line 11428
    return-void
.end method

.method static synthetic access$10800()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 11419
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->create()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 11433
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 11431
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 2

    .prologue
    .line 11462
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    .line 11463
    .local v0, result:Lcom/google/glass/companion/Proto$CompanionInfo;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11464
    invoke-static {v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11466
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11419
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->build()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 5

    .prologue
    .line 11470
    new-instance v1, Lcom/google/glass/companion/Proto$CompanionInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 11471
    .local v1, result:Lcom/google/glass/companion/Proto$CompanionInfo;
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11472
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 11473
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 11474
    or-int/lit8 v2, v2, 0x1

    .line 11476
    :cond_0
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$11002(Lcom/google/glass/companion/Proto$CompanionInfo;J)J

    .line 11477
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 11478
    or-int/lit8 v2, v2, 0x2

    .line 11480
    :cond_1
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$11102(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z

    .line 11481
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 11482
    or-int/lit8 v2, v2, 0x4

    .line 11484
    :cond_2
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$11202(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z

    .line 11485
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 11486
    or-int/lit8 v2, v2, 0x8

    .line 11488
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$11302(Lcom/google/glass/companion/Proto$CompanionInfo;I)I

    .line 11489
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 11490
    or-int/lit8 v2, v2, 0x10

    .line 11492
    :cond_4
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$11402(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z

    .line 11493
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 11494
    or-int/lit8 v2, v2, 0x20

    .line 11496
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$11502(Lcom/google/glass/companion/Proto$CompanionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11497
    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$11602(Lcom/google/glass/companion/Proto$CompanionInfo;I)I

    .line 11498
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11419
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11437
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11438
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    .line 11439
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11440
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    .line 11441
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11442
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    .line 11443
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11444
    iput v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    .line 11445
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11446
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    .line 11447
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 11449
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11450
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11419
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clear()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11419
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clear()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 2

    .prologue
    .line 11580
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11581
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    .line 11583
    return-object p0
.end method

.method public clearRequestLog()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 11772
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    .line 11775
    return-object p0
.end method

.method public clearRequestNetwork()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 11628
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    .line 11631
    return-object p0
.end method

.method public clearResponseAndroidVersion()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 11724
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11725
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    .line 11727
    return-object p0
.end method

.method public clearResponseIsNetworkOk()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 11676
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    .line 11679
    return-object p0
.end method

.method public clearResponseLog()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 11855
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11856
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 11858
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 2

    .prologue
    .line 11454
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->create()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11419
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11419
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11419
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

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
    .line 11419
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 11458
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 11419
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11419
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 11565
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    return-wide v0
.end method

.method public getRequestLog()Z
    .locals 1

    .prologue
    .line 11749
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    return v0
.end method

.method public getRequestNetwork()Z
    .locals 1

    .prologue
    .line 11605
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    return v0
.end method

.method public getResponseAndroidVersion()I
    .locals 1

    .prologue
    .line 11701
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    return v0
.end method

.method public getResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 11653
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    return v0
.end method

.method public getResponseLog()Ljava/lang/String;
    .locals 4

    .prologue
    .line 11797
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 11798
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 11799
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11801
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11802
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11803
    iput-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 11807
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

.method public getResponseLogBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 11819
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 11820
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11821
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11824
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 11827
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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11559
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestLog()Z
    .locals 2

    .prologue
    .line 11739
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

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

.method public hasRequestNetwork()Z
    .locals 2

    .prologue
    .line 11595
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

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

.method public hasResponseAndroidVersion()Z
    .locals 2

    .prologue
    .line 11691
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

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

.method public hasResponseIsNetworkOk()Z
    .locals 2

    .prologue
    .line 11643
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

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

.method public hasResponseLog()Z
    .locals 2

    .prologue
    .line 11787
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 11528
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11530
    const/4 v0, 0x0

    .line 11532
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 11502
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 11524
    :goto_0
    return-object p0

    .line 11503
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11504
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setId(J)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 11506
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasRequestNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11507
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getRequestNetwork()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 11509
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseIsNetworkOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11510
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseIsNetworkOk()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setResponseIsNetworkOk(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 11512
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseAndroidVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11513
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseAndroidVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setResponseAndroidVersion(I)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 11515
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasRequestLog()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11516
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getRequestLog()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setRequestLog(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 11518
    :cond_5
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseLog()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11519
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11520
    #getter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$11500(Lcom/google/glass/companion/Proto$CompanionInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 11523
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$11700(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11539
    const/4 v2, 0x0

    .line 11541
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$CompanionInfo;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11546
    if-eqz v2, :cond_0

    .line 11547
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 11550
    :cond_0
    return-object p0

    .line 11542
    :catch_0
    move-exception v1

    .line 11543
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    move-object v2, v0

    .line 11544
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11546
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 11547
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

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
    .line 11419
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11419
    check-cast p1, Lcom/google/glass/companion/Proto$CompanionInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

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
    .line 11419
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(J)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11571
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11572
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    .line 11574
    return-object p0
.end method

.method public setRequestLog(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11759
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11760
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    .line 11762
    return-object p0
.end method

.method public setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11615
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11616
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    .line 11618
    return-object p0
.end method

.method public setResponseAndroidVersion(I)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11711
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11712
    iput p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    .line 11714
    return-object p0
.end method

.method public setResponseIsNetworkOk(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11663
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11664
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    .line 11666
    return-object p0
.end method

.method public setResponseLog(Ljava/lang/String;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11839
    if-nez p1, :cond_0

    .line 11840
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11842
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11843
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 11845
    return-object p0
.end method

.method public setResponseLogBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11869
    if-nez p1, :cond_0

    .line 11870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11872
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 11873
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 11875
    return-object p0
.end method
