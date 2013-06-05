.class public final Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GlasswareRegistry.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GlasswareRegistryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/GlasswareRegistryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntryOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private registryEntries_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 432
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    .line 303
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->maybeForceBuilderInitialization()V

    .line 304
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 432
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    .line 309
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->maybeForceBuilderInitialization()V

    .line 310
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareRegistry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRegistryEntriesIsMutable()V
    .locals 2

    .prologue
    .line 435
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    .line 437
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    .line 439
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getRegistryEntriesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 660
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 661
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 661
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->getRegistryEntriesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 315
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllRegistryEntries(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 572
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->ensureRegistryEntriesIsMutable()V

    .line 573
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->onChanged()V

    .line 579
    :goto_0
    return-object p0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRegistryEntries(ILcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->ensureRegistryEntriesIsMutable()V

    .line 559
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 560
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->onChanged()V

    .line 564
    :goto_0
    return-object p0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRegistryEntries(ILcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 527
    if-nez p2, :cond_0

    .line 528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->ensureRegistryEntriesIsMutable()V

    .line 531
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 532
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->onChanged()V

    .line 536
    :goto_0
    return-object p0

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRegistryEntries(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->ensureRegistryEntriesIsMutable()V

    .line 545
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->onChanged()V

    .line 550
    :goto_0
    return-object p0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRegistryEntries(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 510
    if-nez p1, :cond_0

    .line 511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->ensureRegistryEntriesIsMutable()V

    .line 514
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->onChanged()V

    .line 519
    :goto_0
    return-object p0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRegistryEntriesBuilder()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->getRegistryEntriesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    return-object v0
.end method

.method public addRegistryEntriesBuilder(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->getRegistryEntriesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-result-object v0

    .line 346
    .local v0, result:Lcom/google/googlex/glass/common/proto/GlasswareRegistry;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 349
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;
    .locals 4

    .prologue
    .line 353
    new-instance v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GlasswareRegistry$1;)V

    .line 354
    .local v1, result:Lcom/google/googlex/glass/common/proto/GlasswareRegistry;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    .line 355
    .local v0, from_bitField0_:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 356
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 357
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    .line 358
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->registryEntries_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->access$502(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;Ljava/util/List;)Ljava/util/List;

    .line 364
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->onBuilt()V

    .line 365
    return-object v1

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->registryEntries_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->access$502(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 322
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 323
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    .line 324
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    .line 328
    :goto_0
    return-object p0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearRegistryEntries()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 586
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    .line 587
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    .line 588
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->onChanged()V

    .line 592
    :goto_0
    return-object p0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 2

    .prologue
    .line 332
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

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
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getRegistryEntries(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1
    .parameter "index"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    .line 471
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    goto :goto_0
.end method

.method public getRegistryEntriesBuilder(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->getRegistryEntriesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    return-object v0
.end method

.method public getRegistryEntriesBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->getRegistryEntriesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRegistryEntriesCount()I
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 461
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getRegistryEntriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRegistryEntriesOrBuilder(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntryOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntryOrBuilder;

    .line 621
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntryOrBuilder;

    goto :goto_0
.end method

.method public getRegistryEntriesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 632
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 296
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    const-class v2, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 378
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 406
    :goto_0
    return-object p0

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 380
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->registryEntries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->access$500(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->registryEntries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->access$500(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    .line 383
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    .line 388
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->onChanged()V

    .line 405
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 385
    :cond_2
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->ensureRegistryEntriesIsMutable()V

    .line 386
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->registryEntries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->access$500(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 391
    :cond_3
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->registryEntries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->access$500(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 393
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 394
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 395
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->registryEntries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->access$500(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    .line 396
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->bitField0_:I

    .line 397
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->access$600()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->getRegistryEntriesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->registryEntries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->access$500(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    const/4 v2, 0x0

    .line 419
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/GlasswareRegistry;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    .line 428
    :cond_0
    return-object p0

    .line 420
    :catch_0
    move-exception v1

    .line 421
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    move-object v2, v0

    .line 422
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 425
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 369
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    if-eqz v0, :cond_0

    .line 370
    check-cast p1, Lcom/google/googlex/glass/common/proto/GlasswareRegistry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object p0

    .line 373
    .end local p0
    :goto_0
    return-object p0

    .line 372
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
    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

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
    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

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
    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

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
    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeRegistryEntries(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->ensureRegistryEntriesIsMutable()V

    .line 600
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 601
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->onChanged()V

    .line 605
    :goto_0
    return-object p0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setRegistryEntries(ILcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->ensureRegistryEntriesIsMutable()V

    .line 498
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->onChanged()V

    .line 503
    :goto_0
    return-object p0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setRegistryEntries(ILcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 480
    if-nez p2, :cond_0

    .line 481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->ensureRegistryEntriesIsMutable()V

    .line 484
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntries_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->onChanged()V

    .line 489
    :goto_0
    return-object p0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistry$Builder;->registryEntriesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
