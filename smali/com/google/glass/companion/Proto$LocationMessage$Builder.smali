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
    .line 5102
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5226
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->LOCATION_CHANGED:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 5261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 5334
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 5466
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 5103
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->maybeForceBuilderInitialization()V

    .line 5104
    return-void
.end method

.method static synthetic access$3300()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5095
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->create()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5109
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5107
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 2

    .prologue
    .line 5136
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    .line 5137
    .local v0, result:Lcom/google/glass/companion/Proto$LocationMessage;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5138
    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5140
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5095
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->build()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 5

    .prologue
    .line 5144
    new-instance v1, Lcom/google/glass/companion/Proto$LocationMessage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 5145
    .local v1, result:Lcom/google/glass/companion/Proto$LocationMessage;
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5146
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5147
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5148
    or-int/lit8 v2, v2, 0x1

    .line 5150
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationMessage;->access$3502(Lcom/google/glass/companion/Proto$LocationMessage;Lcom/google/glass/companion/Proto$LocationMessage$MessageType;)Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 5151
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5152
    or-int/lit8 v2, v2, 0x2

    .line 5154
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationMessage;->access$3602(Lcom/google/glass/companion/Proto$LocationMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5155
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5156
    or-int/lit8 v2, v2, 0x4

    .line 5158
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationMessage;->access$3702(Lcom/google/glass/companion/Proto$LocationMessage;Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location;

    .line 5159
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5160
    or-int/lit8 v2, v2, 0x8

    .line 5162
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->status_:I

    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->status_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationMessage;->access$3802(Lcom/google/glass/companion/Proto$LocationMessage;I)I

    .line 5163
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 5164
    or-int/lit8 v2, v2, 0x10

    .line 5166
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationMessage;->access$3902(Lcom/google/glass/companion/Proto$LocationMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5167
    #setter for: Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$LocationMessage;->access$4002(Lcom/google/glass/companion/Proto$LocationMessage;I)I

    .line 5168
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5095
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5113
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5114
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->LOCATION_CHANGED:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 5115
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 5117
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5118
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 5119
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->status_:I

    .line 5121
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 5123
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5124
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5095
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->clear()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5095
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->clear()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLocation()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5412
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 5414
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5415
    return-object p0
.end method

.method public clearProvider()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5315
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5316
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 5318
    return-object p0
.end method

.method public clearReceiver()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5545
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5546
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->getReceiver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 5548
    return-object p0
.end method

.method public clearStatus()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5460
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5461
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->status_:I

    .line 5463
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5255
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5256
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->LOCATION_CHANGED:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 5258
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 2

    .prologue
    .line 5128
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
    .line 5095
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->clone()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5095
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->clone()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5095
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
    .line 5095
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->clone()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 5132
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5095
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5095
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 5353
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5272
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 5273
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5274
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5276
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 5279
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

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5287
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 5288
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5289
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5292
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 5295
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
    .locals 3

    .prologue
    .line 5487
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 5488
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5489
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5491
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 5494
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

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5507
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 5508
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5509
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5512
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 5515
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
    .line 5437
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->status_:I

    return v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    .locals 1

    .prologue
    .line 5237
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    .line 5343
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
    .line 5266
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
    .line 5476
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
    .line 5427
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

    .line 5231
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

    .line 5196
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->hasType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5204
    :cond_0
    :goto_0
    return v0

    .line 5200
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->hasProvider()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5204
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5172
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5192
    :cond_0
    :goto_0
    return-object p0

    .line 5173
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5174
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->getType()Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->setType(Lcom/google/glass/companion/Proto$LocationMessage$MessageType;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    .line 5176
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->hasProvider()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5177
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5178
    #getter for: Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->access$3600(Lcom/google/glass/companion/Proto$LocationMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 5181
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5182
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->getLocation()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeLocation(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    .line 5184
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5185
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->setStatus(I)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    .line 5187
    :cond_5
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->hasReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5188
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5189
    #getter for: Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$LocationMessage;->access$3900(Lcom/google/glass/companion/Proto$LocationMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

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
    .line 5211
    const/4 v2, 0x0

    .line 5213
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

    .line 5218
    if-eqz v2, :cond_0

    .line 5219
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    .line 5222
    :cond_0
    return-object p0

    .line 5214
    :catch_0
    move-exception v1

    .line 5215
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    move-object v2, v0

    .line 5216
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5218
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 5219
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
    .line 5095
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5095
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
    .line 5095
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLocation(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5393
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5395
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Location;->newBuilder(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Location$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 5401
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5402
    return-object p0

    .line 5398
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    goto :goto_0
.end method

.method public setLocation(Lcom/google/glass/companion/Proto$Location$Builder;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 5380
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location$Builder;->build()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 5382
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5383
    return-object p0
.end method

.method public setLocation(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5363
    if-nez p1, :cond_0

    .line 5364
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5366
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 5368
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5369
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5303
    if-nez p1, :cond_0

    .line 5304
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5306
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5307
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 5309
    return-object p0
.end method

.method public setProviderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5325
    if-nez p1, :cond_0

    .line 5326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5328
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5329
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->provider_:Ljava/lang/Object;

    .line 5331
    return-object p0
.end method

.method public setReceiver(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5528
    if-nez p1, :cond_0

    .line 5529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5531
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5532
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 5534
    return-object p0
.end method

.method public setReceiverBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5560
    if-nez p1, :cond_0

    .line 5561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5563
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5564
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->receiver_:Ljava/lang/Object;

    .line 5566
    return-object p0
.end method

.method public setStatus(I)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5447
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5448
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->status_:I

    .line 5450
    return-object p0
.end method

.method public setType(Lcom/google/glass/companion/Proto$LocationMessage$MessageType;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5243
    if-nez p1, :cond_0

    .line 5244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5246
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->bitField0_:I

    .line 5247
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 5249
    return-object p0
.end method
