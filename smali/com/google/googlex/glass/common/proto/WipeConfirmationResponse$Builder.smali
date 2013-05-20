.class public final Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "WipeConfirmationResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/WipeConfirmationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/WipeConfirmationResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

.field private wipeExternalStorage_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 507
    sget-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->PROCEED:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    .line 400
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 401
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 507
    sget-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->PROCEED:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    .line 406
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 407
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_WipeConfirmationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-result-object v0

    .line 440
    .local v0, result:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 443
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;
    .locals 5

    .prologue
    .line 447
    new-instance v1, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$1;)V

    .line 448
    .local v1, result:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    .line 449
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 450
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 451
    or-int/lit8 v2, v2, 0x1

    .line 453
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    #setter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->status_:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->access$502(Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    .line 454
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 455
    or-int/lit8 v2, v2, 0x2

    .line 457
    :cond_1
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->wipeExternalStorage_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->wipeExternalStorage_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->access$602(Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;Z)Z

    .line 458
    #setter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->access$702(Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;I)I

    .line 459
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->onBuilt()V

    .line 460
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
    .locals 1

    .prologue
    .line 417
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 418
    sget-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->PROCEED:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    .line 419
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->wipeExternalStorage_:Z

    .line 421
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    .line 422
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearStatus()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    .line 553
    sget-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->PROCEED:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    .line 554
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->onChanged()V

    .line 555
    return-object p0
.end method

.method public clearWipeExternalStorage()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->wipeExternalStorage_:Z

    .line 602
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->onChanged()V

    .line 603
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
    .locals 2

    .prologue
    .line 426
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

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
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_WipeConfirmationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getStatus()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    return-object v0
.end method

.method public getWipeExternalStorage()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->wipeExternalStorage_:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 516
    iget v1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWipeExternalStorage()Z
    .locals 2

    .prologue
    .line 567
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

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
    .line 393
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_WipeConfirmationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 473
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 481
    :goto_0
    return-object p0

    .line 474
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->getStatus()Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->setStatus(Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    .line 477
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->hasWipeExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->getWipeExternalStorage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->setWipeExternalStorage(Z)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    .line 480
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v2, 0x0

    .line 494
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    .line 503
    :cond_0
    return-object p0

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    move-object v2, v0

    .line 497
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 500
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 464
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    if-eqz v0, :cond_0

    .line 465
    check-cast p1, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object p0

    .line 468
    .end local p0
    :goto_0
    return-object p0

    .line 467
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
    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

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
    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

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
    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

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
    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setStatus(Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 536
    if-nez p1, :cond_0

    .line 537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 539
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    .line 540
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->status_:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    .line 541
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->onChanged()V

    .line 542
    return-object p0
.end method

.method public setWipeExternalStorage(Z)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 587
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->bitField0_:I

    .line 588
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->wipeExternalStorage_:Z

    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Builder;->onChanged()V

    .line 590
    return-object p0
.end method
