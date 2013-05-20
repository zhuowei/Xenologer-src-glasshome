.class public final Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "EntitySyncResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/EntitySyncResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/EntitySyncResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/EntitySyncResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
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

.field private entities_:Ljava/util/List;
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
    .line 290
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 420
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    .line 291
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->maybeForceBuilderInitialization()V

    .line 292
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 420
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    .line 297
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->maybeForceBuilderInitialization()V

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/EntitySyncResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEntitiesIsMutable()V
    .locals 2

    .prologue
    .line 423
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    .line 425
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    .line 427
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySync;->internal_static_googlex_glass_common_proto_EntitySyncResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getEntitiesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
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
    const/4 v0, 0x1

    .line 648
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 649
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    iget v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 649
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->getEntitiesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllEntities(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Entity;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->ensureEntitiesIsMutable()V

    .line 561
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 563
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->onChanged()V

    .line 567
    :goto_0
    return-object p0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addEntities(ILcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->ensureEntitiesIsMutable()V

    .line 547
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 548
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->onChanged()V

    .line 552
    :goto_0
    return-object p0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addEntities(ILcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 515
    if-nez p2, :cond_0

    .line 516
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->ensureEntitiesIsMutable()V

    .line 519
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 520
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->onChanged()V

    .line 524
    :goto_0
    return-object p0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addEntities(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->ensureEntitiesIsMutable()V

    .line 533
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->onChanged()V

    .line 538
    :goto_0
    return-object p0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addEntities(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 498
    if-nez p1, :cond_0

    .line 499
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 501
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->ensureEntitiesIsMutable()V

    .line 502
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->onChanged()V

    .line 507
    :goto_0
    return-object p0

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addEntitiesBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->getEntitiesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    return-object v0
.end method

.method public addEntitiesBuilder(I)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->getEntitiesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-result-object v0

    .line 334
    .local v0, result:Lcom/google/googlex/glass/common/proto/EntitySyncResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 337
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;
    .locals 4

    .prologue
    .line 341
    new-instance v1, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/EntitySyncResponse$1;)V

    .line 342
    .local v1, result:Lcom/google/googlex/glass/common/proto/EntitySyncResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    .line 343
    .local v0, from_bitField0_:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 344
    iget v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 345
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    .line 346
    iget v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->entities_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->access$502(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;Ljava/util/List;)Ljava/util/List;

    .line 352
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->onBuilt()V

    .line 353
    return-object v1

    .line 350
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->entities_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->access$502(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 310
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    .line 312
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    .line 316
    :goto_0
    return-object p0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEntities()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    .line 575
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    .line 576
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->onChanged()V

    .line 580
    :goto_0
    return-object p0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 2

    .prologue
    .line 320
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

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
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySync;->internal_static_googlex_glass_common_proto_EntitySyncResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEntities(I)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "index"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 459
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0
.end method

.method public getEntitiesBuilder(I)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->getEntitiesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    return-object v0
.end method

.method public getEntitiesBuilderList()Ljava/util/List;
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
    .line 643
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->getEntitiesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntitiesCount()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 449
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getEntitiesList()Ljava/util/List;
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
    .line 436
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 439
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntitiesOrBuilder(I)Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntityOrBuilder;

    .line 609
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntityOrBuilder;

    goto :goto_0
.end method

.method public getEntitiesOrBuilderList()Ljava/util/List;
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
    .line 617
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 284
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySync;->internal_static_googlex_glass_common_proto_EntitySyncResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 394
    :goto_0
    return-object p0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 368
    #getter for: Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->entities_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->access$500(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    #getter for: Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->entities_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->access$500(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    .line 371
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    .line 376
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->onChanged()V

    .line 393
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 373
    :cond_2
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->ensureEntitiesIsMutable()V

    .line 374
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->entities_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->access$500(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 379
    :cond_3
    #getter for: Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->entities_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->access$500(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 381
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 382
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 383
    #getter for: Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->entities_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->access$500(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    .line 384
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->bitField0_:I

    .line 385
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->access$600()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->getEntitiesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 389
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->entities_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->access$500(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    const/4 v2, 0x0

    .line 407
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/EntitySyncResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    if-eqz v2, :cond_0

    .line 413
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    .line 416
    :cond_0
    return-object p0

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    move-object v2, v0

    .line 410
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 413
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 357
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    if-eqz v0, :cond_0

    .line 358
    check-cast p1, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object p0

    .line 361
    .end local p0
    :goto_0
    return-object p0

    .line 360
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
    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

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
    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

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
    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

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
    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeEntities(I)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->ensureEntitiesIsMutable()V

    .line 588
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->onChanged()V

    .line 593
    :goto_0
    return-object p0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setEntities(ILcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->ensureEntitiesIsMutable()V

    .line 486
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->onChanged()V

    .line 491
    :goto_0
    return-object p0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setEntities(ILcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 468
    if-nez p2, :cond_0

    .line 469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->ensureEntitiesIsMutable()V

    .line 472
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entities_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->onChanged()V

    .line 477
    :goto_0
    return-object p0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncResponse$Builder;->entitiesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
