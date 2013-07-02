.class public final Lcom/google/glass/companion/Proto$LocationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$LocationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$LocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$LocationRequest;",
        "Lcom/google/glass/companion/Proto$LocationRequest$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$LocationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private minDistance_:F

.field private minTime_:J

.field private provider_:Ljava/lang/Object;

.field private sendLastKnownLocation_:Z

.field private type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7481
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7604
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->START_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 7639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 7482
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 7483
    return-void
.end method

.method static synthetic access$6600()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 7474
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->create()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 7488
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 7486
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 2

    .prologue
    .line 7515
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    .line 7516
    .local v0, result:Lcom/google/glass/companion/Proto$LocationRequest;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7517
    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7519
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7474
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->build()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 5

    .prologue
    .line 7523
    new-instance v1, Lcom/google/glass/companion/Proto$LocationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 7524
    .local v1, result:Lcom/google/glass/companion/Proto$LocationRequest;
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7525
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7526
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7527
    or-int/lit8 v2, v2, 0x1

    .line 7529
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationRequest;->access$6802(Lcom/google/glass/companion/Proto$LocationRequest;Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 7530
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7531
    or-int/lit8 v2, v2, 0x2

    .line 7533
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationRequest;->access$6902(Lcom/google/glass/companion/Proto$LocationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7534
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 7535
    or-int/lit8 v2, v2, 0x4

    .line 7537
    :cond_2
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minTime_:J

    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$LocationRequest;->access$7002(Lcom/google/glass/companion/Proto$LocationRequest;J)J

    .line 7538
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 7539
    or-int/lit8 v2, v2, 0x8

    .line 7541
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minDistance_:F

    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationRequest;->access$7102(Lcom/google/glass/companion/Proto$LocationRequest;F)F

    .line 7542
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 7543
    or-int/lit8 v2, v2, 0x10

    .line 7545
    :cond_4
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->sendLastKnownLocation_:Z

    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationRequest;->access$7202(Lcom/google/glass/companion/Proto$LocationRequest;Z)Z

    .line 7546
    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$LocationRequest;->access$7302(Lcom/google/glass/companion/Proto$LocationRequest;I)I

    .line 7547
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7474
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 2

    .prologue
    .line 7492
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7493
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->START_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 7494
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7495
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 7496
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7497
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minTime_:J

    .line 7498
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7499
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minDistance_:F

    .line 7500
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->sendLastKnownLocation_:Z

    .line 7502
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7503
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7474
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->clear()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7474
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->clear()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMinDistance()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 7789
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7790
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minDistance_:F

    .line 7792
    return-object p0
.end method

.method public clearMinTime()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 2

    .prologue
    .line 7757
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7758
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minTime_:J

    .line 7760
    return-object p0
.end method

.method public clearProvider()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 7696
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7697
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 7699
    return-object p0
.end method

.method public clearSendLastKnownLocation()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 7837
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->sendLastKnownLocation_:Z

    .line 7840
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 7633
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7634
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->START_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 7636
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 2

    .prologue
    .line 7507
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->create()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7474
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7474
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7474
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

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
    .line 7474
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 7511
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7474
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7474
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMinDistance()F
    .locals 1

    .prologue
    .line 7774
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minDistance_:F

    return v0
.end method

.method public getMinTime()J
    .locals 2

    .prologue
    .line 7734
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minTime_:J

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7650
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 7651
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 7652
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7654
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7655
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7656
    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 7660
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
    .line 7668
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 7669
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7670
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7673
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 7676
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

.method public getSendLastKnownLocation()Z
    .locals 1

    .prologue
    .line 7814
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->sendLastKnownLocation_:Z

    return v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    .locals 1

    .prologue
    .line 7615
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    return-object v0
.end method

.method public hasMinDistance()Z
    .locals 2

    .prologue
    .line 7768
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

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

.method public hasMinTime()Z
    .locals 2

    .prologue
    .line 7724
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

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
    .line 7644
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

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

.method public hasSendLastKnownLocation()Z
    .locals 2

    .prologue
    .line 7804
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7609
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

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

    .line 7574
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->hasType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7582
    :cond_0
    :goto_0
    return v0

    .line 7578
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->hasProvider()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7582
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 7551
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7570
    :goto_0
    return-object p0

    .line 7552
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7553
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->getType()Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setType(Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 7555
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->hasProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7556
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7557
    #getter for: Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->access$6900(Lcom/google/glass/companion/Proto$LocationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 7560
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->hasMinTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7561
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->getMinTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setMinTime(J)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 7563
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->hasMinDistance()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7564
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->getMinDistance()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setMinDistance(F)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 7566
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->hasSendLastKnownLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7567
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->getSendLastKnownLocation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setSendLastKnownLocation(Z)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 7569
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$LocationRequest;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->access$7400(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7589
    const/4 v2, 0x0

    .line 7591
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$LocationRequest;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$LocationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7596
    if-eqz v2, :cond_0

    .line 7597
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 7600
    :cond_0
    return-object p0

    .line 7592
    :catch_0
    move-exception v1

    .line 7593
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    move-object v2, v0

    .line 7594
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7596
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 7597
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

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
    .line 7474
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7474
    check-cast p1, Lcom/google/glass/companion/Proto$LocationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

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
    .line 7474
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMinDistance(F)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7780
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7781
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minDistance_:F

    .line 7783
    return-object p0
.end method

.method public setMinTime(J)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7744
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7745
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minTime_:J

    .line 7747
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7684
    if-nez p1, :cond_0

    .line 7685
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7687
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7688
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 7690
    return-object p0
.end method

.method public setProviderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7706
    if-nez p1, :cond_0

    .line 7707
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7709
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7710
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 7712
    return-object p0
.end method

.method public setSendLastKnownLocation(Z)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7824
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7825
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->sendLastKnownLocation_:Z

    .line 7827
    return-object p0
.end method

.method public setType(Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7621
    if-nez p1, :cond_0

    .line 7622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7624
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 7625
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 7627
    return-object p0
.end method
