.class public final Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "WipeConfirmationRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/WipeConfirmationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/WipeConfirmationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private email_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 499
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    .line 381
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 382
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 499
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    .line 387
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 388
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1

    .prologue
    .line 394
    new-instance v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEmailIsMutable()V
    .locals 2

    .prologue
    .line 607
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 608
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    .line 609
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 611
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_WipeConfirmationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllEmail(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 697
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->ensureEmailIsMutable()V

    .line 698
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 700
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 701
    return-object p0
.end method

.method public addEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 680
    if-nez p1, :cond_0

    .line 681
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 683
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->ensureEmailIsMutable()V

    .line 684
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 686
    return-object p0
.end method

.method public addEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 725
    if-nez p1, :cond_0

    .line 726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->ensureEmailIsMutable()V

    .line 729
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 730
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 731
    return-object p0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    .locals 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    .line 421
    .local v0, result:Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 424
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    .locals 5

    .prologue
    .line 428
    new-instance v1, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$1;)V

    .line 429
    .local v1, result:Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 430
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 431
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 432
    or-int/lit8 v2, v2, 0x1

    .line 434
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$502(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget v3, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 436
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    .line 438
    iget v3, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 440
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->email_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$602(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 441
    #setter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$702(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;I)I

    .line 442
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onBuilt()V

    .line 443
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 399
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 400
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 401
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    .line 402
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 403
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 582
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 583
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 584
    return-object p0
.end method

.method public clearEmail()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1

    .prologue
    .line 711
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    .line 712
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 713
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 714
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

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
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_WipeConfirmationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 520
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 521
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 522
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 524
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 530
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 543
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 544
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 545
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 548
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 551
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

.method public getEmail(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEmailBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 509
    iget v1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

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
    .line 374
    sget-object v0, Lcom/google/googlex/glass/common/proto/Admin;->internal_static_googlex_glass_common_proto_WipeConfirmationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 456
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 473
    :goto_0
    return-object p0

    .line 457
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 459
    #getter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$500(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 460
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 462
    :cond_1
    #getter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->email_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$600(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    #getter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->email_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$600(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    .line 465
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 470
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 472
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 467
    :cond_3
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->ensureEmailIsMutable()V

    .line 468
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->email_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->access$600(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    const/4 v2, 0x0

    .line 486
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    .line 495
    :cond_0
    return-object p0

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    move-object v2, v0

    .line 489
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 492
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 447
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    if-eqz v0, :cond_0

    .line 448
    check-cast p1, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object p0

    .line 451
    .end local p0
    :goto_0
    return-object p0

    .line 450
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
    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

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
    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

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
    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

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
    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 567
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 568
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 569
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 570
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 596
    if-nez p1, :cond_0

    .line 597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 599
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->bitField0_:I

    .line 600
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 601
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 602
    return-object p0
.end method

.method public setEmail(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 663
    if-nez p2, :cond_0

    .line 664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->ensureEmailIsMutable()V

    .line 667
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->email_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationRequest$Builder;->onChanged()V

    .line 669
    return-object p0
.end method
