.class public final Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BatchHeader.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/BatchHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/BatchHeaderOrBuilder;"
    }
.end annotation


# instance fields
.field private authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/AuthToken;",
            "Lcom/google/googlex/glass/common/proto/AuthToken$Builder;",
            "Lcom/google/googlex/glass/common/proto/AuthTokenOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private authToken_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/AuthToken;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private dispatcherId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 496
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    .line 356
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->maybeForceBuilderInitialization()V

    .line 357
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 496
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    .line 362
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->maybeForceBuilderInitialization()V

    .line 363
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/BatchHeader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->create()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAuthTokenIsMutable()V
    .locals 2

    .prologue
    .line 499
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    .line 501
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    .line 503
    :cond_0
    return-void
.end method

.method private getAuthTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/AuthToken;",
            "Lcom/google/googlex/glass/common/proto/AuthToken$Builder;",
            "Lcom/google/googlex/glass/common/proto/AuthTokenOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 796
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 797
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    iget v3, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 803
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 797
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 344
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_BatchHeader_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 365
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->getAuthTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 368
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllAuthToken(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/AuthToken;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;"
        }
    .end annotation

    .prologue
    .line 675
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/AuthToken;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 676
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->ensureAuthTokenIsMutable()V

    .line 677
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 679
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 683
    :goto_0
    return-object p0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAuthToken(ILcom/google/googlex/glass/common/proto/AuthToken$Builder;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->ensureAuthTokenIsMutable()V

    .line 659
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->build()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 660
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 664
    :goto_0
    return-object p0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->build()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAuthToken(ILcom/google/googlex/glass/common/proto/AuthToken;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 619
    if-nez p2, :cond_0

    .line 620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 622
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->ensureAuthTokenIsMutable()V

    .line 623
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 624
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 628
    :goto_0
    return-object p0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAuthToken(Lcom/google/googlex/glass/common/proto/AuthToken$Builder;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->ensureAuthTokenIsMutable()V

    .line 641
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->build()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 646
    :goto_0
    return-object p0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->build()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAuthToken(Lcom/google/googlex/glass/common/proto/AuthToken;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 598
    if-nez p1, :cond_0

    .line 599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 601
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->ensureAuthTokenIsMutable()V

    .line 602
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 607
    :goto_0
    return-object p0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAuthTokenBuilder()Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 2

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->getAuthTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthToken;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    return-object v0
.end method

.method public addAuthTokenBuilder(I)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->getAuthTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthToken;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/BatchHeader;
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    .line 401
    .local v0, result:Lcom/google/googlex/glass/common/proto/BatchHeader;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BatchHeader;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 404
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->build()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->build()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/BatchHeader;
    .locals 5

    .prologue
    .line 408
    new-instance v1, Lcom/google/googlex/glass/common/proto/BatchHeader;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/BatchHeader;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/BatchHeader$1;)V

    .line 409
    .local v1, result:Lcom/google/googlex/glass/common/proto/BatchHeader;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    .line 410
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 411
    .local v2, to_bitField0_:I
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_2

    .line 412
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 413
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    .line 414
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    .line 416
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/BatchHeader;->authToken_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$502(Lcom/google/googlex/glass/common/proto/BatchHeader;Ljava/util/List;)Ljava/util/List;

    .line 420
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 421
    or-int/lit8 v2, v2, 0x1

    .line 423
    :cond_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->dispatcherId_:J

    #setter for: Lcom/google/googlex/glass/common/proto/BatchHeader;->dispatcherId_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$602(Lcom/google/googlex/glass/common/proto/BatchHeader;J)J

    .line 424
    #setter for: Lcom/google/googlex/glass/common/proto/BatchHeader;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$702(Lcom/google/googlex/glass/common/proto/BatchHeader;I)I

    .line 425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onBuilt()V

    .line 426
    return-object v1

    .line 418
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/BatchHeader;->authToken_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$502(Lcom/google/googlex/glass/common/proto/BatchHeader;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 2

    .prologue
    .line 374
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 375
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 376
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    .line 377
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    .line 381
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->dispatcherId_:J

    .line 382
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    .line 383
    return-object p0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthToken()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 694
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    .line 695
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    .line 696
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 700
    :goto_0
    return-object p0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearDispatcherId()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 2

    .prologue
    .line 866
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    .line 867
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->dispatcherId_:J

    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 869
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->create()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

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
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(I)Lcom/google/googlex/glass/common/proto/AuthToken;
    .locals 1
    .parameter "index"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AuthToken;

    .line 547
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AuthToken;

    goto :goto_0
.end method

.method public getAuthTokenBuilder(I)Lcom/google/googlex/glass/common/proto/AuthToken$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->getAuthTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;

    return-object v0
.end method

.method public getAuthTokenBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/AuthToken$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->getAuthTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthTokenCount()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 533
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getAuthTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/AuthToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 519
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAuthTokenOrBuilder(I)Lcom/google/googlex/glass/common/proto/AuthTokenOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AuthTokenOrBuilder;

    .line 741
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AuthTokenOrBuilder;

    goto :goto_0
.end method

.method public getAuthTokenOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/AuthTokenOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 756
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/BatchHeader;
    .locals 1

    .prologue
    .line 396
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_BatchHeader_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDispatcherId()J
    .locals 2

    .prologue
    .line 835
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->dispatcherId_:J

    return-wide v0
.end method

.method public hasDispatcherId()Z
    .locals 2

    .prologue
    .line 821
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

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
    .line 349
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_BatchHeader_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/BatchHeader;

    const-class v2, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 439
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 470
    :goto_0
    return-object p0

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 441
    #getter for: Lcom/google/googlex/glass/common/proto/BatchHeader;->authToken_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$500(Lcom/google/googlex/glass/common/proto/BatchHeader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 443
    #getter for: Lcom/google/googlex/glass/common/proto/BatchHeader;->authToken_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$500(Lcom/google/googlex/glass/common/proto/BatchHeader;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    .line 444
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    .line 449
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 466
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BatchHeader;->hasDispatcherId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BatchHeader;->getDispatcherId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->setDispatcherId(J)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    .line 469
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BatchHeader;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 446
    :cond_3
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->ensureAuthTokenIsMutable()V

    .line 447
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/BatchHeader;->authToken_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$500(Lcom/google/googlex/glass/common/proto/BatchHeader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 452
    :cond_4
    #getter for: Lcom/google/googlex/glass/common/proto/BatchHeader;->authToken_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$500(Lcom/google/googlex/glass/common/proto/BatchHeader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 454
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 455
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 456
    #getter for: Lcom/google/googlex/glass/common/proto/BatchHeader;->authToken_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$500(Lcom/google/googlex/glass/common/proto/BatchHeader;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    .line 457
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    .line 458
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$800()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->getAuthTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 462
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/BatchHeader;->authToken_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchHeader;->access$500(Lcom/google/googlex/glass/common/proto/BatchHeader;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v2, 0x0

    .line 483
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/BatchHeader;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/BatchHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    if-eqz v2, :cond_0

    .line 489
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    .line 492
    :cond_0
    return-object p0

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-object v2, v0

    .line 486
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 489
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 430
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/BatchHeader;

    if-eqz v0, :cond_0

    .line 431
    check-cast p1, Lcom/google/googlex/glass/common/proto/BatchHeader;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object p0

    .line 434
    .end local p0
    :goto_0
    return-object p0

    .line 433
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
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

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
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

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
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

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
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeAuthToken(I)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->ensureAuthTokenIsMutable()V

    .line 712
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 713
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 717
    :goto_0
    return-object p0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAuthToken(ILcom/google/googlex/glass/common/proto/AuthToken$Builder;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->ensureAuthTokenIsMutable()V

    .line 582
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->build()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 587
    :goto_0
    return-object p0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/AuthToken$Builder;->build()Lcom/google/googlex/glass/common/proto/AuthToken;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setAuthToken(ILcom/google/googlex/glass/common/proto/AuthToken;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 560
    if-nez p2, :cond_0

    .line 561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 563
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->ensureAuthTokenIsMutable()V

    .line 564
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authToken_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 569
    :goto_0
    return-object p0

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->authTokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setDispatcherId(J)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 849
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->bitField0_:I

    .line 850
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->dispatcherId_:J

    .line 851
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->onChanged()V

    .line 852
    return-object p0
.end method
