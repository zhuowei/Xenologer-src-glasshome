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
    .line 4124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4246
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->START_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 4281
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 4125
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 4126
    return-void
.end method

.method static synthetic access$2400()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 4117
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->create()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 4131
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4129
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 2

    .prologue
    .line 4158
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    .line 4159
    .local v0, result:Lcom/google/glass/companion/Proto$LocationRequest;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4160
    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4162
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4117
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->build()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 5

    .prologue
    .line 4166
    new-instance v1, Lcom/google/glass/companion/Proto$LocationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 4167
    .local v1, result:Lcom/google/glass/companion/Proto$LocationRequest;
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4168
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4169
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4170
    or-int/lit8 v2, v2, 0x1

    .line 4172
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationRequest;->access$2602(Lcom/google/glass/companion/Proto$LocationRequest;Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 4173
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4174
    or-int/lit8 v2, v2, 0x2

    .line 4176
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationRequest;->access$2702(Lcom/google/glass/companion/Proto$LocationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4177
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4178
    or-int/lit8 v2, v2, 0x4

    .line 4180
    :cond_2
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minTime_:J

    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->minTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$LocationRequest;->access$2802(Lcom/google/glass/companion/Proto$LocationRequest;J)J

    .line 4181
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4182
    or-int/lit8 v2, v2, 0x8

    .line 4184
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minDistance_:F

    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->minDistance_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationRequest;->access$2902(Lcom/google/glass/companion/Proto$LocationRequest;F)F

    .line 4185
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 4186
    or-int/lit8 v2, v2, 0x10

    .line 4188
    :cond_4
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->sendLastKnownLocation_:Z

    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$LocationRequest;->access$3002(Lcom/google/glass/companion/Proto$LocationRequest;Z)Z

    .line 4189
    #setter for: Lcom/google/glass/companion/Proto$LocationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$LocationRequest;->access$3102(Lcom/google/glass/companion/Proto$LocationRequest;I)I

    .line 4190
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4117
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 2

    .prologue
    .line 4135
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4136
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->START_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 4137
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4138
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 4139
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minTime_:J

    .line 4141
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minDistance_:F

    .line 4143
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->sendLastKnownLocation_:Z

    .line 4145
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4146
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4117
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->clear()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4117
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->clear()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMinDistance()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 4428
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4429
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minDistance_:F

    .line 4431
    return-object p0
.end method

.method public clearMinTime()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 2

    .prologue
    .line 4396
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4397
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minTime_:J

    .line 4399
    return-object p0
.end method

.method public clearProvider()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 4335
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4336
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 4338
    return-object p0
.end method

.method public clearSendLastKnownLocation()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 4476
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->sendLastKnownLocation_:Z

    .line 4479
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1

    .prologue
    .line 4275
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4276
    sget-object v0, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->START_LISTENING:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 4278
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 2

    .prologue
    .line 4150
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
    .line 4117
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4117
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4117
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
    .line 4117
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->clone()Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 4154
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4117
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4117
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMinDistance()F
    .locals 1

    .prologue
    .line 4413
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minDistance_:F

    return v0
.end method

.method public getMinTime()J
    .locals 2

    .prologue
    .line 4373
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minTime_:J

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4292
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 4293
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4294
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4296
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 4299
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
    .line 4307
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 4308
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4309
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4312
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 4315
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
    .line 4453
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->sendLastKnownLocation_:Z

    return v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    .locals 1

    .prologue
    .line 4257
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    return-object v0
.end method

.method public hasMinDistance()Z
    .locals 2

    .prologue
    .line 4407
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
    .line 4363
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
    .line 4286
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
    .line 4443
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

    .line 4251
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

    .line 4216
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->hasType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4224
    :cond_0
    :goto_0
    return v0

    .line 4220
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->hasProvider()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4224
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 4194
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4212
    :cond_0
    :goto_0
    return-object p0

    .line 4195
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4196
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->getType()Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setType(Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 4198
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->hasProvider()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4199
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4200
    #getter for: Lcom/google/glass/companion/Proto$LocationRequest;->provider_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->access$2700(Lcom/google/glass/companion/Proto$LocationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 4203
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->hasMinTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4204
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->getMinTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setMinTime(J)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 4206
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->hasMinDistance()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4207
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->getMinDistance()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setMinDistance(F)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 4209
    :cond_5
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->hasSendLastKnownLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4210
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$LocationRequest;->getSendLastKnownLocation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->setSendLastKnownLocation(Z)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

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
    .line 4231
    const/4 v2, 0x0

    .line 4233
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

    .line 4238
    if-eqz v2, :cond_0

    .line 4239
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    .line 4242
    :cond_0
    return-object p0

    .line 4234
    :catch_0
    move-exception v1

    .line 4235
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    move-object v2, v0

    .line 4236
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4238
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 4239
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
    .line 4117
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4117
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
    .line 4117
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMinDistance(F)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4419
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4420
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minDistance_:F

    .line 4422
    return-object p0
.end method

.method public setMinTime(J)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4383
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4384
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->minTime_:J

    .line 4386
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4323
    if-nez p1, :cond_0

    .line 4324
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4326
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4327
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 4329
    return-object p0
.end method

.method public setProviderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4345
    if-nez p1, :cond_0

    .line 4346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4348
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4349
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->provider_:Ljava/lang/Object;

    .line 4351
    return-object p0
.end method

.method public setSendLastKnownLocation(Z)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4463
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4464
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->sendLastKnownLocation_:Z

    .line 4466
    return-object p0
.end method

.method public setType(Lcom/google/glass/companion/Proto$LocationRequest$RequestType;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4263
    if-nez p1, :cond_0

    .line 4264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4266
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->bitField0_:I

    .line 4267
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Builder;->type_:Lcom/google/glass/companion/Proto$LocationRequest$RequestType;

    .line 4269
    return-object p0
.end method
