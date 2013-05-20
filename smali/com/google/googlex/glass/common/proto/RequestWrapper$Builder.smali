.class public final Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "RequestWrapper.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/RequestWrapperOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/RequestWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/RequestWrapperOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private path_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 341
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->maybeForceBuilderInitialization()V

    .line 342
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 347
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->maybeForceBuilderInitialization()V

    .line 348
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/RequestWrapper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->create()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 1

    .prologue
    .line 354
    new-instance v0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_RequestWrapper_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/RequestWrapper;
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v0

    .line 381
    .local v0, result:Lcom/google/googlex/glass/common/proto/RequestWrapper;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 384
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/RequestWrapper;
    .locals 5

    .prologue
    .line 388
    new-instance v1, Lcom/google/googlex/glass/common/proto/RequestWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/RequestWrapper;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/RequestWrapper$1;)V

    .line 389
    .local v1, result:Lcom/google/googlex/glass/common/proto/RequestWrapper;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    .line 390
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 391
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 392
    or-int/lit8 v2, v2, 0x1

    .line 394
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/RequestWrapper;->path_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->access$502(Lcom/google/googlex/glass/common/proto/RequestWrapper;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 396
    or-int/lit8 v2, v2, 0x2

    .line 398
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/RequestWrapper;->data_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->access$602(Lcom/google/googlex/glass/common/proto/RequestWrapper;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 399
    #setter for: Lcom/google/googlex/glass/common/proto/RequestWrapper;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->access$702(Lcom/google/googlex/glass/common/proto/RequestWrapper;I)I

    .line 400
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->onBuilt()V

    .line 401
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 359
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    .line 360
    iget v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    .line 361
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 362
    iget v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    .line 363
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->clear()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->clear()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->clear()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->clear()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearData()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    .line 593
    invoke-static {}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 594
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->onChanged()V

    .line 595
    return-object p0
.end method

.method public clearPath()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    .line 525
    invoke-static {}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    .line 526
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->onChanged()V

    .line 527
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->create()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/RequestWrapper;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

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
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->clone()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/RequestWrapper;
    .locals 1

    .prologue
    .line 376
    invoke-static {}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_RequestWrapper_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    .line 470
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 471
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    .line 476
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

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 488
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    .line 489
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 490
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 493
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    .line 496
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

.method public hasData()Z
    .locals 2

    .prologue
    .line 556
    iget v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

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

.method public hasPath()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 459
    iget v1, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

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
    .line 334
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_RequestWrapper_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/RequestWrapper;

    const-class v2, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/RequestWrapper;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 414
    invoke-static {}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 424
    :goto_0
    return-object p0

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->hasPath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    .line 417
    #getter for: Lcom/google/googlex/glass/common/proto/RequestWrapper;->path_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->access$500(Lcom/google/googlex/glass/common/proto/RequestWrapper;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    .line 418
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->onChanged()V

    .line 420
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    .line 423
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    const/4 v2, 0x0

    .line 437
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/RequestWrapper;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/RequestWrapper;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/RequestWrapper;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    .line 446
    :cond_0
    return-object p0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-object v2, v0

    .line 440
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 443
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/RequestWrapper;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 405
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/RequestWrapper;

    if-eqz v0, :cond_0

    .line 406
    check-cast p1, Lcom/google/googlex/glass/common/proto/RequestWrapper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/RequestWrapper;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object p0

    .line 409
    .end local p0
    :goto_0
    return-object p0

    .line 408
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
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

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
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

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
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

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
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 576
    if-nez p1, :cond_0

    .line 577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 579
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    .line 580
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 581
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->onChanged()V

    .line 582
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 511
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    .line 512
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    .line 513
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->onChanged()V

    .line 514
    return-object p0
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 538
    if-nez p1, :cond_0

    .line 539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 541
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->bitField0_:I

    .line 542
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->path_:Ljava/lang/Object;

    .line 543
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->onChanged()V

    .line 544
    return-object p0
.end method
