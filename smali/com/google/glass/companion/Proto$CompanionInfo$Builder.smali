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
    .line 8083
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8435
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8084
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->maybeForceBuilderInitialization()V

    .line 8085
    return-void
.end method

.method static synthetic access$6700()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8076
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->create()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8090
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 8088
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 2

    .prologue
    .line 8119
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    .line 8120
    .local v0, result:Lcom/google/glass/companion/Proto$CompanionInfo;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8121
    invoke-static {v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8123
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8076
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->build()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 5

    .prologue
    .line 8127
    new-instance v1, Lcom/google/glass/companion/Proto$CompanionInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 8128
    .local v1, result:Lcom/google/glass/companion/Proto$CompanionInfo;
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8129
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8130
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8131
    or-int/lit8 v2, v2, 0x1

    .line 8133
    :cond_0
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$6902(Lcom/google/glass/companion/Proto$CompanionInfo;J)J

    .line 8134
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8135
    or-int/lit8 v2, v2, 0x2

    .line 8137
    :cond_1
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$7002(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z

    .line 8138
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8139
    or-int/lit8 v2, v2, 0x4

    .line 8141
    :cond_2
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$7102(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z

    .line 8142
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 8143
    or-int/lit8 v2, v2, 0x8

    .line 8145
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$7202(Lcom/google/glass/companion/Proto$CompanionInfo;I)I

    .line 8146
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 8147
    or-int/lit8 v2, v2, 0x10

    .line 8149
    :cond_4
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$7302(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z

    .line 8150
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 8151
    or-int/lit8 v2, v2, 0x20

    .line 8153
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$7402(Lcom/google/glass/companion/Proto$CompanionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8154
    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$7502(Lcom/google/glass/companion/Proto$CompanionInfo;I)I

    .line 8155
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8076
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8094
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8095
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    .line 8096
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8097
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    .line 8098
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8099
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    .line 8100
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8101
    iput v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    .line 8102
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8103
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    .line 8104
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8106
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8107
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8076
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clear()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8076
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clear()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 2

    .prologue
    .line 8237
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    .line 8240
    return-object p0
.end method

.method public clearRequestLog()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8429
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    .line 8432
    return-object p0
.end method

.method public clearRequestNetwork()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8285
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    .line 8288
    return-object p0
.end method

.method public clearResponseAndroidVersion()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8381
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8382
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    .line 8384
    return-object p0
.end method

.method public clearResponseIsNetworkOk()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8333
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    .line 8336
    return-object p0
.end method

.method public clearResponseLog()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8509
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8510
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8512
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 2

    .prologue
    .line 8111
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
    .line 8076
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8076
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8076
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
    .line 8076
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 8115
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 8076
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8076
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 8222
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    return-wide v0
.end method

.method public getRequestLog()Z
    .locals 1

    .prologue
    .line 8406
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    return v0
.end method

.method public getRequestNetwork()Z
    .locals 1

    .prologue
    .line 8262
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    return v0
.end method

.method public getResponseAndroidVersion()I
    .locals 1

    .prologue
    .line 8358
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    return v0
.end method

.method public getResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 8310
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    return v0
.end method

.method public getResponseLog()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8454
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8455
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 8456
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8458
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8461
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

.method public getResponseLogBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 8473
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8474
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8475
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8478
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8481
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

    .line 8216
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
    .line 8396
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
    .line 8252
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
    .line 8348
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
    .line 8300
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
    .line 8444
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
    .line 8185
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8187
    const/4 v0, 0x0

    .line 8189
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
    .line 8159
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 8181
    :goto_0
    return-object p0

    .line 8160
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8161
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setId(J)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8163
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasRequestNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8164
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getRequestNetwork()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8166
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseIsNetworkOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8167
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseIsNetworkOk()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setResponseIsNetworkOk(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8169
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseAndroidVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8170
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseAndroidVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setResponseAndroidVersion(I)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8172
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasRequestLog()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8173
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getRequestLog()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setRequestLog(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8175
    :cond_5
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseLog()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8176
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8177
    #getter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$7400(Lcom/google/glass/companion/Proto$CompanionInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8180
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$7600(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/protobuf/ByteString;

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
    .line 8196
    const/4 v2, 0x0

    .line 8198
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

    .line 8203
    if-eqz v2, :cond_0

    .line 8204
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8207
    :cond_0
    return-object p0

    .line 8199
    :catch_0
    move-exception v1

    .line 8200
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    move-object v2, v0

    .line 8201
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8203
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 8204
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
    .line 8076
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8076
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
    .line 8076
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(J)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8228
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8229
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    .line 8231
    return-object p0
.end method

.method public setRequestLog(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8416
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8417
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    .line 8419
    return-object p0
.end method

.method public setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8272
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8273
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    .line 8275
    return-object p0
.end method

.method public setResponseAndroidVersion(I)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8368
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8369
    iput p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    .line 8371
    return-object p0
.end method

.method public setResponseIsNetworkOk(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8320
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8321
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    .line 8323
    return-object p0
.end method

.method public setResponseLog(Ljava/lang/String;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8493
    if-nez p1, :cond_0

    .line 8494
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8496
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8497
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8499
    return-object p0
.end method

.method public setResponseLogBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8523
    if-nez p1, :cond_0

    .line 8524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8526
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8527
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8529
    return-object p0
.end method
