.class public final Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GetTimeZoneResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GetTimeZoneResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/GetTimeZoneResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private reverseSuccessful_:Z

.field private timeZone_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    .line 343
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->maybeForceBuilderInitialization()V

    .line 344
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    .line 349
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->maybeForceBuilderInitialization()V

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timezone;->internal_static_googlex_glass_common_proto_GetTimeZoneResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v0

    .line 383
    .local v0, result:Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 386
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 5

    .prologue
    .line 390
    new-instance v1, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$1;)V

    .line 391
    .local v1, result:Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    .line 392
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 393
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 394
    or-int/lit8 v2, v2, 0x1

    .line 396
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->timeZone_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->access$502(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 398
    or-int/lit8 v2, v2, 0x2

    .line 400
    :cond_1
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->reverseSuccessful_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->reverseSuccessful_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->access$602(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;Z)Z

    .line 401
    #setter for: Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->access$702(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;I)I

    .line 402
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->onBuilt()V

    .line 403
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    .line 362
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->reverseSuccessful_:Z

    .line 364
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    .line 365
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearReverseSuccessful()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->reverseSuccessful_:Z

    .line 593
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->onChanged()V

    .line 594
    return-object p0
.end method

.method public clearTimeZone()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    .line 527
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    .line 528
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->onChanged()V

    .line 529
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

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
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    .locals 1

    .prologue
    .line 378
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timezone;->internal_static_googlex_glass_common_proto_GetTimeZoneResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getReverseSuccessful()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->reverseSuccessful_:Z

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    .line 472
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 473
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    .line 478
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

.method public getTimeZoneBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 490
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    .line 491
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 492
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 495
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    .line 498
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

.method public hasReverseSuccessful()Z
    .locals 2

    .prologue
    .line 558
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

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

.method public hasTimeZone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 461
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

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
    .line 336
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timezone;->internal_static_googlex_glass_common_proto_GetTimeZoneResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 416
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 426
    :goto_0
    return-object p0

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    .line 419
    #getter for: Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->timeZone_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->access$500(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    .line 420
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->onChanged()V

    .line 422
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->hasReverseSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getReverseSuccessful()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->setReverseSuccessful(Z)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    .line 425
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    const/4 v2, 0x0

    .line 439
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    if-eqz v2, :cond_0

    .line 445
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    .line 448
    :cond_0
    return-object p0

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    move-object v2, v0

    .line 442
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 445
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 407
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    if-eqz v0, :cond_0

    .line 408
    check-cast p1, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object p0

    .line 411
    .end local p0
    :goto_0
    return-object p0

    .line 410
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
    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

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
    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

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
    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

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
    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setReverseSuccessful(Z)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 578
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    .line 579
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->reverseSuccessful_:Z

    .line 580
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->onChanged()V

    .line 581
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 513
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    .line 514
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    .line 515
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->onChanged()V

    .line 516
    return-object p0
.end method

.method public setTimeZoneBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 540
    if-nez p1, :cond_0

    .line 541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 543
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->bitField0_:I

    .line 544
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->timeZone_:Ljava/lang/Object;

    .line 545
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetTimeZoneResponse$Builder;->onChanged()V

    .line 546
    return-object p0
.end method
