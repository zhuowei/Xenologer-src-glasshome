.class public final Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ImageDownloadResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ImageDownloadResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ImageDownloadResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private image_:Lcom/google/protobuf/ByteString;

.field private status_:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 523
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 574
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    .line 416
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->maybeForceBuilderInitialization()V

    .line 417
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 523
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 574
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    .line 422
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->maybeForceBuilderInitialization()V

    .line 423
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 425
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;
    .locals 2

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-result-object v0

    .line 456
    .local v0, result:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 459
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;
    .locals 5

    .prologue
    .line 463
    new-instance v1, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$1;)V

    .line 464
    .local v1, result:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    .line 465
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 466
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 467
    or-int/lit8 v2, v2, 0x1

    .line 469
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->image_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->access$502(Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 470
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 471
    or-int/lit8 v2, v2, 0x2

    .line 473
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->status_:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->access$602(Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    .line 474
    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->access$702(Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;I)I

    .line 475
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->onBuilt()V

    .line 476
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
    .locals 1

    .prologue
    .line 433
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 434
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 435
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    .line 436
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    .line 437
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    .line 438
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearImage()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    .line 569
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 570
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->onChanged()V

    .line 571
    return-object p0
.end method

.method public clearStatus()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    .line 620
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    .line 621
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->onChanged()V

    .line 622
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

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
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getImage()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStatus()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    return-object v0
.end method

.method public hasImage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 532
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 583
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

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
    .line 409
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 489
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 497
    :goto_0
    return-object p0

    .line 490
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->setImage(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    .line 493
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->setStatus(Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    .line 496
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    const/4 v2, 0x0

    .line 510
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    if-eqz v2, :cond_0

    .line 516
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    .line 519
    :cond_0
    return-object p0

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    move-object v2, v0

    .line 513
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 516
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 480
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    if-eqz v0, :cond_0

    .line 481
    check-cast p1, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadResponse;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object p0

    .line 484
    .end local p0
    :goto_0
    return-object p0

    .line 483
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
    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

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
    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

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
    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

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
    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setImage(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 552
    if-nez p1, :cond_0

    .line 553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 555
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    .line 556
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 557
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->onChanged()V

    .line 558
    return-object p0
.end method

.method public setStatus(Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;)Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 606
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->bitField0_:I

    .line 607
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Status;

    .line 608
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadResponse$Builder;->onChanged()V

    .line 609
    return-object p0
.end method
