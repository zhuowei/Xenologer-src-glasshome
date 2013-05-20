.class public final Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BatchResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/BatchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/BatchResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper;",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapperOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private response_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    .line 316
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->maybeForceBuilderInitialization()V

    .line 317
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    .line 322
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->maybeForceBuilderInitialization()V

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/BatchResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 1

    .prologue
    .line 298
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureResponseIsMutable()V
    .locals 2

    .prologue
    .line 448
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    .line 450
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    .line 452
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_BatchResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getResponseFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper;",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapperOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 763
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 764
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    iget v3, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 764
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->getResponseFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllResponse(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/ResponseWrapper;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 636
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 638
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->onChanged()V

    .line 642
    :goto_0
    return-object p0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addResponse(ILcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 617
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 618
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->onChanged()V

    .line 622
    :goto_0
    return-object p0

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addResponse(ILcom/google/googlex/glass/common/proto/ResponseWrapper;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 575
    if-nez p2, :cond_0

    .line 576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 579
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 580
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->onChanged()V

    .line 584
    :goto_0
    return-object p0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addResponse(Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 598
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->onChanged()V

    .line 603
    :goto_0
    return-object p0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addResponse(Lcom/google/googlex/glass/common/proto/ResponseWrapper;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 553
    if-nez p1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 556
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 557
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->onChanged()V

    .line 562
    :goto_0
    return-object p0

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addResponseBuilder()Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 2

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->getResponseFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    return-object v0
.end method

.method public addResponseBuilder(I)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->getResponseFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/BatchResponse;
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-result-object v0

    .line 359
    .local v0, result:Lcom/google/googlex/glass/common/proto/BatchResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/BatchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 362
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/BatchResponse;
    .locals 4

    .prologue
    .line 366
    new-instance v1, Lcom/google/googlex/glass/common/proto/BatchResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlex/glass/common/proto/BatchResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/BatchResponse$1;)V

    .line 367
    .local v1, result:Lcom/google/googlex/glass/common/proto/BatchResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    .line 368
    .local v0, from_bitField0_:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 369
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 370
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    .line 371
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/BatchResponse;->response_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/BatchResponse;->access$502(Lcom/google/googlex/glass/common/proto/BatchResponse;Ljava/util/List;)Ljava/util/List;

    .line 377
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->onBuilt()V

    .line 378
    return-object v1

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/googlex/glass/common/proto/BatchResponse;->response_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/BatchResponse;->access$502(Lcom/google/googlex/glass/common/proto/BatchResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 335
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 336
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    .line 337
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    .line 341
    :goto_0
    return-object p0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearResponse()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 654
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    .line 655
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    .line 656
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->onChanged()V

    .line 660
    :goto_0
    return-object p0

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 2

    .prologue
    .line 345
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchResponse;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

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
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/BatchResponse;
    .locals 1

    .prologue
    .line 354
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_BatchResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getResponse(I)Lcom/google/googlex/glass/common/proto/ResponseWrapper;
    .locals 1
    .parameter "index"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    .line 499
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    goto :goto_0
.end method

.method public getResponseBuilder(I)Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->getResponseFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;

    return-object v0
.end method

.method public getResponseBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->getResponseFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCount()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 484
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseOrBuilder(I)Lcom/google/googlex/glass/common/proto/ResponseWrapperOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResponseWrapperOrBuilder;

    .line 704
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResponseWrapperOrBuilder;

    goto :goto_0
.end method

.method public getResponseOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapperOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 720
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 309
    sget-object v0, Lcom/google/googlex/glass/common/proto/Batch;->internal_static_googlex_glass_common_proto_BatchResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/BatchResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/BatchResponse;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 419
    :goto_0
    return-object p0

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 393
    #getter for: Lcom/google/googlex/glass/common/proto/BatchResponse;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchResponse;->access$500(Lcom/google/googlex/glass/common/proto/BatchResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    #getter for: Lcom/google/googlex/glass/common/proto/BatchResponse;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchResponse;->access$500(Lcom/google/googlex/glass/common/proto/BatchResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    .line 396
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    .line 401
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->onChanged()V

    .line 418
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BatchResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 398
    :cond_2
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 399
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/BatchResponse;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchResponse;->access$500(Lcom/google/googlex/glass/common/proto/BatchResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 404
    :cond_3
    #getter for: Lcom/google/googlex/glass/common/proto/BatchResponse;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchResponse;->access$500(Lcom/google/googlex/glass/common/proto/BatchResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 406
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 407
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 408
    #getter for: Lcom/google/googlex/glass/common/proto/BatchResponse;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchResponse;->access$500(Lcom/google/googlex/glass/common/proto/BatchResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    .line 409
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->bitField0_:I

    .line 410
    invoke-static {}, Lcom/google/googlex/glass/common/proto/BatchResponse;->access$600()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->getResponseFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 414
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/BatchResponse;->response_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/BatchResponse;->access$500(Lcom/google/googlex/glass/common/proto/BatchResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    const/4 v2, 0x0

    .line 432
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/BatchResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/BatchResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchResponse;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    .line 441
    :cond_0
    return-object p0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchResponse;

    move-object v2, v0

    .line 435
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 438
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchResponse;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 382
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/BatchResponse;

    if-eqz v0, :cond_0

    .line 383
    check-cast p1, Lcom/google/googlex/glass/common/proto/BatchResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/BatchResponse;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object p0

    .line 386
    .end local p0
    :goto_0
    return-object p0

    .line 385
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
    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

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
    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

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
    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

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
    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeResponse(I)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 672
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 673
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 674
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->onChanged()V

    .line 678
    :goto_0
    return-object p0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setResponse(ILcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 536
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->onChanged()V

    .line 541
    :goto_0
    return-object p0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$Builder;->build()Lcom/google/googlex/glass/common/proto/ResponseWrapper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setResponse(ILcom/google/googlex/glass/common/proto/ResponseWrapper;)Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 513
    if-nez p2, :cond_0

    .line 514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 516
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->ensureResponseIsMutable()V

    .line 517
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->response_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->onChanged()V

    .line 522
    :goto_0
    return-object p0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchResponse$Builder;->responseBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
