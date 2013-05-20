.class public final Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AuthToken.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AuthTokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AuthToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/AuthToken$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/AuthTokenOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private type_:Lcom/google/googlex/glass/common/proto/AuthTokenType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 436
    sget-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->ANDROID_SERVICE:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->type_:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    .line 471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    .line 327
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->maybeForceBuilderInitialization()V

    .line 328
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 436
    sget-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->ANDROID_SERVICE:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->type_:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    .line 471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    .line 333
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->maybeForceBuilderInitialization()V

    .line 334
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AuthToken$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->create()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_AuthToken_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthToken;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/AuthToken;
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v0

    .line 367
    .local v0, result:Lcom/google/googlex/glass/common/proto/AuthToken;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AuthToken;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 370
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->build()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->build()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AuthToken;
    .locals 5

    .prologue
    .line 374
    new-instance v1, Lcom/google/googlex/glass/common/proto/AuthToken;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/AuthToken;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AuthToken$1;)V

    .line 375
    .local v1, result:Lcom/google/googlex/glass/common/proto/AuthToken;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    .line 376
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 377
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 378
    or-int/lit8 v2, v2, 0x1

    .line 380
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->type_:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    #setter for: Lcom/google/googlex/glass/common/proto/AuthToken;->type_:Lcom/google/googlex/glass/common/proto/AuthTokenType;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AuthToken;->access$502(Lcom/google/googlex/glass/common/proto/AuthToken;Lcom/google/googlex/glass/common/proto/AuthTokenType;)Lcom/google/googlex/glass/common/proto/AuthTokenType;

    .line 381
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 382
    or-int/lit8 v2, v2, 0x2

    .line 384
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AuthToken;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AuthToken;->access$602(Lcom/google/googlex/glass/common/proto/AuthToken;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    #setter for: Lcom/google/googlex/glass/common/proto/AuthToken;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AuthToken;->access$702(Lcom/google/googlex/glass/common/proto/AuthToken;I)I

    .line 386
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->onBuilt()V

    .line 387
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 345
    sget-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->ANDROID_SERVICE:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->type_:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    .line 346
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    .line 347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    .line 348
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    .line 349
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->clear()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->clear()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->clear()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->clear()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    .line 466
    sget-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->ANDROID_SERVICE:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->type_:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    .line 467
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->onChanged()V

    .line 468
    return-object p0
.end method

.method public clearValue()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    .line 526
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthToken;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AuthToken;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    .line 527
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->onChanged()V

    .line 528
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 2

    .prologue
    .line 353
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->create()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AuthToken;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->clone()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->clone()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->clone()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->clone()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->clone()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

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
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->clone()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AuthToken;
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthToken;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_AuthToken_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getType()Lcom/google/googlex/glass/common/proto/AuthTokenType;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->type_:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    .line 483
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 484
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    .line 489
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

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 497
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    .line 498
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 499
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 502
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    .line 505
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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 441
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

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
    .line 320
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_AuthToken_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AuthToken;

    const-class v2, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AuthToken;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 400
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthToken;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 410
    :goto_0
    return-object p0

    .line 401
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AuthToken;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AuthToken;->getType()Lcom/google/googlex/glass/common/proto/AuthTokenType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->setType(Lcom/google/googlex/glass/common/proto/AuthTokenType;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    .line 404
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AuthToken;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    .line 406
    #getter for: Lcom/google/googlex/glass/common/proto/AuthToken;->value_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AuthToken;->access$600(Lcom/google/googlex/glass/common/proto/AuthToken;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    .line 407
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->onChanged()V

    .line 409
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AuthToken;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    const/4 v2, 0x0

    .line 423
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/AuthToken;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/AuthToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AuthToken;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AuthToken;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    .line 432
    :cond_0
    return-object p0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AuthToken;

    move-object v2, v0

    .line 426
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 429
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AuthToken;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 391
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AuthToken;

    if-eqz v0, :cond_0

    .line 392
    check-cast p1, Lcom/google/googlex/glass/common/proto/AuthToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AuthToken;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object p0

    .line 395
    .end local p0
    :goto_0
    return-object p0

    .line 394
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
    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

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
    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

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
    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

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
    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setType(Lcom/google/googlex/glass/common/proto/AuthTokenType;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 456
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    .line 457
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->type_:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    .line 458
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->onChanged()V

    .line 459
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 513
    if-nez p1, :cond_0

    .line 514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 516
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    .line 517
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    .line 518
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->onChanged()V

    .line 519
    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 538
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->bitField0_:I

    .line 539
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->value_:Ljava/lang/Object;

    .line 540
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->onChanged()V

    .line 541
    return-object p0
.end method
