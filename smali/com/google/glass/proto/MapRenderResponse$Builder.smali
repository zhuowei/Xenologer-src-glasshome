.class public final Lcom/google/glass/proto/MapRenderResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MapRenderResponse.java"

# interfaces
.implements Lcom/google/glass/proto/MapRenderResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/glass/proto/MapRenderResponse$Builder;",
        ">;",
        "Lcom/google/glass/proto/MapRenderResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private image_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 458
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 345
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->maybeForceBuilderInitialization()V

    .line 346
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 458
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 351
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->maybeForceBuilderInitialization()V

    .line 352
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/glass/proto/MapRenderResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/google/glass/proto/MapRenderResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-static {}, Lcom/google/glass/proto/MapRenderResponse$Builder;->create()Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/google/glass/proto/MapRenderResponse$Builder;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 354
    invoke-static {}, Lcom/google/glass/proto/MapRenderResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/proto/MapRenderResponse;
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->buildPartial()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v0

    .line 385
    .local v0, result:Lcom/google/glass/proto/MapRenderResponse;
    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-static {v0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 388
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->build()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->build()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/proto/MapRenderResponse;
    .locals 5

    .prologue
    .line 392
    new-instance v1, Lcom/google/glass/proto/MapRenderResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/proto/MapRenderResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/glass/proto/MapRenderResponse$1;)V

    .line 393
    .local v1, result:Lcom/google/glass/proto/MapRenderResponse;
    iget v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    .line 394
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 395
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 396
    or-int/lit8 v2, v2, 0x1

    .line 398
    :cond_0
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/proto/MapRenderResponse;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderResponse;->access$502(Lcom/google/glass/proto/MapRenderResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 400
    or-int/lit8 v2, v2, 0x2

    .line 402
    :cond_1
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/glass/proto/MapRenderResponse;->image_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderResponse;->access$602(Lcom/google/glass/proto/MapRenderResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 403
    #setter for: Lcom/google/glass/proto/MapRenderResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/proto/MapRenderResponse;->access$702(Lcom/google/glass/proto/MapRenderResponse;I)I

    .line 404
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->onBuilt()V

    .line 405
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->buildPartial()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->buildPartial()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    .line 364
    iget v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    .line 365
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 366
    iget v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    .line 367
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->clear()Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->clear()Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->clear()Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->clear()Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    .line 533
    invoke-static {}, Lcom/google/glass/proto/MapRenderResponse;->getDefaultInstance()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderResponse;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    .line 534
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->onChanged()V

    .line 535
    return-object p0
.end method

.method public clearImage()Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    .line 601
    invoke-static {}, Lcom/google/glass/proto/MapRenderResponse;->getDefaultInstance()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderResponse;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 602
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->onChanged()V

    .line 603
    return-object p0
.end method

.method public clone()Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/google/glass/proto/MapRenderResponse$Builder;->create()Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->buildPartial()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/proto/MapRenderResponse$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderResponse;)Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->clone()Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->clone()Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->clone()Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->clone()Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->clone()Lcom/google/glass/proto/MapRenderResponse$Builder;

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
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->clone()Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderResponse;
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Lcom/google/glass/proto/MapRenderResponse;->getDefaultInstance()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    .line 478
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 479
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    .line 484
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

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 496
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    .line 497
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 498
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 501
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    .line 504
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

.method public getImage()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 467
    iget v1, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 2

    .prologue
    .line 564
    iget v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

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
    .line 338
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/glass/proto/MapRenderResponse;

    const-class v2, Lcom/google/glass/proto/MapRenderResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 436
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/proto/MapRenderResponse;)Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 418
    invoke-static {}, Lcom/google/glass/proto/MapRenderResponse;->getDefaultInstance()Lcom/google/glass/proto/MapRenderResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 428
    :goto_0
    return-object p0

    .line 419
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderResponse;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    .line 421
    #getter for: Lcom/google/glass/proto/MapRenderResponse;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderResponse;->access$500(Lcom/google/glass/proto/MapRenderResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    .line 422
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->onChanged()V

    .line 424
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderResponse;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderResponse;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->setImage(Lcom/google/protobuf/ByteString;)Lcom/google/glass/proto/MapRenderResponse$Builder;

    .line 427
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    const/4 v2, 0x0

    .line 445
    .local v2, parsedMessage:Lcom/google/glass/proto/MapRenderResponse;
    :try_start_0
    sget-object v3, Lcom/google/glass/proto/MapRenderResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/proto/MapRenderResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/MapRenderResponse$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderResponse;)Lcom/google/glass/proto/MapRenderResponse$Builder;

    .line 454
    :cond_0
    return-object p0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/proto/MapRenderResponse;

    move-object v2, v0

    .line 448
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 451
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/MapRenderResponse$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderResponse;)Lcom/google/glass/proto/MapRenderResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 409
    instance-of v0, p1, Lcom/google/glass/proto/MapRenderResponse;

    if-eqz v0, :cond_0

    .line 410
    check-cast p1, Lcom/google/glass/proto/MapRenderResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderResponse$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderResponse;)Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object p0

    .line 413
    .end local p0
    :goto_0
    return-object p0

    .line 412
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
    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/MapRenderResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/MapRenderResponse$Builder;

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
    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/MapRenderResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderResponse$Builder;

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
    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/MapRenderResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/MapRenderResponse$Builder;

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
    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/MapRenderResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 519
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    .line 520
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    .line 521
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->onChanged()V

    .line 522
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 549
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    .line 550
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->id_:Ljava/lang/Object;

    .line 551
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->onChanged()V

    .line 552
    return-object p0
.end method

.method public setImage(Lcom/google/protobuf/ByteString;)Lcom/google/glass/proto/MapRenderResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 584
    if-nez p1, :cond_0

    .line 585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 587
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->bitField0_:I

    .line 588
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 589
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderResponse$Builder;->onChanged()V

    .line 590
    return-object p0
.end method
