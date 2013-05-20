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
    .line 7982
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8333
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 7983
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->maybeForceBuilderInitialization()V

    .line 7984
    return-void
.end method

.method static synthetic access$6200()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 7975
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->create()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 7989
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 7987
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 2

    .prologue
    .line 8018
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    .line 8019
    .local v0, result:Lcom/google/glass/companion/Proto$CompanionInfo;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8020
    invoke-static {v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8022
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7975
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->build()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 5

    .prologue
    .line 8026
    new-instance v1, Lcom/google/glass/companion/Proto$CompanionInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 8027
    .local v1, result:Lcom/google/glass/companion/Proto$CompanionInfo;
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8028
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8029
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8030
    or-int/lit8 v2, v2, 0x1

    .line 8032
    :cond_0
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$6402(Lcom/google/glass/companion/Proto$CompanionInfo;J)J

    .line 8033
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8034
    or-int/lit8 v2, v2, 0x2

    .line 8036
    :cond_1
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$6502(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z

    .line 8037
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8038
    or-int/lit8 v2, v2, 0x4

    .line 8040
    :cond_2
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$6602(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z

    .line 8041
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 8042
    or-int/lit8 v2, v2, 0x8

    .line 8044
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$6702(Lcom/google/glass/companion/Proto$CompanionInfo;I)I

    .line 8045
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 8046
    or-int/lit8 v2, v2, 0x10

    .line 8048
    :cond_4
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$6802(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z

    .line 8049
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 8050
    or-int/lit8 v2, v2, 0x20

    .line 8052
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$6902(Lcom/google/glass/companion/Proto$CompanionInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8053
    #setter for: Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$7002(Lcom/google/glass/companion/Proto$CompanionInfo;I)I

    .line 8054
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7975
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->buildPartial()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7993
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7994
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    .line 7995
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 7996
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    .line 7997
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 7998
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    .line 7999
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8000
    iput v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    .line 8001
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8002
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    .line 8003
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8004
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8005
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8006
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7975
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clear()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7975
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clear()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 2

    .prologue
    .line 8135
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    .line 8138
    return-object p0
.end method

.method public clearRequestLog()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8327
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    .line 8330
    return-object p0
.end method

.method public clearRequestNetwork()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8183
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    .line 8186
    return-object p0
.end method

.method public clearResponseAndroidVersion()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8279
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8280
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    .line 8282
    return-object p0
.end method

.method public clearResponseIsNetworkOk()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8231
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    .line 8234
    return-object p0
.end method

.method public clearResponseLog()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8407
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8408
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8410
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 2

    .prologue
    .line 8010
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
    .line 7975
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7975
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7975
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
    .line 7975
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->clone()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 8014
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7975
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7975
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 8120
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    return-wide v0
.end method

.method public getRequestLog()Z
    .locals 1

    .prologue
    .line 8304
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    return v0
.end method

.method public getRequestNetwork()Z
    .locals 1

    .prologue
    .line 8160
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    return v0
.end method

.method public getResponseAndroidVersion()I
    .locals 1

    .prologue
    .line 8256
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    return v0
.end method

.method public getResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 8208
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    return v0
.end method

.method public getResponseLog()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8352
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8353
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 8354
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8356
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8359
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
    .line 8371
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8372
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8373
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8376
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8379
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

    .line 8114
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
    .line 8294
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
    .line 8150
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
    .line 8246
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
    .line 8198
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
    .line 8342
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
    .line 8083
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8085
    const/4 v0, 0x0

    .line 8087
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
    .line 8058
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 8079
    :cond_0
    :goto_0
    return-object p0

    .line 8059
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8060
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setId(J)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8062
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasRequestNetwork()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8063
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getRequestNetwork()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8065
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseIsNetworkOk()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8066
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseIsNetworkOk()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setResponseIsNetworkOk(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8068
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseAndroidVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8069
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseAndroidVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setResponseAndroidVersion(I)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8071
    :cond_5
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasRequestLog()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8072
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getRequestLog()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->setRequestLog(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8074
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8075
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8076
    #getter for: Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->access$6900(Lcom/google/glass/companion/Proto$CompanionInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

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
    .line 8094
    const/4 v2, 0x0

    .line 8096
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

    .line 8101
    if-eqz v2, :cond_0

    .line 8102
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    .line 8105
    :cond_0
    return-object p0

    .line 8097
    :catch_0
    move-exception v1

    .line 8098
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    move-object v2, v0

    .line 8099
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8101
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 8102
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
    .line 7975
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7975
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
    .line 7975
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(J)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8126
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8127
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->id_:J

    .line 8129
    return-object p0
.end method

.method public setRequestLog(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8314
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8315
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestLog_:Z

    .line 8317
    return-object p0
.end method

.method public setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8170
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8171
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->requestNetwork_:Z

    .line 8173
    return-object p0
.end method

.method public setResponseAndroidVersion(I)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8266
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8267
    iput p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseAndroidVersion_:I

    .line 8269
    return-object p0
.end method

.method public setResponseIsNetworkOk(Z)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8218
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8219
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseIsNetworkOk_:Z

    .line 8221
    return-object p0
.end method

.method public setResponseLog(Ljava/lang/String;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8391
    if-nez p1, :cond_0

    .line 8392
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8394
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8395
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8397
    return-object p0
.end method

.method public setResponseLogBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8421
    if-nez p1, :cond_0

    .line 8422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8424
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->bitField0_:I

    .line 8425
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->responseLog_:Ljava/lang/Object;

    .line 8427
    return-object p0
.end method
