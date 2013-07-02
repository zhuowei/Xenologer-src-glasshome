.class public final Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AttachmentGetRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private heightPixels_:I

.field private widthPixels_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 434
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->maybeForceBuilderInitialization()V

    .line 435
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 440
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->maybeForceBuilderInitialization()V

    .line 441
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    .line 474
    .local v0, result:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 477
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    .locals 5

    .prologue
    .line 481
    new-instance v1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$1;)V

    .line 482
    .local v1, result:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    .line 483
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 484
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 485
    or-int/lit8 v2, v2, 0x1

    .line 487
    :cond_0
    iget v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->widthPixels_:I

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->widthPixels_:I
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->access$602(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;I)I

    .line 488
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 489
    or-int/lit8 v2, v2, 0x2

    .line 491
    :cond_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->heightPixels_:I

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->heightPixels_:I
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->access$702(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;I)I

    .line 492
    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->access$802(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;I)I

    .line 493
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->onBuilt()V

    .line 494
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 452
    iput v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->widthPixels_:I

    .line 453
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    .line 454
    iput v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->heightPixels_:I

    .line 455
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    .line 456
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHeightPixels()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    .line 600
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->heightPixels_:I

    .line 601
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->onChanged()V

    .line 602
    return-object p0
.end method

.method public clearWidthPixels()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->widthPixels_:I

    .line 569
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->onChanged()V

    .line 570
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 2

    .prologue
    .line 460
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

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
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 469
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->heightPixels_:I

    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->widthPixels_:I

    return v0
.end method

.method public hasHeightPixels()Z
    .locals 2

    .prologue
    .line 578
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

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

.method public hasWidthPixels()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 546
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

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
    .line 427
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    const-class v2, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 507
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 515
    :goto_0
    return-object p0

    .line 508
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->hasWidthPixels()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getWidthPixels()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->setWidthPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    .line 511
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->hasHeightPixels()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getHeightPixels()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->setHeightPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    .line 514
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    const/4 v2, 0x0

    .line 528
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    if-eqz v2, :cond_0

    .line 534
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    .line 537
    :cond_0
    return-object p0

    .line 529
    :catch_0
    move-exception v1

    .line 530
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-object v2, v0

    .line 531
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 534
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 498
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    if-eqz v0, :cond_0

    .line 499
    check-cast p1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object p0

    .line 502
    .end local p0
    :goto_0
    return-object p0

    .line 501
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
    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

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
    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

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
    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

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
    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHeightPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 590
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    .line 591
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->heightPixels_:I

    .line 592
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->onChanged()V

    .line 593
    return-object p0
.end method

.method public setWidthPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 558
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->bitField0_:I

    .line 559
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->widthPixels_:I

    .line 560
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->onChanged()V

    .line 561
    return-object p0
.end method
