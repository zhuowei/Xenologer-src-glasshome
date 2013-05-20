.class public final Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ShareTargetResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ShareTargetResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ShareTargetResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

.field private targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private targets_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 553
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    .line 588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    .line 413
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->maybeForceBuilderInitialization()V

    .line 414
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 553
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    .line 588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    .line 419
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->maybeForceBuilderInitialization()V

    .line 420
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ShareTargetResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1

    .prologue
    .line 427
    new-instance v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTargetsIsMutable()V
    .locals 2

    .prologue
    .line 591
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    .line 593
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    .line 595
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sharetargetquery;->internal_static_googlex_glass_common_proto_ShareTargetResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getTargetsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 817
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 817
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 422
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->getTargetsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 425
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllTargets(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Entity;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 728
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->ensureTargetsIsMutable()V

    .line 729
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 731
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 735
    :goto_0
    return-object p0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTargets(ILcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 714
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->ensureTargetsIsMutable()V

    .line 715
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 716
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 720
    :goto_0
    return-object p0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTargets(ILcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 683
    if-nez p2, :cond_0

    .line 684
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 686
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->ensureTargetsIsMutable()V

    .line 687
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 692
    :goto_0
    return-object p0

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTargets(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->ensureTargetsIsMutable()V

    .line 701
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 706
    :goto_0
    return-object p0

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTargets(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 666
    if-nez p1, :cond_0

    .line 667
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->ensureTargetsIsMutable()V

    .line 670
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 675
    :goto_0
    return-object p0

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTargetsBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->getTargetsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    return-object v0
.end method

.method public addTargetsBuilder(I)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->getTargetsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 2

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-result-object v0

    .line 458
    .local v0, result:Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 461
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 5

    .prologue
    .line 465
    new-instance v1, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ShareTargetResponse$1;)V

    .line 466
    .local v1, result:Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    .line 467
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 468
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 469
    or-int/lit8 v2, v2, 0x1

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    #setter for: Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$502(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    .line 472
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_2

    .line 473
    iget v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 474
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    .line 475
    iget v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    .line 477
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$602(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;Ljava/util/List;)Ljava/util/List;

    .line 481
    :goto_0
    #setter for: Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$702(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;I)I

    .line 482
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onBuilt()V

    .line 483
    return-object v1

    .line 479
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$602(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1

    .prologue
    .line 431
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 432
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    .line 433
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    .line 434
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 435
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    .line 436
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    .line 440
    :goto_0
    return-object p0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    .line 583
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    .line 584
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 585
    return-object p0
.end method

.method public clearTargets()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 742
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    .line 743
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    .line 744
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 748
    :goto_0
    return-object p0

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 2

    .prologue
    .line 444
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

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
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1

    .prologue
    .line 453
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sharetargetquery;->internal_static_googlex_glass_common_proto_ShareTargetResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    return-object v0
.end method

.method public getTargets(I)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "index"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 627
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0
.end method

.method public getTargetsBuilder(I)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->getTargetsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    return-object v0
.end method

.method public getTargetsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->getTargetsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargetsCount()I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 617
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getTargetsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 607
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTargetsOrBuilder(I)Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntityOrBuilder;

    .line 777
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntityOrBuilder;

    goto :goto_0
.end method

.method public getTargetsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 788
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 558
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

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
    .line 406
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sharetargetquery;->internal_static_googlex_glass_common_proto_ShareTargetResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 496
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 527
    :goto_0
    return-object p0

    .line 497
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->hasResponseCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->setResponseCode(Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 501
    #getter for: Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$600(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    #getter for: Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$600(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    .line 504
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    .line 509
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 526
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 506
    :cond_3
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->ensureTargetsIsMutable()V

    .line 507
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$600(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 512
    :cond_4
    #getter for: Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$600(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 513
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 514
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 515
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 516
    #getter for: Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$600(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    .line 517
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    .line 518
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$800()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->getTargetsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 522
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->access$600(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    const/4 v2, 0x0

    .line 540
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    .line 549
    :cond_0
    return-object p0

    .line 541
    :catch_0
    move-exception v1

    .line 542
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-object v2, v0

    .line 543
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 546
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 487
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    if-eqz v0, :cond_0

    .line 488
    check-cast p1, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object p0

    .line 491
    .end local p0
    :goto_0
    return-object p0

    .line 490
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
    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

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
    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

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
    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

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
    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeTargets(I)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 755
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->ensureTargetsIsMutable()V

    .line 756
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 761
    :goto_0
    return-object p0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setResponseCode(Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 573
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->bitField0_:I

    .line 574
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 576
    return-object p0
.end method

.method public setTargets(ILcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->ensureTargetsIsMutable()V

    .line 654
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 659
    :goto_0
    return-object p0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTargets(ILcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 636
    if-nez p2, :cond_0

    .line 637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 639
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->ensureTargetsIsMutable()V

    .line 640
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targets_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->onChanged()V

    .line 645
    :goto_0
    return-object p0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->targetsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
