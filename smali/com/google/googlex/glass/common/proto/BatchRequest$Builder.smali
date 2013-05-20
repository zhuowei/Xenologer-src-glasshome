.class public final Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BatchRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/BatchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/BatchRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/BatchHeader;",
            "Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;",
            "Lcom/google/googlex/glass/common/proto/BatchHeaderOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

.field private requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/RequestWrapper;",
            "Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;",
            "Lcom/google/googlex/glass/common/proto/RequestWrapperOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private request_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/RequestWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 483
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    .line 599
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    .line 334
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->maybeForceBuilderInitialization()V

    .line 335
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 483
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    .line 599
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    .line 340
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->maybeForceBuilderInitialization()V

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/BatchRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRequestIsMutable()V
    .locals 2

    .prologue
    .line 602
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    .line 604
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 606
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_BatchRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getHeaderFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/BatchHeader;",
            "Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;",
            "Lcom/google/googlex/glass/common/proto/BatchHeaderOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getRequestFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/RequestWrapper;",
            "Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;",
            "Lcom/google/googlex/glass/common/proto/RequestWrapperOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 828
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 828
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 343
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getHeaderFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 345
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getRequestFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 347
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllRequest(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/RequestWrapper;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/RequestWrapper;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 739
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 740
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 742
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 746
    :goto_0
    return-object p0

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRequest(ILcom/google/googlex/glass/common/proto/RequestWrapper$Builder;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 726
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 727
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 731
    :goto_0
    return-object p0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRequest(ILcom/google/googlex/glass/common/proto/RequestWrapper;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 694
    if-nez p2, :cond_0

    .line 695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 697
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 698
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 699
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 703
    :goto_0
    return-object p0

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRequest(Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 712
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 717
    :goto_0
    return-object p0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRequest(Lcom/google/googlex/glass/common/proto/RequestWrapper;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 677
    if-nez p1, :cond_0

    .line 678
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 680
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 681
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 686
    :goto_0
    return-object p0

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRequestBuilder()Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 2

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getRequestFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    return-object v0
.end method

.method public addRequestBuilder(I)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getRequestFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/RequestWrapper;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/BatchRequest;
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-result-object v0

    .line 384
    .local v0, result:Lcom/google/googlex/glass/common/proto/BatchRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BatchRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 387
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/BatchRequest;
    .locals 5

    .prologue
    .line 391
    new-instance v1, Lcom/google/googlex/glass/common/proto/BatchRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/BatchRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/BatchRequest$1;)V

    .line 392
    .local v1, result:Lcom/google/googlex/glass/common/proto/BatchRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 393
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 394
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 395
    or-int/lit8 v2, v2, 0x1

    .line 397
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_2

    .line 398
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    #setter for: Lcom/google/googlex/glass/common/proto/BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$502(Lcom/google/googlex/glass/common/proto/BatchRequest;Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchHeader;

    .line 402
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_3

    .line 403
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 404
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    .line 405
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 407
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/BatchRequest;->request_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$602(Lcom/google/googlex/glass/common/proto/BatchRequest;Ljava/util/List;)Ljava/util/List;

    .line 411
    :goto_1
    #setter for: Lcom/google/googlex/glass/common/proto/BatchRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$702(Lcom/google/googlex/glass/common/proto/BatchRequest;I)I

    .line 412
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onBuilt()V

    .line 413
    return-object v1

    .line 400
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/BatchHeader;

    #setter for: Lcom/google/googlex/glass/common/proto/BatchRequest;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$502(Lcom/google/googlex/glass/common/proto/BatchRequest;Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchHeader;

    goto :goto_0

    .line 409
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/BatchRequest;->request_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$602(Lcom/google/googlex/glass/common/proto/BatchRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 354
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 355
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    .line 359
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 360
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    .line 362
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 366
    :goto_1
    return-object p0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHeader()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 556
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    .line 557
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 561
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 562
    return-object p0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearRequest()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 753
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    .line 754
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 755
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 759
    :goto_0
    return-object p0

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchRequest;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

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
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/BatchRequest;
    .locals 1

    .prologue
    .line 379
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_BatchRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHeader()Lcom/google/googlex/glass/common/proto/BatchHeader;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    .line 499
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchHeader;

    goto :goto_0
.end method

.method public getHeaderBuilder()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 569
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 570
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getHeaderFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    return-object v0
.end method

.method public getHeaderOrBuilder()Lcom/google/googlex/glass/common/proto/BatchHeaderOrBuilder;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchHeaderOrBuilder;

    .line 579
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    goto :goto_0
.end method

.method public getRequest(I)Lcom/google/googlex/glass/common/proto/RequestWrapper;
    .locals 1
    .parameter "index"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/RequestWrapper;

    .line 638
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/RequestWrapper;

    goto :goto_0
.end method

.method public getRequestBuilder(I)Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getRequestFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;

    return-object v0
.end method

.method public getRequestBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getRequestFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCount()I
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 628
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getRequestList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/RequestWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 618
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestOrBuilder(I)Lcom/google/googlex/glass/common/proto/RequestWrapperOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/RequestWrapperOrBuilder;

    .line 788
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/RequestWrapperOrBuilder;

    goto :goto_0
.end method

.method public getRequestOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/RequestWrapperOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 796
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 799
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasHeader()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 490
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

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
    .line 327
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_BatchRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/BatchRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/BatchRequest;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 426
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 457
    :goto_0
    return-object p0

    .line 427
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BatchRequest;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BatchRequest;->getHeader()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeHeader(Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 431
    #getter for: Lcom/google/googlex/glass/common/proto/BatchRequest;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$600(Lcom/google/googlex/glass/common/proto/BatchRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    #getter for: Lcom/google/googlex/glass/common/proto/BatchRequest;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$600(Lcom/google/googlex/glass/common/proto/BatchRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    .line 434
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 439
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 456
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BatchRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 436
    :cond_3
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 437
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/BatchRequest;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$600(Lcom/google/googlex/glass/common/proto/BatchRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 442
    :cond_4
    #getter for: Lcom/google/googlex/glass/common/proto/BatchRequest;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$600(Lcom/google/googlex/glass/common/proto/BatchRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 444
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 445
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 446
    #getter for: Lcom/google/googlex/glass/common/proto/BatchRequest;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$600(Lcom/google/googlex/glass/common/proto/BatchRequest;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    .line 447
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 448
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$800()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->getRequestFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 452
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/BatchRequest;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchRequest;->access$600(Lcom/google/googlex/glass/common/proto/BatchRequest;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    const/4 v2, 0x0

    .line 470
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/BatchRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/BatchRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchRequest;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    .line 479
    :cond_0
    return-object p0

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchRequest;

    move-object v2, v0

    .line 473
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 476
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchRequest;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 417
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/BatchRequest;

    if-eqz v0, :cond_0

    .line 418
    check-cast p1, Lcom/google/googlex/glass/common/proto/BatchRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchRequest;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object p0

    .line 421
    .end local p0
    :goto_0
    return-object p0

    .line 420
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
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

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
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

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
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

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
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeHeader(Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 537
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchHeader;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/BatchHeader;->newBuilder(Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    .line 544
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 548
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 549
    return-object p0

    .line 542
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeRequest(I)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 766
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 767
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 768
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 772
    :goto_0
    return-object p0

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setHeader(Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 524
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->build()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    .line 525
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 529
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 530
    return-object p0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;->build()Lcom/google/googlex/glass/common/proto/BatchHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setHeader(Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 507
    if-nez p1, :cond_0

    .line 508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 510
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->header_:Lcom/google/googlex/glass/common/proto/BatchHeader;

    .line 511
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 515
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->bitField0_:I

    .line 516
    return-object p0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->headerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setRequest(ILcom/google/googlex/glass/common/proto/RequestWrapper$Builder;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 664
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 665
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 670
    :goto_0
    return-object p0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/RequestWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/RequestWrapper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setRequest(ILcom/google/googlex/glass/common/proto/RequestWrapper;)Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 647
    if-nez p2, :cond_0

    .line 648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 650
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->ensureRequestIsMutable()V

    .line 651
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->onChanged()V

    .line 656
    :goto_0
    return-object p0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchRequest$Builder;->requestBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
